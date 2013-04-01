class Day
  include Mongoid::Document
  include Mongoid::Timestamps

  field :tags, type: Array, default: []
  field :content

end
