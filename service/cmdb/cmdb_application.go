package cmdb

import (
	"errors"
	"github.com/flipped-aurora/gin-vue-admin/server/global"
	"github.com/flipped-aurora/gin-vue-admin/server/model/cmdb"
	"github.com/flipped-aurora/gin-vue-admin/server/model/cmdb/request"
	uuid "github.com/satori/go.uuid"
	"gorm.io/gorm"
)

type ApplicationService struct {
}

func (applicationService *ApplicationService) GetApplication(id string) (err error, application cmdb.Application) {

	err = global.GVA_DB.Where("id = ?", id).First(&application).Error
	return err, application
}

func (applicationService *ApplicationService) AddApplication(app cmdb.Application) (err error, application cmdb.Application) {
	//判断用户是否已存在
	if !errors.Is(global.GVA_DB.Where("name = ?", app.Name).First(&app).Error, gorm.ErrRecordNotFound) {
		return errors.New("application已注册"), app
	}
	app.Id = uuid.NewV4()
	err = global.GVA_DB.Create(&app).Error
	return err, app
}

func (applicationService *ApplicationService) UpdateApplication(app cmdb.Application) (err error, application cmdb.Application) {
	err = global.GVA_DB.Updates(&app).Error
	return err, app
}

func (applicationService *ApplicationService) DeleteApplication(id string) (err error) {
	var app cmdb.Application
	err = global.GVA_DB.Where("id=?", id).Delete(&app).Error
	return err
}

func (application *ApplicationService) GetApplicationList(info request.ApplicationParas) (err error, list interface{}, total int64) {
	limit := info.PageSize
	offset := info.PageSize * (info.Page - 1)
	order := info.OrderKey
	desc := info.Desc

	var applications []cmdb.Application
	db := global.GVA_DB.Model(&cmdb.Application{})

	if info.Name != "" {
		db = db.Where("name LIKE ?", "%"+info.Name+"%")
	}
	err = db.Count(&total).Error

	if err != nil {
		return err, applications, total
	} else {
		db = db.Limit(limit).Offset(offset)
		if order != "" {
			var OrderStr string
			if desc {
				OrderStr = order + " desc"
			} else {
				OrderStr = order
			}
			err = db.Order(OrderStr).Find(&applications).Error
		} else {
			err = db.Order("name").Find(&applications).Error
		}
	}
	return err, applications, total
}
