package main

import (
	"fmt"
	"github.com/flipped-aurora/gin-vue-admin/server/utils"
)

func main() {
	var client = utils.CMDBClient{}

	data := make(map[string]interface{})

	fmt.Println(data)
	//var data string
	client.CMDBRequest("POST", "cmdb/object/TEACHER/instance/_search", data)
}
