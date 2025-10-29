variable "aws_region"     { type = string  default = "ap-south-1" }
variable "instance_type"  { type = string  default = "t3.micro" }
variable "key_name"       { type = string  default = "exemplifi-wp" }
variable "my_ip_cidr"     { type = string  description = "Your IP in CIDR, e.g. 203.0.113.45/32" }
variable "use_eip"        { type = bool    default = true } # optional: allocate Elastic IP
