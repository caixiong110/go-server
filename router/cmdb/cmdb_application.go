package cmdb

import (
	v1 "github.com/flipped-aurora/gin-vue-admin/server/api/v1"
	"github.com/flipped-aurora/gin-vue-admin/server/middleware"
	"github.com/gin-gonic/gin"
)

type ApplicationRouter struct {
}

func (s *ApplicationRouter) InitApplicationRouter(Router *gin.RouterGroup) {
	applicationRouter := Router.Group("application").Use(middleware.OperationRecord())
	var applicationApi = v1.ApiGroupApp.CmdbApiGroup.ApplicationApi
	{
		//userRouter.POST("register", baseApi.Register)                     // 用户注册账号
		//userRouter.POST("changePassword", baseApi.ChangePassword)         // 用户修改密码
		//userRouter.POST("getUserList", baseApi.GetUserList)               // 分页获取用户列表
		//userRouter.POST("setUserAuthority", baseApi.SetUserAuthority)     // 设置用户权限
		//userRouter.DELETE("deleteUser", baseApi.DeleteUser)               // 删除用户
		//userRouter.PUT("setUserInfo", baseApi.SetUserInfo)                // 设置用户信息
		//userRouter.POST("setUserAuthorities", baseApi.SetUserAuthorities) // 设置用户权限组
		applicationRouter.GET("getApplication/:id", applicationApi.GetApplicationById) // 获取自身信息
	}
}
