output "webserver_ip" {
  description = "The IP address of the webserver"
  value       = google_compute_instance.webserver.network_interface[0].access_config[0].nat_ip
}