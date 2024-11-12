# Pulls the image
resource "docker_image" "ng" {
  name = var.image
}

# Create a container
resource "docker_container" "ng" {
  image = docker_image.ng.image_id
  name  = var.container_name
  ports {
    internal = var.internal_port
    external = var.external_port

  }
}


