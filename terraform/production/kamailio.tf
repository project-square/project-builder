module "kamailio-europe-west4-a" {
    source = "../../module-common"
    vms_count = "1"
    region = "europe-west4"
    zone = "europe-west4-a"
    vm_type = "n1-standard-1"

    tags = "${local.tags_kamailio}"
    labels = "${local.labels_kamailio}"

}

locals {
    tags_kamailio = [
        "kamailio",
    ]

    labels_kamailio = {
        service = "kamailio"
    }
}