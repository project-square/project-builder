module "kamailio-europe-west4-a" {
    source      = "../module-common/virtual-machines"

    name        = "instance-kamailio"
    vms_count   = "2"
    region      = "europe-west4"
    zone        = "europe-west4-a"
    vm_type     = "n1-standard-1"

    tags    = "${local.tags_kamailio}"
    labels  = "${local.labels_kamailio}"
}

resource "google_compute_firewall" "fw-kamailio" {
  name    = "fw-kamailio-allow-sip"
  network = "${local.tags_kamailio_network}"

  allow {
    protocol = "tcp"
    ports    = ["5060"]
  }

  allow {
    protocol = "udp"
    ports    = ["5060"]

  }

  target_tags   = ["${local.tags_kamailio_target_network}"]
  source_ranges = ["0.0.0.0/0"]
}

locals {
    tags_kamailio = [
        "kamailio",
        "${local.tags_kamailio_target_network}",
    ]

    tags_kamailio_network = "default"

    tags_kamailio_target_network = "kamailio"

    labels_kamailio = {
        service = "kamailio"
    }
}