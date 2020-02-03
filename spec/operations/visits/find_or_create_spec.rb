# frozen_string_literal: true

require 'spec_helper'

# rubocop:disable
RSpec.describe Operations::Visits::FindOrCreate do
  let(:visit_attrs) do
    {
      evid:              '12345678-1234-1234-1234-123456789012',
      vendor_site_id:    'id_site_123',
      vendor_visit_id:   'id_visit_456',
      vendor_visitor_id: 'visitor_id_321',
      visit_ip:          'visit_ip'
    }
  end

  let(:anouther_visit_attrs) do
    {
      evid:              '87654321-1234-1234-1234-123456789012',
      vendor_site_id:    'id_site_123',
      vendor_visit_id:   'id_visit_456',
      vendor_visitor_id: 'visitor_id_321',
      visit_ip:          'visit_ip'
    }
  end

  it 'find or create' do
    # initially we have 0 records
    expect(rom[:visits].dataset.count).to be_zero
    # create first item
    result = described_class.new.call(visit_attrs)
    visit_id = result.value!

    # now we have 1 item
    expect(result).to eq(Success(visit_id))
    expect(rom[:visits].dataset.count).to eq(1)

    # create anouther item
    described_class.new.call(anouther_visit_attrs)

    # try to create new one with first item's attributes -
    # it should return first item id
    expect(described_class.new.call(visit_attrs)).to eq(Success(visit_id))

    # we have only 2 items - first and anouther
    expect(rom[:visits].dataset.count).to eq(2)
  end
end
# rubocop:enable
