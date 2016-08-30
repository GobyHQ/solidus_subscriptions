class CreateSolidusSubscriptionsInstallmentDetails < ActiveRecord::Migration
  def change
    create_table :solidus_subscriptions_installment_details do |t|
      t.references :installment, foreign_key: true, null: false
      t.string :state, null: false

      t.timestamps null: false
    end

    add_index :solidus_subscriptions_installment_details, :installment_id, name: :index_installment_details_on_installment_id
  end
end