module Minizip
  USING_WINDOWS = !!((RUBY_PLATFORM =~ /(win|w)(32|64)$/) || (RUBY_PLATFORM =~ /mswin|mingw/))
  USING_OSX = RUBY_PLATFORM =~ /darwin/

  class Zip
    def self.zip
      if USING_OSX
        return "USING OSX"
      end
      "Hellow World"
    end
  end
end
