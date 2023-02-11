output "sample" {

  value = "hello world"

}

variable "demo" {
  
  default = "devops training"

}

output "printing-demo" {
  
 value = "value is ${var.demo}"

}

output "printing-demo2" {
  
 value = var.demo   // when only variable is asked you can set without brackets

}

#this is how to declare a list variable

variable "example-list" {

 default = [
    "aws" ,
    "devops" ,
    100 ,
    true
 ]
  
}

output "printing-list-vars" {

    value = "welcome to ${var.example-list[0]} ${var.example-list[1]} training, course duration is ${var.example-list[2]} hours and its ${var.example-list[3]}"
}

#this is to declare map variables

variable "example-map" {

 default = {

    duration = 105,
    trainer = "verma"
    cloud = "aws"

 }
  
}

output "printing-map-vars" {

    value = "welcome to ${var.example-map["cloud"]} training, course duration is ${var.example-map["duration"]} hours and its trainer is ${var.example-map["trainer"]}"
}
