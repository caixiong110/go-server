package cmdb

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/cmdb"
	"github.com/flipped-aurora/gin-vue-admin/server/model/cmdb/request"
	commonReq "github.com/flipped-aurora/gin-vue-admin/server/model/common/request"
	"github.com/flipped-aurora/gin-vue-admin/server/model/common/response"
	"github.com/gin-gonic/gin"
	"go.uber.org/zap"
	"log"
)

type ApplicationApi struct {
}

// @Tags SysApi
// @Summary 根据id获取api
// @Security ApiKeyAuth
// @accept application/json
// @Produce application/json
// @Param data body request.GetById true "根据id获取api"
// @Success 200 {string} string "{"success":true,"data":{},"msg":"获取成功"}"
// @Router /api/getApiById [post]
func (a *ApplicationApi) GetApplicationById(c *gin.Context) {
	log.Println("获取application信息")
	var reqId commonReq.GetByIdStr
	_ = c.ShouldBindJSON(&reqId)
	log.Printf("application id: %s", reqId.ID)
	_, app := applicationService.GetApplication(reqId.ID)
	response.OkWithDetailed(gin.H{"app": app}, "更新成功", c)

}

func (a *ApplicationApi) GetApplicationList(c *gin.Context) {
	log.Println("获取application list信息")
	var search request.ApplicationParas
	_ = c.ShouldBindJSON(&search)
	err, apps, total := applicationService.GetApplicationList(search)
	if err != nil {
		response.FailWithMessage("获取applications失败", c)
	} else {
		response.OkWithDetailed(gin.H{"list": apps, "total": total}, "更新成功", c)
	}

}

func (a *ApplicationApi) AddApplication(c *gin.Context) {
	log.Println("创建application信息")
	var application cmdb.Application
	_ = c.ShouldBindJSON(&application)

	_, app := applicationService.AddApplication(application)
	response.OkWithDetailed(gin.H{"app": app}, "创建成功", c)

}

func (a *ApplicationApi) UpdateApplication(c *gin.Context) {
	log.Println("更新application信息")
	var application cmdb.Application
	_ = c.ShouldBindJSON(&application)

	if err, app := applicationService.UpdateApplication(application); err != nil {
		global.GVA_LOG.Error("更新失败!", zap.Any("err", err))
		response.FailWithMessage("更新失败", c)
	} else {
		response.OkWithDetailed(gin.H{"app": app}, "更新成功", c)
	}

}

func (a *ApplicationApi) DeleteApplication(c *gin.Context) {
	log.Println("删除application信息")
	var reqId commonReq.GetByIdStr
	_ = c.ShouldBindJSON(&reqId)

	if err := applicationService.DeleteApplication(reqId.ID); err != nil {
		global.GVA_LOG.Error("删除失败!", zap.Any("err", err))
		response.FailWithMessage("删除失败", c)
	} else {
		response.OkWithMessage("删除成功", c)
	}
}
