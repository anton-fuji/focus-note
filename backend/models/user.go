package models

import "time"

type Users struct {
	Id         string    `gorm:"primaryKey;type:char(36)" json:"id"`
	Name       string    `json:"name"`
	Email      string    `gorm:"uniqueIndex"`
	Password   string    `json:"password"`
	Created_at time.Time `json:"created_at"`
}

func (b *Users) TableName() string {
	return "user"
}
