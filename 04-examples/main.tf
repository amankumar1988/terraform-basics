#Declaring the module with the name ec2
module "ec2" {
   source =        "./ec2"
   sg     =         module.sg.sg_id
}


#Declaring the module with the name ecsg2
module "sg" {
   source =         "./sg"
}