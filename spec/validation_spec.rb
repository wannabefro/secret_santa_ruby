require 'rspec'
require_relative '../santa.rb'

describe 'validations' do
include Validations

  it 'numerical accepts a string of only digits' do
    expect(numerical?('123456')).to eql(true)
    expect(numerical?('45209860981')).to eql(true)
  end

  it 'numerical does not accept non digits' do
    expect(numerical?('12345a')).to eql(false)
    expect(numerical?('12345-')).to eql(false)
    expect(numerical?('1bcde')).to eql(false)
  end

  it 'wordical only accepts letters and spaces' do
    expect(wordical?('hello me')).to eql(true)
  end

  it 'wordical does not accept other characters' do
    expect(wordical?('h1llo me')).to eql(false)
  end
end
