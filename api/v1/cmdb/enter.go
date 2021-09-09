package cmdb

import "github.com/flipped-aurora/gin-vue-admin/server/service"

type ApiGroup struct {
	ApplicationApi
}

var applicationService = service.ServiceGroupApp.CmdbServiceGroup.ApplicationService
