class AddCompanyReferenceToQuote < ActiveRecord::Migration[7.1]
  def change
    add_reference :quotes, :company, null: false, foreign_key: { on_delete: :cascade }, index: false
  end
end
