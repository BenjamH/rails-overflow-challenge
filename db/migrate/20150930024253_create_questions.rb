class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
      t.string :title
      t.string :description
      t.integer :views, default: 0
      t.belongs_to :author

      t.timestamps null: false
    end
  end
end
