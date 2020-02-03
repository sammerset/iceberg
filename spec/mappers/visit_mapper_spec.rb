# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Mappers::Poro::VisitMapper do
  subject { described_class.normalize(raw) }
  let(:raw) do
    {
      referrerName:  'poro',
      idSite:        'id_site_123',
      idVisit:       'id_visit_456',
      visitIp:       'visit_ip_789',
      visitorId:     'visitor_id_321',
      actionDetails: [{}]
    }
  end

  it 'normalize' do
    expect(subject).to eq(
      {
        evid:              'poro',
        vendor_site_id:    'id_site_123',
        vendor_visit_id:   'id_visit_456',
        vendor_visitor_id: 'visitor_id_321',
        visit_ip:          'visit_ip_789',
        author_names:      [{}]
      }
    )
  end

  context 'empty' do
    let(:raw) { {} }

    it 'empty raw' do
      expect(subject).to eq({})
    end
  end

  context 'invalid keys' do
    let(:raw) { { invalid: 'invalid' } }

    it 'invalid raw' do
      expect(subject).to eq({})
    end
  end
end
