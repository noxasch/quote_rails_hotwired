require 'rails_helper'

RSpec.describe 'Quotes', type: :feature do
  let!(:quote) { create(:quote) }

  describe 'When showing a quote' do
    it 'Show a quote' do
      visit quotes_path
      click_link quote.name

      expect(page).to have_css('h1', text: quote.name)
    end
  end

  describe 'When creating new quote' do
    it 'Open new quote' do
      visit quotes_path
      click_link 'New quote'

      expect(page).to have_css('h1', text: 'New quote')
    end

    it 'Create a new quote' do
      visit quotes_path
      click_link 'New quote'
      fill_in 'Name', with: 'Capybara quote'
      click_button 'Create Quote'

      expect(page).to have_css('a', text: 'Capybara quote')
    end
  end

  describe 'When updating a quote' do
    it 'Update quote' do
      visit quotes_path
      click_button 'Edit', match: :first
      fill_in 'Name', with: 'Updated quote'
      click_button 'Update Quote'

      expect(page).to have_css('a', text: 'Updated quote')
    end
  end

  describe 'When deleting a quote' do
    it 'Delete quote' do
      visit quotes_path
      expect(page).to have_css('a', text: quote.name)
      click_button 'Delete', match: :first
      expect(page).not_to have_css('a', text: quote.name)
    end
  end
end
