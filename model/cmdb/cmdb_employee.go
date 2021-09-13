package cmdb

type Employee struct {
	Id       string `json:"id" gorm:"column:id"`
	FullName string `json:"full_name" gorm:"column:full_name;comment:全名"`
	Mobile   string `json:"mobile" gorm:"column:mobile;comment:手机"`
	Title    string `json:"title" gorm:"column:title;comment:级别"`
	Company  string `json:"company" gorm:"column:company;commnent:公司"`

	//domain与employee多对多关系映射
	Domains []Domain `gorm:"many2many:cmdb_domain_employee"`
}

func (e Employee) TableName() string {
	return "cmdb_employee"
}
