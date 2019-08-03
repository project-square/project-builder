variable "name" {
    type = "string"
    default = ""
    description = "base name of a all the objects"
}

variable "region" {
    type = "string"
    description = "region"
}

variable "zone" {
    type = "string"
}

variable "vms_count" {
    type = "string"
    description = "number of vms"
}

variable "vm_type" {
    type = "string"
    default = "f1-micro"
}

variable "vm_disk_size" {
    type        = "string"
    description = "compute engine disk size"
    default     = "30"
}

variable "tags" {
    type = "list"
    description = "networking tags"
}

variable "labels" {
    type = "map"
}

variable "metadata" {
    type = "map"
    description = "metadata of vm"
    default = {}
}