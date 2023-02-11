variable "city"  {}
variable "state" {}
variable "rank" {}

output "city name" {

    value = "city name is ${var.city}"

}

output "state name" {

    value = "state name is ${var.state}"
    
}

output "rank" {

    value = "rank is ${var.rank}"
    
}