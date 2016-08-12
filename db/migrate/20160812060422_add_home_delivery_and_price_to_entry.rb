class AddHomeDeliveryAndPriceToEntry < ActiveRecord::Migration
  def change
      add_column :entries, :paid_home_delivery, :boolean, default:false 
      add_column :entries, :terms_and_conditions, :text
  end
end
