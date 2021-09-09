package cmdb

type Application struct {
	Name string `json:"name" gorm:"column:name;comment:名称"`
	Url  string `json:"url" gorm:"culumn:url;comment:url地址"`
}
