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

