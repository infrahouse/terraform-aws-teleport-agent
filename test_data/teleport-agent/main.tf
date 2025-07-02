resource "random_string" "suffix" {
  length  = 6
  special = false
}
module "test" {
  source                 = "./../../"
  trusted_account_id     = "303467602807"
}
