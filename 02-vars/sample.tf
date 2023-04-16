variable "sample" {
    default = "Welcome to Terraform Learning"
}

output "sample_op" {
    value = var.sample
}

output "sample_outpiut" {
    value = "Value of the sample variable is ${var.sample}"
}

# A variable cann be accessed without ${} as well , if its not accompanied in any sentence. If you just want to use it, you can directly refer it as `var.VariableName`

variable "integer" {
    default = 1000
}

output "number"{
    value = var.integer
}

# List variable 

variable "sample_list"{
    default = [
        "Terraform",
        "Training",
        "Pulumi",
        "Cloud Formation",
        120,
        true,
        "Aman"
    ]
}
#From the above list block, data in that block can be of any type
output "sample_list_op" {
    value =  "Welcome to ${var.sample_list[0]} Training and duration of the training is ${var.sample_list[4]} housrs"
}

# Map variable

variable "sample_map"{
    default = {
       Mode = "Online",
       Training = "Devops",
       Timing = "0730AM_IST"
    }
}

output "sample_map_op" {
    value   = "Welcome to ${var.sample_map["Mode"]} - ${var.sample_map["Training"]} Training and the batch timings are ${var.sample_map["Timing"]}"
}

#Declaring an empty variable
variable "city" {}

output "city_name_op"{
    value = var.city
}

output "city_name_op_1"{
    value = "Name of the city is ${var.city}"
}