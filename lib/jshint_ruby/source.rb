module JshintRuby
  class Source
    def self.path
      ENV['JSHINT_PATH'] ||
        File.expand_path("../../../vendor/jshint/jshint.js", __FILE__)
    end

    def self.contents
      @contents ||= File.read(path)
    end
  end
end
