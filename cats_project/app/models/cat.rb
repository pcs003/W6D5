class Cat < ApplicationRecord

    validates :birth_date, :color, :name, :sex, presence:true

    

end
