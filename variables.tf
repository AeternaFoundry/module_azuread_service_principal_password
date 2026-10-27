variable "service_principal_passwords" {
  description = <<EOT
Map of service_principal_passwords, attributes below
Required:
    - service_principal_id
Optional:
    - display_name
    - end_date
    - end_date_relative
    - rotate_when_changed
    - start_date
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - read (optional)
EOT

  type = map(object({
    service_principal_id = string
    display_name         = optional(string)
    end_date             = optional(string)
    end_date_relative    = optional(string)
    rotate_when_changed  = optional(map(string))
    start_date           = optional(string)
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      read   = optional(string)
    }))
  }))
  validation {
    condition = alltrue([
      for k, v in var.service_principal_passwords : (
        can(regex("^(/[^/]+/[^/]+)+$", v.service_principal_id))
      )
    ])
    error_message = "must be a valid Azure resource ID"
  }
  validation {
    condition = alltrue([
      for k, v in var.service_principal_passwords : (
        v.end_date_relative == null || (length(v.end_date_relative) > 0)
      )
    ])
    error_message = "must not be empty"
  }
  # Note: 2 additional provider-side validators are enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

