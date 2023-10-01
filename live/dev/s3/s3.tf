module "state_store" { // создание бакета для хранения стейтов всех модулей
  source      = "../../../modules/s3_state"
  bucket_name = "terraform-dev"
  tags = {
    environment = var.env,
    name        = "testik"
  }
}

// создание остальных бакетов...

# module "backups" {
#   source      = "github.com/terraform-yc-modules/terraform-yc-s3//.?ref=1.0.0"
#   bucket_name = "images"
# }
