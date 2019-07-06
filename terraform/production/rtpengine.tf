module "rtpengine-europe-west4-a" {
    source      = "../module-common/virtual-machines"

    name        = "instance-rtpengine"
    vms_count   = "2"
    region      = "europe-west4"
    zone        = "europe-west4-a"
    vm_type     = "n1-standard-1"

    tags    = "${local.tags_rtpengine}"
    labels  = "${local.labels_rtpengine}"
}

resource "google_compute_firewall" "fw-rtpengine" {
  name    = "fw-rtpengine-allow-rtp"
  network = "${local.tags_rtpengine_network}"

  allow {
    protocol = "tcp"
    ports    = ["2223", "2224"]
  }

  allow {
    protocol = "udp"
    ports    = ["2223", "2224"]

  }

  target_tags   = ["${local.tags_rtpengine_target_network}"]
  source_ranges = ["0.0.0.0/0"]
}

locals {
    tags_rtpengine = [
        "rtpengine",
        "${local.tags_rtpengine_target_network}",
    ]

    tags_rtpengine_network = "default"

    tags_rtpengine_target_network = "rtpengine"

    labels_rtpengine = {
        service = "rtpengine"
    }
}