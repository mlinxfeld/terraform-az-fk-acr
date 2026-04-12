// examples/01_basic_acr/random.tf

resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}
