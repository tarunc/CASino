# This migration comes from casino (originally 20130323111208)
class AddLongTermToTicketGrantingTickets < ActiveRecord::Migration
  def change
    add_column :ticket_granting_tickets, :long_term, :boolean, null: false, default: false
  end
end
