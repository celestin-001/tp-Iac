output "container_name" {
  description = "Nom du conteneur déployé"
  value       = var.network_name
}

output "network_name" {
  description = "Nom du réseau Docker"
  value       = docker_network.app_network.name
}

output "website_url" {
  description = "URL du serveur Web local"
  value       = "http://localhost:${var.external_port}"
}

