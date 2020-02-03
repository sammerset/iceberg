# frozen_string_literal: true

require 'spec_helper'

RSpec.describe App do
  subject { described_class.new }

  before do
    allow_any_instance_of(Transactions::CollectData)
      .to receive(:call) { Success(success: true) }
  end

  it '#run' do
    expect_any_instance_of(Commands::CollectCommand)
      .to receive(:execute)

    described_class.run
  end
end
