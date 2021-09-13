package cmdb

import "github.com/gin-gonic/gin"

type EmployeeApi struct {
}

func (e EmployeeApi) GetEmployeeById(c *gin.Context) {
	c.String(200, "employee")
}
