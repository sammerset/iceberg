# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Mappers::Poro::MainMapper do
  subject { described_class.new.normalize(input) }
  let(:object) { double }
  let(:input) { [object] }

  it 'normalize' do
    expect(Mappers::Poro::VisitMapper)
      .to receive(:normalize).with(object)
    subject
  end
end
