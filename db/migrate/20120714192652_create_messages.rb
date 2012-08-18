class CreateMessages < ActiveRecord::Migration
  def change
    create_table :messages do |t|
      t.string :nome
      t.string :email
      t.text :mensagem
      t.timestamps
    end
  end
end
