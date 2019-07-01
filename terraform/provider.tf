// configure the google cloud provider
provider "google" {
    credentials = "/Users/sungtaekim/pchero-k8s-test-01-239423-42130165caa0.json"
    project = "k8s-test-01-239423"
    region = "eu-west4"
}

# // terraform plugin for creating random ids
# resource "random_id" "instance_id" {
#     byte_length = 8
# }

# // a single google cloud engine instance
# resource "google_compute_instance" "default" {
#     name = "test-instance-vm-${random_id.instance_id.hex}"
#     machine_type = "f1-micro"
#     zone = "eu-west4"

#     boot_disk {
#         initialize_params {
#             image = "debian-cloud/debian-9"
#         }
#     }
# }

# // ma