class Role < ActiveRecord::Base
    has_many :auditions


    def actors
        self.auditions.pluck(:actor)
    end

    def locations
        self.auditions.pluck(:location)
    end
end