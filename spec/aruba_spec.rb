# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'CLI', type: :aruba do
  context 'input1' do
    let(:output) { File.read(expand_path('%/files/output1')).strip }
    let(:input_path) { expand_path('%/files/input1') }
    let(:command) { "app < #{input_path}" }

    before(:each) { run_command("sh -c '#{command}'") }

    # Full string
    it { expect(last_command_started).to have_output output }
  end
end
