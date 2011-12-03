require_relative 'base'

# This adapter's a bit different from the others as it assumes we know
# the full URI for a contact and just want to grab its json serialization
# and convert it to an ostruct.
class GdsApi::Contactotron < GdsApi::Base
  def initialize
  end

  def contact_for_uri(uri)
    to_ostruct get_json(uri)
  end
end