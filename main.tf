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

module "deploy-ng" {
  source = "./modules/deploy-ng"
  
}

module "deploy-ng1"  {
  source = "./modules/deploy-ng"
  name = "my-app"
  image = "razzkumar/static:latest"
  replicas = 1
  port = 3000
  
}
