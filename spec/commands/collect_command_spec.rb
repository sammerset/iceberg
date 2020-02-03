# frozen_string_literal: true

require 'spec_helper'

RSpec.describe Commands::CollectCommand do
  subject { described_class.new }
  let(:result) { Success(success: true) }

  before do
    allow_any_instance_of(Transactions::CollectData)
      .to receive(:call)
      .and_return(result)
  end

  it 'should call transactions collect data' do
    expect(Transactions::CollectData)
      .to receive_message_chain(:new, :call)
      .and_return(Success(success: true))

    subject.execute
  end

  context 'log' do
    let(:logger) { instance_double(Logger, info: nil, error: nil) }

    before do
      subject.instance_variable_set(:@logger, logger)
    end

    context 'success' do
      let(:result) { Success(success: true) }

      it 'success log' do
        expect(logger)
          .to receive(:info)
          .with('COLLECT_CONSUMER -- COLLECT RESULT -- : {:success=>true}')

        subject.execute
      end
    end

    context 'failure' do
      let(:result) { Failure(success: false, errors: { name: 'wrong' }) }

      it 'error log' do
        expect(logger)
          .to receive(:error)
          .with('COLLECT_CONSUMER -- COLLECT RESULT -- : {:success=>false, :errors=>{:name=>"wrong"}}')

        subject.execute
      end
    end
  end

  it 'should return a simple result' do
    expect(subject.execute).to eq('{"success":true}')
  end
end
