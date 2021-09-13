package cmdb

import "github.com/gin-gonic/gin"

type DomainApi struct {
}

func (d DomainApi) GetDomainById(c *gin.Context) {
	var id = c.Param("id")
	_, domain := domainService.GetDomainById(id)
	c.JSON(200, domain)
}

func (d DomainApi) GetDomainMany2(c *gin.Context) {
	var id = c.Param("id")
	_, domain := domainService.GetDomainMany2(id)
	c.JSON(200, domain)
}
