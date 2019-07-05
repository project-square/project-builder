module "asterisk-europe-west4-a" {
    source      = "../module-common/virtual-machines"

    name        = "instance-asterisk"
    vms_count   = "2"
    region      = "europe-west4"
    zone        = "europe-west4-a"
    vm_type     = "n1-standard-1"

    tags    = "${local.tags_asterisk}"
    labels  = "${local.labels_asterisk}"
}

locals {
    tags_asterisk = [
        "asterisk",
    ]

    labels_asterisk = {
        service = "asterisk"
    }
}