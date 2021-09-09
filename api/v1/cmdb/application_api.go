package cmdb

import (
	"github.com/gin-gonic/gin"
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
func (s *ApplicationApi) GetApplicationById(c *gin.Context) {
	log.Println("获取application信息")
	id := c.Param("id")
	log.Printf("application id: %s", id)
	_, app := applicationService.GetApplication(id)
	c.JSON(200, app)

}
