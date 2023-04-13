variable "sample" {
    default = "Welcome to Terraform Learning"
}

output "sample_op" {
    value = var.sample
}