class AddRaffleFields < ActiveRecord::Migration[5.0]
  def change
    change_table :raffles do |t|
      t.string :group_name
      t.string :raffle_name
      t.text :fundraising_details
      t.date :draw_date
      t.text :raffle_items
    end
  end
end
