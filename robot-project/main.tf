module "frontend" {

source = "./ec2"
component = "frontend"
APP_VERSION = "0.0.4"

}

module "mongodb" {

source = "./ec2"
component = "mongodb"
APP_VERSION = "null"

}

module "catalogue" {

source = "./ec2"
component = "catalogue"
APP_VERSION = "0.0.3"

}

module "redis" {

source = "./ec2"
component = "redis"
APP_VERSION = "null"

}

module "user" {

source = "./ec2"
component = "user"
APP_VERSION = "0.0.1"

}

module "cart" {

source = "./ec2"
component = "cart"
APP_VERSION = "0.0.7"

}

module "mysql" {

source = "./ec2"
component = "mysql"
APP_VERSION = "null"

}

module "shipping" {

source = "./ec2"
component = "shipping"
APP_VERSION = "0.0.6"

}

module "rabbitmq" {

source = "./ec2"
component = "rabbitmq"
APP_VERSION = "null"

}

module "payment" {

source = "./ec2"
component = "payment"
APP_VERSION = "0.0.5"

}