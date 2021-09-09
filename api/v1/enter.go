package v1

import (
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1/autocode"
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1/cmdb"
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1/example"
	"github.com/flipped-aurora/gin-vue-admin/server/api/v1/system"
)

type ApiGroup struct {
	ExampleApiGroup  example.ApiGroup
	SystemApiGroup   system.ApiGroup
	AutoCodeApiGroup autocode.ApiGroup
	CmdbApiGroup     cmdb.ApiGroup
}

var ApiGroupApp = new(ApiGroup)
