package cmdb

type Domain struct {
	Id          string `json:"id" gorm:"column:id;comment:id"`
	Name        string `json:"name" gorm:"column:name;comment:domain名称"`
	Description string `json:"description" gorm:"description;comment:详情"`

	//domain与application一对多关系映射，用Application中的DomainId与Domain的Id关联。references不指定的默认使用Id
	Applications []Application `gorm:"foreignKey:DomainId;references:Id"`

	//domain与employee多对多关系映射
	Employees []Employee `gorm:"many2many:cmdb_domain_employee"`
}

func (d Domain) TableName() string {
	return "cmdb_domain"
}
