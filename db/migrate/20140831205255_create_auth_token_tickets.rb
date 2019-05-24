class CreateAuthTokenTickets < ActiveRecord::Migration[5.2]
  def change
    create_table :casino_auth_token_tickets do |t|
      t.string :ticket, :null => false

      t.timestamps
    end
    add_index :casino_auth_token_tickets, :ticket, :unique => true
  end
end
