package utils

import (
	"bytes"
	"crypto/hmac"
	"crypto/md5"
	"crypto/sha1"
	"crypto/tls"
	"encoding/hex"
	"encoding/json"
	"fmt"
	"io/ioutil"
	"net/http"
	"net/url"
	"reflect"
	"time"
)

var (
	AccessKey string
	SecretKey string
	Host      string
)

type CMDBClient struct {
	//CMDBConfig *config.CMDBConfig
}

func init() {
	//global.GVA_VP = core.Viper()      // 初始化Viper
	//CMDBCfg :=global.GVA_CONFIG.CMDBConfig
	//Host = CMDBCfg.Host
	//SecretKey =CMDBCfg.SecrectKey
	//AccessKey = CMDBCfg.AccessKey
	Host = "https://qa-cmdb.cn-pgcloud.com/openapi"
	SecretKey = "56566f737a51476b6c626b68696353525845746748454c424b645151765a7978"
	AccessKey = "3de163ae8fec05dcdb32246b"
}

func (client *CMDBClient) CMDBRequest(method string, uri string, data interface{}) (err error) {
	//1.签名
	requestTime := time.Now().Unix()
	signStr := client.Signature(AccessKey, SecretKey, requestTime, method, uri, data)
	println(signStr)
	//2.拼接url
	url_params_array := url.Values{}
	url_params_array.Add("accesskey", AccessKey)
	url_params_array.Add("signature", signStr)
	url_params_array.Add("expires", fmt.Sprint(requestTime))

	var url_params string

	if method == "GET" || method == "DELETE" {
		v := reflect.ValueOf(data)
		if v.Kind() == reflect.Map {
			for _, key := range v.MapKeys() {
				value := v.MapIndex(key)
				url_params_array.Add(key.String(), value.String())
			}
		}
	}

	fmt.Println(url_params)
	url_params = url_params_array.Encode()

	url := fmt.Sprintf("%s/%s?%s", Host, uri, url_params)
	fmt.Println(url)

	body, _ := json.Marshal(data)
	fmt.Println(body)
	req, err := http.NewRequest(method, url, bytes.NewBuffer(body))
	if err != nil {
		fmt.Println(err.Error())
	}
	req.Header.Set("Content-Type", "application/json")

	timeout := 10 * time.Second
	transport := &http.Transport{
		TLSClientConfig: &tls.Config{InsecureSkipVerify: true},
	}

	httpClient := http.Client{
		Timeout:   timeout,
		Transport: transport,
	}

	response, err := httpClient.Do(req)
	if err != nil {
		fmt.Println(err.Error())
	}
	defer response.Body.Close()
	body, _ = ioutil.ReadAll(response.Body)
	fmt.Println(string(body))
	return
}

func (client *CMDBClient) Signature(accessKey string, secretKey string, requestTime int64, method string, uri string, data interface{}) (signStr string) {
	/*
		计算签名
		:param access_key: access_key
		:param secret_key: secret_key
		:param request_time: 请求发起时间戳
		:param method: 请求方法 POST / GET / PUT / DELETE
		:param uri: 请求URI
		:param data: 请求数据，GET和POST的数据都放在这里，组成字典，通过不同的请求方式进行组合
		:param content_type: content_type协议
		:return:
	*/
	var url_params = ""
	println(url_params)
	if method == "GET" || method == "DELETE" {
		v := reflect.ValueOf(data)
		if v.Kind() == reflect.Map {
			for _, key := range v.MapKeys() {
				value := v.MapIndex(key)
				url_params += fmt.Sprintf("%s%s", key, value)
			}
		}
	}
	var body_content string
	if method == "POST" || method == "PUT" {
		dataJson, err := json.Marshal(data)
		if err != nil {
			fmt.Print(err)
		}
		body_content = fmt.Sprintf("%x", md5.Sum(dataJson))
	}
	sign_str := fmt.Sprintf("%s\n%s\n%s\n%s\n%s\n%s\n%s", method, uri, url_params, "application/json", body_content, fmt.Sprint(requestTime), accessKey)
	sign := client.HmacSHA1(secretKey, sign_str)
	println(sign)
	return sign
}

func (client *CMDBClient) HmacSHA1(key string, data string) string {
	mac := hmac.New(sha1.New, []byte(key))
	mac.Write([]byte(data))
	return hex.EncodeToString(mac.Sum(nil))
}
