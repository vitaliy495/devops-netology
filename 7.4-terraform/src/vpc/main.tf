resource "yandex_vpc_network" "test_vpc" {
  name = var.vpc_name
  description = "vpc description"

  labels = var.labels
}
resource "yandex_vpc_subnet" "test_vpc_subnet" {
  for_each = var.subnets

  name           = each.key
  zone           = each.value.zone
  network_id     = yandex_vpc_network.test_vpc.id
  v4_cidr_blocks = [each.value.cidr]
  description    = "vpc description"

  labels = var.labels
}
