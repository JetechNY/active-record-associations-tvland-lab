class Show < ActiveRecord::Base
    has_many :characters
    has_many :actors, through: :characters
    belongs_to :network


def actors_list 
    self.actors.map {|name| name.full_name}
end
# A show has many characters and has many actors through characters.
end