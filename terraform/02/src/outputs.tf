output "ip_address" {
value = { netology-develop-platform-web = yandex_compute_instance.platform.network_interface[0].nat_ip_address, netology-develop-db = yandex_compute_instance.db.network_interface[0].nat_ip_address }
description = "vm external ip"
}