class AddReferencesToDogAndDogsitter < ActiveRecord::Migration[5.2]
  def change
  	add_reference :cities, :dog, foreign_key: true
  	add_reference :cities, :dogsitter, foreign_key: true
  end
end