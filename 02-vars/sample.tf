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

variable "sample" {
    
}