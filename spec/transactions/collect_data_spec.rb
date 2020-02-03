# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Transactions::CollectData do
  subject { described_class.new.call }

  it 'should persist' do
    VCR.use_cassette('poro') do
      expect(subject).to eq(
        Failure({
          errors: {
            page_views: [
              [
                { time_spent: ['is missing'] },
                { time_spent: ['is missing'] }
              ],
              [
                { time_spent: ['is missing'] },
                { time_spent: ['is missing'] }
              ]
            ],
            visits: [
              { evid: ['Event id is not valid'] },
              { evid: ['Event id is not valid'] }
            ]
          }
        })
      )
    end
    expect(rom[:visits].dataset.count).to eq(2)
    expect(rom[:page_views].dataset.count).to eq(12)
  end
end
