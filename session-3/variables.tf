variable "env" {
    type = string             // Data type
    description = "this variable is for environment"      // Description 
    default = "dev"           // Default Value
}

variable "ports" {
    type = list(number)
    description = "A list of port numbers"
    default = [ 22, 3306, 443, 80, 23 ]
}
