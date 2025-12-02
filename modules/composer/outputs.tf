output "gcs_bucket" {
  description = "GCS bucket for storing Apache Airflow DAGs"
  #value       = module.composer.gcs_bucket
  value = null
  #value = try(module.composer[0].gcs_bucket, null)
}

output "data_service_account" {
  description = "Apache Airflow service account"
  value       = google_service_account.tbd-composer-sa.email
}

output "gke_cluster" {
  description = "Composer underlying GKE cluster"
  #value       = module.composer.gke_cluster
  # value = try(module.composer[0].gke_cluster, null)
  value = null
}
