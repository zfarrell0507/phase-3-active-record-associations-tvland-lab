class Show < ActiveRecord::Base
    belongs_to :network
    has_many :characters
    has_many :actors, through: :characters

    def actors_list
        self.characters.map do |character|
            "#{character.actor.first_name} #{character.actor.last_name}"
        end
    end
end