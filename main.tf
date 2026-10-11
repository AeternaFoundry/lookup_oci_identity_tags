data "oci_identity_tags" "identity_tags_lookup" {
  for_each = var.identity_tags_lookup

  tag_namespace_id = each.value.tag_namespace_id
  state            = each.value.state

  dynamic "filter" {
    for_each = each.value.filter != null ? each.value.filter : []
    content {
      name   = filter.value.name
      regex  = filter.value.regex
      values = filter.value.values
    }
  }
}

