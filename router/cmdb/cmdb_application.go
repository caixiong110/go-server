package cmdb

import (
	v1 "github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type ApplicationRouter struct {
}

func (s *ApplicationRouter) InitApplicationRouter(Router *gin.RouterGroup) {
	applicationRouter := Router.Group("application").Use(middleware.OperationRecord())
	var applicationApi = v1.ApiGroupApp.CmdbApiGroup.ApplicationApi
	{
		applicationRouter.GET("get/:id", applicationApi.GetApplicationById)      //
		applicationRouter.POST("list", applicationApi.GetApplicationList)        //
		applicationRouter.POST("create", applicationApi.AddApplication)          //
		applicationRouter.PUT("update", applicationApi.UpdateApplication)        //
		applicationRouter.DELETE("delete/:id", applicationApi.DeleteApplication) //
	}
}
