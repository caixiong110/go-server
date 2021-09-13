package cmdb

import (
	v1 "github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type EmployeeRouter struct {
}

func (e EmployeeRouter) InitEmployeeRouter(Router *gin.RouterGroup) {
	employeeRouter := Router.Group("employee").Use(middleware.OperationRecord())
	var employeeApi = v1.ApiGroupApp.CmdbApiGroup.EmployeeApi
	{
		employeeRouter.GET("getEmployee/:id", employeeApi.GetEmployeeById)
	}

}
