# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Schemas::VisitSchema do
  subject { described_class.call(input).success? }
  let(:input) { data }
  let(:data) do
    {
      evid:              '966634dc-0bf6-1ff7-f4b6-08000c95c670',
      vendor_site_id:    'id_site_123',
      vendor_visit_id:   'id_visit_456',
      vendor_visitor_id: 'visitor_id_321',
      visit_ip:          'visit_ip_789',
      author_names:      [{}]
    }
  end

  context 'invalid' do
    let(:input) { data.merge(evid: 'invalid') }

    it 'validate' do
      expect(subject).to be_falsey
    end
  end

  it 'valid' do
    expect(subject).to be_truthy
  end
end
