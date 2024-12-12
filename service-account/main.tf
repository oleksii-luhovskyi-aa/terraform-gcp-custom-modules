resource "google_service_account" "service_account" {
  account_id = var.sa_id
  display_name = var.sa_display_name
}

resource "google_project_iam_member" "pubsub_service_account_role" {
  project = var.project_id
  role    = "roles/pubsub.publisher"
  member  = "serviceAccount:${google_service_account.service_account.email}"
}

resource "google_project_iam_member" "service_account_user_role" {
  project = var.project_id
  role    = "roles/iam.serviceAccountUser"
  member  = "serviceAccount:${google_service_account.service_account.email}"
}