terraform {
  required_providers {
    docker = {
      source  = "kreuzwerker/docker"
      version = "~> 2.13.0"
    }
  }
}
provider "docker" {}

resource "docker_image" "httpd" {
  name         = "httpd:latest"
  keep_locally = false
}

resource "docker_container" "httpd" {
  image = docker_image.httpd.latest
  name  = "tutorial"
  ports {
    internal = 80
    external = var.external_port
  }
}

output "url" {
  description = "Browser URL for container site"
  value       = join(":", ["http://localhost", tostring(var.external_port)])
}
