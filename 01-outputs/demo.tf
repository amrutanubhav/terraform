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

variable "example-list" {

 default = [
    "aws" ,
    "devops" ,
    100 ,
    true
 ]
  
}

output "printing ist vars" {

    value = "welcome to ${var.example-list[0] ${var.example-list[1] training, course duration is ${var.example-list[2] hours and its${var.example-list[3] }"
}