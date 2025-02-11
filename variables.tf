variable "student_number" {
  description = "The student number for resources"
  type        = number
}

variable "service_name" {
  type        = string
  description = "Name of the service"

  validation {
    condition     = length(var.service_name) <= 16 && !contains(split("", var.service_name), " ")
    error_message = "The variable must be 16 characters or fewer and must not contain spaces."
  }
}

variable "region" {
  type        = string
  description = "Google Cloud region where the app is deployed"
}

variable "docker_image_name" {
  type        = string
  description = "Docker image full name used to deploy the app"
}

variable "container_port" {
  type        = number
  description = "Port used by the application"
  default     = 80
}

variable "min_instance_count" {
  type = number
}

variable "max_instance_count" {
  type = number
}
