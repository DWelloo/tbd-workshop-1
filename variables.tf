variable "project_name" {
  type        = string
  description = "Project name"
}

variable "region" {
  type        = string
  default     = "europe-west1"
  description = "GCP region"
}

variable "enable_composer" {
  description = "Whether to create Cloud Composer environment"
  type        = bool
  default     = false
}

## Vertex AI Workbench has been replaced with Jupyter on Dataproc
#variable "ai_notebook_instance_owner" {
#  type        = string
#  description = "Vertex AI workbench owner"
#}
