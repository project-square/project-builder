resource "google_compute_instance" "vm" {
    description     = "created with project-builder"

    count           = "${var.vms_count}"
    name            = "${var.name}-${var.zone}-${count.index}"
    machine_type    = "${var.vm_type}"
    tags            = "${var.tags}"
    labels          = "${var.labels}"
    zone            = "${var.zone}"

    boot_disk {
        initialize_params {
            image   = "debian-cloud/debian-9"
            size    = "30"
        }
    }

    network_interface {
        network = "default"

        # access_config = {
        #     // Ephameral ip
        # }
    }

}
