variable "city"  {}
variable "state" {}  
variable "rank" {}
variable "project" {}



# even if variables are declared in the tfvars file and empty variable should be declared before using the value


output "city-name" {

    value = "city name is ${var.city}"

}

output "state-name" {

    value = "state name is ${var.state}"
    
}

output "rank" {

    value = "rank is ${var.rank}"
    
}

output "project" {

    value = "rank is ${var.project}"
    
}


//command line args can be passedas eg: terraform apply -auto-approve -var project=amrut
//command line var > -var-file > *.auto.tfvars > terraform.tfvars > shell/env