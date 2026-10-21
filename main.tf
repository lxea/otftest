terraform {
  required_version = ">= 1.14"
  required_providers {
    local = {
      source  = "hashicorp/local"
      version = "2.5.2"
    }
    random = {
      source  = "hashicorp/random"
      version = "3.8.1"
    }
    http = {
      source  = "hashicorp/http"
      version = "3.6.2"
    }
  }
}

# module "call" {
#   source = "./mod1"
#   port = 123
# }

# module "call2" {
#   source = "./mod2"
# }

# module "alb-ingress" {
#   source  = "cloudposse/alb-ingress/aws"
#   version = "v0.30.0"
# }

resource "local_file" "test_resource" {
  content  = "test"
  filename = "./output"
}


# output "child_raw_as_map" {
#   value = module.call.out
# }

resource "local_file" "test" {
  filename = "${path.module}/test.txt"
  content  = "Hello wold!"
}
