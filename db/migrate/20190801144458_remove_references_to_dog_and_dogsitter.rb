class RemoveReferencesToDogAndDogsitter < ActiveRecord::Migration[5.2]
  def change
  	remove_reference :cities, :dog, foreign_key: true
  	remove_reference :cities, :dogsitter, foreign_key: true
  end
end
