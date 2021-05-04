output "id" {
  value       = local.id
  description = "Disambiguated ID restricted to `id_length_limit` characters in total"
}

output "id_full" {
  value       = local.id_full
  description = "Disambiguated ID not restricted in length"
}

output "namespace" {
  value       = local.namespace
  description = "Normalized namespace"
}

output "environment" {
  value       = local.environment
  description = "Normalized environment"
}

output "name" {
  value       = local.name
  description = "Normalized name"
}

output "delimiter" {
  value       = local.delimiter
  description = "Delimiter between `namespace`, `environment`, `stage`, `name` and `attributes`"
}

output "attributes" {
  value       = local.attributes
  description = "List of attributes"
}

output "tags" {
  value       = local.tags
  description = "Normalized Tag map"
}

output "additional_tag_map" {
  value       = local.additional_tag_map
  description = "The merged additional_tag_map"
}

output "label_order" {
  value       = local.label_order
  description = "The naming order actually used to create the ID"
}

output "regex_replace_chars" {
  value       = local.regex_replace_chars
  description = "The regex_replace_chars actually used to create the ID"
}

output "id_length_limit" {
  value       = local.id_length_limit
  description = "The id_length_limit actually used to create the ID, with `0` meaning unlimited"
}

output "tags_as_list_of_maps" {
  value       = local.tags_as_list_of_maps
  description = "Additional tags as a list of maps, which can be used in several AWS resources"
}

output "normalized_context" {
  value       = local.output_context
  description = "Normalized context of this module"
}

output "context" {
  value       = local.input
  description = <<-EOT
  Merged but otherwise unmodified input to this module, to be used as context input to other modules.
  Note: this version will have null values as defaults, not the values actually used as defaults.
EOT
}
