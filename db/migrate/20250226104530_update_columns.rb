class UpdateColumns < ActiveRecord::Migration[7.1]
  def change
    change_table :restaurants do |t|
      t.change :phone_number, :string
    end
  end
end
