module "docker-ng"  {
  source = "./modules/docker-ng"
  container_name = "my-ng"
}

module "docker_myapp"  {
  source = "./modules/docker-ng"
  container_name = "my-app"
  image = "razzkumar/static:latest"
  internal_port = 3000
  external_port = 3000
}

