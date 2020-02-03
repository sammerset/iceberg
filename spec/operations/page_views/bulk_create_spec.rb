# frozen_string_literal: true

require 'spec_helper'

# rubocop:disable
RSpec.describe Operations::PageViews::BulkCreate do
  subject { described_class.new.call(page_views_attrs, visit_id: 1) }
  let(:page_views_attrs) do
    [
      {
        url:        'poro_url',
        title:      'page_title_456',
        time_spent: 'time_spent_456',
        timestamp:  '1580680510',
        position:    4
      },
      {
        url:        'poro_url',
        title:      'page_title_123',
        time_spent: 'time_spent_123',
        timestamp:  '1580650510',
        position:    2
      },
      {
        url:        'poro_url',
        title:      'page_title_789',
        time_spent: 'time_spent_234',
        timestamp:  '1580680610',
        position:    3
      },
      {
        url:        'poro_url',
        title:      'page_title_123',
        time_spent: 'time_spent_456',
        timestamp:  '1580680510',
        position:    1
      }
    ]
  end

  before do
    rom[:visits].dataset.insert(id: 1)
  end

  it 'persist data without duplicates' do
    expect(subject).to eq(Success(success: true))
    expect(rom[:page_views].dataset.count).to eq(3)
  end
end
# rubocop:enable
