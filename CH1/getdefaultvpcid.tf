data "aws_vpc" "default" {
  default = true
}

output "defaultvpcid" {
  value = data.aws_vpc.default.id
}