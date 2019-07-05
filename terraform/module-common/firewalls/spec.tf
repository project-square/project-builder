resource "google_compute_firewall" "fw" {
  name          = "${var.name}"
  description   = "${var.description}"

  network = "${var.network}"
  source_tags = [""]
  allow = [
      {
          protocol = ""
          ports = []
      }
  ]

  deny = [
      {
          protocol = ""
          ports = []
      }
  ]
}