resource "cloudflare_account_token" "account_tokens" {
  for_each = var.account_tokens

  account_id = each.value.account_id
  name       = each.value.name
  policies   = each.value.policies
  condition  = each.value.condition
  expires_on = each.value.expires_on
  not_before = each.value.not_before
  status     = each.value.status
}

