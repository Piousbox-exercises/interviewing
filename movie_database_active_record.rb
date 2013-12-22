
class Actor < ActiveRecord::Base
  has_and_belongs_to_many :titles

end

class Director < ActiveRecord::Base
  has_many :titles
end

class Title < ActiveRecord::Base
  has_and_belongs_to_many :actors
  belongs_to :director

end
