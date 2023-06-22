locals {
  env = "develop"
  project = "platform"
  role1 = "web"
  role2 = "db"
}

locals {
  web_name = "netology-${ local.env }-${ local.project }-${ local.role1}"
  db_name  = "netology-${ local.env }-${ local.project }-${ local.role2}"
}
