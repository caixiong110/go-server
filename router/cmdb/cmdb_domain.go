package cmdb

import (
	v1 "github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type DomainRouter struct {
}

func (s *DomainRouter) InitDomainRouter(Router *gin.RouterGroup) {
	domainRouter := Router.Group("domain").Use(middleware.OperationRecord())
	{
		domainRouter.GET("getDomain/:id", v1.ApiGroupApp.CmdbApiGroup.GetDomainById)
		domainRouter.GET("getDomainMany2/:id", v1.ApiGroupApp.CmdbApiGroup.GetDomainMany2)
	}
}
