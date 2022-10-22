class CreateTechnician < ActiveRecord::Migration[6.1]
  def change
    create_table :technicians do |t|
      t.string :name
      t.string :title
      t.integer :company_experience
    end
  end
end
