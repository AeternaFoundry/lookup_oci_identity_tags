output "identity_tags_lookup_id" {
  description = "Map of id values across all identity_tags_lookup, keyed the same as var.identity_tags_lookup except keys with no id are omitted"
  value       = { for k, v in data.oci_identity_tags.identity_tags_lookup : k => v.id if v.id != null && length(v.id) > 0 }
}
output "identity_tags_lookup_filter" {
  description = "Map of filter values across all identity_tags_lookup, keyed the same as var.identity_tags_lookup except keys with no filter are omitted"
  value       = { for k, v in data.oci_identity_tags.identity_tags_lookup : k => v.filter if v.filter != null && length(v.filter) > 0 }
}
output "identity_tags_lookup_state" {
  description = "Map of state values across all identity_tags_lookup, keyed the same as var.identity_tags_lookup except keys with no state are omitted"
  value       = { for k, v in data.oci_identity_tags.identity_tags_lookup : k => v.state if v.state != null && length(v.state) > 0 }
}
output "identity_tags_lookup_tag_namespace_id" {
  description = "Map of tag_namespace_id values across all identity_tags_lookup, keyed the same as var.identity_tags_lookup except keys with no tag_namespace_id are omitted"
  value       = { for k, v in data.oci_identity_tags.identity_tags_lookup : k => v.tag_namespace_id if v.tag_namespace_id != null && length(v.tag_namespace_id) > 0 }
}
output "identity_tags_lookup_tags" {
  description = "Map of tags values across all identity_tags_lookup, keyed the same as var.identity_tags_lookup except keys with no tags are omitted"
  value       = { for k, v in data.oci_identity_tags.identity_tags_lookup : k => v.tags if v.tags != null && length(v.tags) > 0 }
}

