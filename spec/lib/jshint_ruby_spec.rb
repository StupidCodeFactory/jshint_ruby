require 'spec_helper'

describe JshintRuby do


  describe "When no linting errors are returned" do

    let(:source) { File.open('spec/fixtures/source.js') }

    it 'is valid' do
      expect(JshintRuby.run(source, {})).to be_valid
    end

  end

  describe "When linting errors are returned" do

    let(:source) { File.open('spec/fixtures/errors.js') }
    let(:result) { JshintRuby.run(source, {}) }

    it 'is not valid' do
      expect(result).not_to be_valid
    end

    it 'errors are accessible' do
      expect(result.errors.first).to include('id', 'raw', 'code', 'line', 'character', 'scope', 'reason')
    end
  end

  describe "When passing options" do
    let(:options) { { eqeqeq: true } }
    let(:source) { File.open('spec/fixtures/errors_with_options.js') }

    it 'passes the options to JSHint correctly' do
      result = JshintRuby.run(source, {})
      expect(result).not_to be_valid
      expect(result.errors.first).to include("reason" => "Use '===' to compare with 'true'.")
    end
  end
end
