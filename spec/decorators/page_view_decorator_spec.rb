# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Decorators::PageViewDecorator do
  subject { described_class.new }
  let(:object) { { name: 'poro' } }
  let(:data) { data }

  context 'data present' do
    let(:data) { { position: 8 } }
    it 'decorate object' do
      expect(subject.call(object, data))
        .to eq(name: 'poro', position: 8)
    end
  end

  context 'data absent' do
    let(:data) { {} }
    it 'decorate object' do
      expect(subject.call(object, data)).to eq(name: 'poro')
    end
  end
end
