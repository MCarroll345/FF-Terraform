variable "name" {
  description = "The name to use for all resources created by this module"
  type        = string
  default     = "FF-clothes"
}

variable "smallname" {
  description = "The name to use for all resources created by this module"
  type        = string
  default     = "ffclothes"
}

variable "image" {
  description = "The Docker image to run"
  type        = string
  default     = "mcarroll321/ff-clothes"
}

variable "container_port" {
  description = "The port the Docker image listens on"
  type        = number
  default     = 8001
}

variable "replicas" {
  description = "How many replicas to run"
  type        = number
  default     = 2
}