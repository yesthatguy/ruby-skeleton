# frozen_string_literal: true

require 'spec_helper'

RSpec.describe 'CLI', type: :aruba do
  let(:input_path) { expand_path("%/files/#{input_file}") }
  let(:output_path) { expand_path("%/files/#{output_file}") }
  let(:output) { File.read(output_path).strip }
  let(:command) { "app < #{input_path}" }

  before(:each) { run_command("sh -c '#{command}'") }

  context 'input1' do
    let(:input_file) { 'input1' }
    let(:output_file) { 'output1' }

    it { expect(last_command_started).to have_output output }
  end
end
