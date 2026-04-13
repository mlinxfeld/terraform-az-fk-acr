// examples/03_private_acr_with_aks_and_private_endpoint/random.tf

resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}
