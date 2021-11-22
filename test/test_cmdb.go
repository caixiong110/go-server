package main

import "github.com/flipped-aurora/gin-vue-admin/server/utils"

func main() {
	var client = utils.CMDBClient{}
	var data map[string]interface{}
	//var data string
	client.CMDBRequest("POST", "cmdb/object/TEACHER/instance/_search", data)
}
