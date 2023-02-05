class Show < ActiveRecord::Base
  has_many :characters
  has_many :actors, through: :characters
  belongs_to :network

  def actors_list
    @arr= []
    all = self.actors
    all.each do |actor|
        @arr << "#{actor.first_name} #{actor.last_name}"
    end
    @arr
  end


end