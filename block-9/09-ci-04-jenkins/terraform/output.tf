output "master_ip" {
  value = yandex_compute_instance.vm-each[0].network_interface.0.nat_ip_address
}

output "agent_ip" {
  value = yandex_compute_instance.vm-each[1].network_interface.0.nat_ip_address
}
