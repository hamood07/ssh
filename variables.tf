variable "project" {
  description = "GCP project ID"
  type        = string
}

variable "region" {
  description = "GCP region"
  type        = string
}

variable "credentials_file" {
  description = "Path to GCP credentials JSON"
  type        = string
}
