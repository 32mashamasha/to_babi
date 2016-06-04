require 'spec_helper'

describe ToBabi do
  it 'has a version number' do
    expect(ToBabi::VERSION).not_to be nil
  end

  it 'can convert' do
    expect("こんにちは".to_babi).to eq("こぼんぶにびちびはば")
  end

  it 'can not convert' do
    expect("コンニチハ".to_babi).to eq("コンニチハ")
  end
end
