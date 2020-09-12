class CreateUsers < ActiveRecord::Migration[4.2]

  def change
    create_table :users do |t|
      t.column :first_name,        :string
      t.column :last_name,       :string
      t.timestamps     null: false
    end
  end

end