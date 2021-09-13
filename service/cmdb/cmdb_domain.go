package cmdb

import (
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/cmdb"
	"log"
)

type DomainService struct {
}

func (d DomainService) GetDomainById(id string) (err error, domain cmdb.Domain) {
	//1.单表查询
	//err = global.GVA_DB.Where("id = ?", id).First(&domain).Error

	//2.一对多联表查询
	err = global.GVA_DB.Where("id = ?", id).First(&domain).Error
	if err != nil {
		return err, domain
	}
	global.GVA_DB.Model(&domain).Association("Applications").Find(&domain.Applications)
	return err, domain
}

func (d DomainService) GetDomainMany2(id string) (err error, domain cmdb.Domain) {
	log.Println("many2many")
	global.GVA_DB.Where("id = ?", id).First(&domain)

	global.GVA_DB.Preload("Employees").Find(&domain)

	return err, domain
}
