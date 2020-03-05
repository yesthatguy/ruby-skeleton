require 'placeholder'

describe Placeholder do
    it 'holds a place' do
        placeholder = Placeholder.new
        expect(placeholder.holds_place("foo")).to be(false)
    end
end
