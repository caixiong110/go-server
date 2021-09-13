package cmdb

import uuid "github.com/satori/go.uuid"

type Application struct {
	Id       uuid.UUID `json:"id" gorm:"column:id"`
	Name     string    `json:"name" gorm:"column:name;comment:名称"`
	Url      string    `json:"url" gorm:"column:url;comment:url地址"`
	DomainId string    `json:"domain_id" gorm:"column:domain_id;comment:关联domain id"`
}

func (app Application) TableName() string {
	return "cmdb_application"
}
