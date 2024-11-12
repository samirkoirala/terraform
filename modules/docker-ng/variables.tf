variable "image" {

  type        = string
  description = "docker image"
  default     = "nginx:alpine"
}


variable "container_name" {

  type        = string
  description = "container name "

}

variable "internal_port" {

  
  type= number
  default=80
}
variable "external_port" {

  type  = number
  default = 8080

}
