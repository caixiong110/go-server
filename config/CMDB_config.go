package config

type CMDBConfig struct {
	Host       string `mapstructure:"host" json:"host" yaml:"host"`
	AccessKey  string `mapstructure:"access_key" json:"access_key" yaml:"access_key"`
	SecrectKey string `mapstructure:"secrect_key" json:"secrect_key" yaml:"secrect_key"`
}
