terraform {
  required_providers {
    time = {
      source = "hashicorp/time"
      version = "0.9.1"
    }
  }
}

#provider "time" {
  # Configuration options
#}

resource "null_resource" "previous" {}

resource "time_sleep" "wait_12_minutes" {
  depends_on = [null_resource.previous]

  create_duration = "12m"
}

# This resource will create (at least) 30 seconds after null_resource.previous
resource "null_resource" "next" {
  depends_on = [time_sleep.wait_12_minutes]
}
