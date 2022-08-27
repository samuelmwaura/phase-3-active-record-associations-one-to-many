class CreateReviews < ActiveRecord::Migration[6.1]
  def change
    create_table(:reviews) do |t|
      t.integer(:score)
      t.string(:comment)
      t.integer(:game_id)  #the naming is very important here. This is the foreign key that provides the association.The oreign key's name must match the name of the table where the primary key is located
      t.timestamps()
    end
  end
end
