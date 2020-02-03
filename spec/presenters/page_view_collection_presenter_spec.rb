# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Presenters::PageViewCollectionPresenter do
  subject { described_class.new.call(collection) }
  let(:collection) do
    [
      { timestamp: '78698734553' },
      { timestamp: '87656587585' },
      { timestamp: '12983728734' },
      { timestamp: '98287662355' },
      { timestamp: '98762934944' },
      { timestamp: '99994334343' }
    ]
  end

  it 'present data' do
    expect(subject).to eq(
      Success(
        [
          { timestamp: '12983728734' },
          { timestamp: '78698734553' },
          { timestamp: '87656587585' },
          { timestamp: '98287662355' },
          { timestamp: '98762934944' },
          { timestamp: '99994334343' }
        ]
      )
    )
  end

  context 'with empty data' do
    let(:collection) do
      [
        { timestamp: '78698734553' },
        { timestamp: nil },
        { timestamp: '' },
        { timestamp: '99994334343' },
      ]
    end

    it 'present data' do
      expect(subject).to eq(
        Success(
          [
            { timestamp: nil },
            { timestamp: '' },
            { timestamp: '78698734553' },
            { timestamp: '99994334343' },
          ]
        )
      )
    end
  end
end
