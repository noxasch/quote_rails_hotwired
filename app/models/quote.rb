class Quote < ApplicationRecord
  validates :name, presence: true

  scope :ordered, -> { order(id: :desc) }

  after_commit :update_quotes_list

  private

  def update_quotes_list
    broadcast_prepend_to 'quotes',
                         partial: 'quotes/quote',
                         locals: { quote: self },
                         target: 'quotes'
  end
end
