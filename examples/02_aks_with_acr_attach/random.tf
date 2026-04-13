// examples/02_aks_with_acr_attach/random.tf

resource "random_string" "suffix" {
  length  = 6
  upper   = false
  special = false
}
