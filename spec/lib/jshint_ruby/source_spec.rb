require 'spec_helper'

describe JshintRuby::Source do
  it "can read jshint source file path from an environment variable" do
    path = '/usr/local/lib/jshint.js'
    expect(ENV).to receive(:[]).with('JSHINT_PATH').and_return(path)
    expect(JshintRuby::Source.path).to eq(path)
  end
end
