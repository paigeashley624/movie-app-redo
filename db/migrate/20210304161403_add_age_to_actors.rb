class AddAgeToActors < ActiveRecord::Migration[6.1]
  def change
    change_column :actors, :age, :integer
  end
end
