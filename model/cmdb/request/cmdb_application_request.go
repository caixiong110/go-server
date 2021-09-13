package request

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
)

type ApplicationParas struct {
	request.PageInfo
	Name     string
	OrderKey string `json:"orderKey"` // 排序
	Desc     bool   `json:"desc"`     // 排序方式:升序false(默认)|降序true
}
