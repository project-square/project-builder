variable "name" {
    type = "string"
    default = ""
    description = "base name of a all the objects"
}

variable "description" {
    type = "string"
    default = ""
    description = "base description of a all the objects"
}

variable "network" {
    type = "string"
    default = ""
    description = "network type"
}

variable "allow_protocol" {
    type = "string"
    default = "tcp"
    description = "allowed protocol type"
}

variable "target_tags" {
    type = "list"
    description = "target tags"
}


# variable "region" {
#     type = "string"
#     description = "region"
# }

# variable "zone" {
#     type = "string"
# }

# variable "vms_count" {
#     type = "string"
#     description = "number of vms"
# }

# variable "vm_type" {
#     type = "string"
#     default = "f1-micro"
# }

# variable "tags" {
#     type = "list"
#     description = "networking tags"
# }

# variable "labels" {
#     type = "map"
# }

# variable "metadata" {
#     type = "map"
#     description = "metadata of vm"
#     default = {}
# }