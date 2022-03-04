variable "region" {
  type = string
  description = "AWS_REGION"
  default = "eu-west-1"
}

variable "access_key" {
  type = string
  description = "ACCESS_KEY"
  sensitive = true
}

variable "secret_key" {
  type = string
  description = "SECRET_KEY"
  sensitive = true
}

variable "token" {
  type = string
  description = "TOKEN_KEY"
  sensitive = true
}
