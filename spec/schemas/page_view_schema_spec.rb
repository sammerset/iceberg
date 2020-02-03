# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Schemas::PageViewSchema do
  subject { described_class.call(input).success? }
  let(:input) { data }
  let(:data) do
    {
      url:        'poro_url',
      title:      'page_title_123',
      time_spent: 'time_spent_456',
      timestamp:  '2020-01-01 00:00:00',
      position:   1
    }
  end

  context 'invalid' do
    let(:input) { data.merge(url: nil) }

    it 'validate' do
      expect(subject).to be_falsey
    end
  end

  it 'valid' do
    expect(subject).to be_truthy
  end
end
