# This file should ensure the existence of records required to run the application in every environment (production,
# development, test). The code here should be idempotent so that it can be executed at any point in every environment.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Example:
#
#   ["Action", "Comedy", "Drama", "Horror"].each do |genre_name|
#     MovieGenre.find_or_create_by!(name: genre_name)
#   end

User.destroy_all

ActiveRecord::Base.connection.reset_pk_sequence!('users')

initial_users_data =[
  {
    "last_name": "Dela Cruz",
    "first_name": "Juan",
    "role_id": 1,
    "email": "juan@saprevamped.com",
    "password": "$ecretP@ss1",
    "password_confirmation": "$ecretP@ss1",
    "status": "Active"
  },
  {
    "last_name": "Delos Reyes",
    "first_name": "Maria",
    "role_id": 1,
    "email": "maria@saprevamped.com",
    "password": "$ecretP@ss2",
    "password_confirmation": "$ecretP@ss2",
    "status": "Active"
  },
  {
    "last_name": "Gomez",
    "first_name": "Carlos",
    "role_id": 2,
    "email": "carlos@saprevamped.com",
    "password": "$ecretP@ss3",
    "password_confirmation": "$ecretP@ss3",
    "status": "Active"
  },
  {
    "last_name": "Gomer",
    "first_name": "Lucia",
    "role_id": 2,
    "email": "lucia@saprevamped.com",
    "password": "$ecretP@ss4",
    "password_confirmation": "$ecretP@ss4",
    "status": "Active"
  },
  {
    "last_name": "Smith",
    "first_name": "John",
    "role_id": 3,
    "email": "john.smith@saprevamped.com",
    "password": "$ecretP@ss5",
    "password_confirmation": "$ecretP@ss5",
    "status": "Active"
  },
  {
    "last_name": "Smithson",
    "first_name": "Emma",
    "role_id": 3,
    "email": "emma.smithson@saprevamped.com",
    "password": "$ecretP@ss6",
    "password_confirmation": "$ecretP@ss6",
    "status": "Active"
  },
  {
    "last_name": "Johnson",
    "first_name": "Michael",
    "role_id": 4,
    "email": "michael.johnson@saprevamped.com",
    "password": "$ecretP@ss7",
    "password_confirmation": "$ecretP@ss7",
    "status": "Active"
  },
  {
    "last_name": "Johnston",
    "first_name": "Sophia",
    "role_id": 4,
    "email": "sophia.johnston@saprevamped.com",
    "password": "$ecretP@ss8",
    "password_confirmation": "$ecretP@ss8",
    "status": "Active"
  },
  {
    "last_name": "Martinez",
    "first_name": "David",
    "role_id": 5,
    "email": "david.martinez@saprevamped.com",
    "password": "$ecretP@ss9",
    "password_confirmation": "$ecretP@ss9",
    "status": "Active"
  },
  {
    "last_name": "Martinezson",
    "first_name": "Isabella",
    "role_id": 5,
    "email": "isabella@saprevamped.com",
    "password": "$ecretP@ss10",
    "password_confirmation": "$ecretP@ss10",
    "status": "Active"
  },
  {
    "last_name": "Lopez",
    "first_name": "Daniel",
    "role_id": 6,
    "email": "daniel.lopez@saprevamped.com",
    "password": "$ecretP@ss11",
    "password_confirmation": "$ecretP@ss11",
    "status": "Active"
  },
  {
    "last_name": "Lopes",
    "first_name": "Olivia",
    "role_id": 6,
    "email": "olivia.lopes@saprevamped.com",
    "password": "$ecretP@ss12",
    "password_confirmation": "$ecretP@ss12",
    "status": "Active"
  },
  {
    "last_name": "Wang",
    "first_name": "Kevin",
    "role_id": 9,
    "email": "kevin.wang@saprevamped.com",
    "password": "$ecretP@ss13",
    "password_confirmation": "$ecretP@ss13",
    "status": "Active"
  },
  {
    "last_name": "Wangson",
    "first_name": "Mia",
    "role_id": 9,
    "email": "mia.wangson@saprevamped.com",
    "password": "$ecretP@ss14",
    "password_confirmation": "$ecretP@ss14",
    "status": "Active"
  }
]

initial_users_data.each do |user|
  User.create!(user)
end