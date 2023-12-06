class Quote < ApplicationRecord
  validates :name, presence: true

  scope :ordered, -> { order(id: :desc) }

  # broadcast_ is syncronous by default
  after_create_commit -> { broadcast_prepend_to 'quotes' }
  after_update_commit -> { broadcast_replace_to 'quotes' }
  after_destroy_commit -> { broadcast_remove_to 'quotes' }

  # def update_quotes_list
  # broadcast_prepend_to 'quotes',
  #                      partial: 'quotes/quote', # default
  #                      locals: { quote: self }, # default is self
  #                      target: 'quotes' # default is plural

  # broadcast_prepend_to 'quotes' # this is already enough
  # end
end
