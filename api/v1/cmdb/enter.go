package cmdb

import "github.com/flipped-aurora/gin-vue-admin/server/service"

type ApiGroup struct {
	ApplicationApi
	DomainApi
	EmployeeApi
}

var applicationService = service.ServiceGroupApp.CmdbServiceGroup.ApplicationService
var domainService = service.ServiceGroupApp.CmdbServiceGroup.DomainService
