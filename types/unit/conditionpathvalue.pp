# @summary A path value for Condition*/Assert* settings.
#
# Supports:
# - absolute paths
# - systemd specifier-based paths (e.g. %h/...)
# - optional negation/trigger prefixes (! and |)
#
# @api private
#
# lint:ignore:140chars
#
type Systemd::Unit::ConditionPathValue = Variant[
  Systemd::Unit::OptionalPathValue,
  Pattern[/\A[!|]{1,2}\/[^\n\0]*\z/],
  Pattern[/\A[!|]{1,2}%[A-Za-z][^\n\0]*\z/],
]
