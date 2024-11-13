variable "name" {
  type        = string
  description = "The name of the deployment and container"
  default     = "ng"  # Example valid name
}

variable "image" {
  type        = string
  default =   "nginx:alpine"
  
}
variable "replicas" {
  type        = number
  default = 3
  
}
variable "port" {
  type        = number
  default = 80
  
}

variable "namespace" {
    type=string
    default = "default"
  
}