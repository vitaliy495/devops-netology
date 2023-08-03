module "vpc" {
  source  = "./vpc"

  subnets = {
    public-ru-central1-a  = { zone = "ru-central1-a", cidr = "10.0.1.0/24" },
  }

  labels = {
    project     = "netology_test_vpc"
    environment = "test"
  }
}
