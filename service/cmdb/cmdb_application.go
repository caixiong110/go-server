package cmdb

import (
	"github.com/flipped-aurora/gin-vue-admin/server/model/cmdb"
)

type ApplicationService struct {
}

func (applicationService *ApplicationService) GetApplication(id string) (err error, application cmdb.Application) {
	app := cmdb.Application{
		Name: "jenkins",
		Url:  "localhost:8080",
	}
	return err, app
}
