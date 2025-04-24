package routes

import (
	"backend/controllers"

	"github.com/labstack/echo/v4"
)

func SetupRoutes(e *echo.Echo) {
	api := e.Group("/user-api")
	api.GET("/user", controllers.GetUsers)
	api.POST("/user", controllers.CreateUser)
	api.GET("/user/:id", controllers.GetUserByID)
	api.PUT("/user/:id", controllers.UpdateUser)
	api.DELETE("/user/:id", controllers.DeleteUser)
}
