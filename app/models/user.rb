#
class User < ActiveRecord::Base
  include Authentication
  has_one :person
  has_many :examples
end
