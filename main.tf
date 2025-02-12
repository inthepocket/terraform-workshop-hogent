resource "google_cloud_run_v2_service" "this" {
  name     = "${var.service_name}-${var.student_number}"
  location = var.region

  deletion_protection = false

  template {
    containers {
      image = var.docker_image_name
      ports {
        container_port = var.container_port
      }
    }
    scaling {
      min_instance_count = var.min_instance_count
      max_instance_count = var.max_instance_count
    }
  }
}

# Allow traffic from outside to the Cloud Run service
resource "google_cloud_run_v2_service_iam_binding" "run_invoker" {
  project  = google_cloud_run_v2_service.this.project
  location = google_cloud_run_v2_service.this.location
  name     = google_cloud_run_v2_service.this.name
  role     = "roles/run.invoker"
  members = [
    "allUsers",
  ]
}
