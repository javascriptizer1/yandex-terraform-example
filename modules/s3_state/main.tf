provider "yandex" {
  zone = var.default_zone
}

resource "yandex_storage_bucket" "terraform_state" {
  access_key = var.access_key
  secret_key = var.secret_key
  bucket     = var.bucket_name
  acl        = "private"
  tags       = var.tags

  versioning {
    enabled = true
  }

  lifecycle {
    prevent_destroy = true
  }

  server_side_encryption_configuration {
    rule {
      apply_server_side_encryption_by_default {
        kms_master_key_id = yandex_kms_symmetric_key.key-a.id
        sse_algorithm     = "aws:kms"
      }
    }
  }
}

resource "yandex_kms_symmetric_key" "key-a" {
  name              = "kms-state"
  description       = "Key for encrypt state bucket"
  default_algorithm = "AES_128"

  labels = {
    environment = var.env
  }
}
