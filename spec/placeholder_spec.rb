# frozen_string_literal: true

require 'placeholder'

RSpec.describe Placeholder do
  let(:placeholder) { Placeholder.new }
  it 'does something' do
    expect(placeholder.do_something('foo')).to be(true)
  end
end
