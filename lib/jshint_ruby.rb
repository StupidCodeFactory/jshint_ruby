require "jshint_ruby/version"
require "jshint_ruby/source"
require "execjs"

module JshintRuby

  def self.context
    ExecJS.compile(
      Source.contents +
      "function JSHINTER(source, options, data) { " +
      "return [JSHINT(source, options, data), JSHINT.errors]; }"
    )
  end

  def self.run(source, options = {})
    source = source.respond_to?(:read) ? source.read : source
    Result.new(*context.call("JSHINTER", source, options, {}))
  end

  class Result
    attr_reader :errors
    def initialize(valid, errors)
      @valid = valid
      @errors = errors
    end

    def valid?
      @valid
    end
  end

end
