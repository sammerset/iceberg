# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Mappers::Poro::PageViewMapper do
  subject { described_class.new }
  subject { described_class.normalize(raw) }
  let(:raw) do
    {
      url:       'poro_url',
      pageTitle: 'page_title_123',
      timeSpent: 'time_spent_456',
      timestamp: '2020-01-01 00:00:00'
    }
  end

  it 'normalize' do
    expect(subject).to eq(
      {
        url:        'poro_url',
        title:      'page_title_123',
        time_spent: 'time_spent_456',
        timestamp:  '2020-01-01 00:00:00'
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
