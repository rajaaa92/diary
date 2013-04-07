class Day
  include Mongoid::Document
  include Mongoid::Timestamps
  include Mongoid::Taggable

  field :content

end
