package play

allow = {"Message" : "it is allowed because it has ec2 with custom vpc"} {
   input.configuration.root_module.resources[_].type == "aws_instance"
   input.configuration.root_module.resources[_].type == "aws_vpc"
   
}
deny = {"Message" : "it is denied because it don't have ec2 with custom vpc"} {
   not allow
}
