module Minizip
  USING_WINDOWS = !!((RUBY_PLATFORM =~ /(win|w)(32|64)$/) || (RUBY_PLATFORM =~ /mswin|mingw/))
  USING_OSX = RUBY_PLATFORM =~ /darwin/

  class Zip
    def self.zip_dir(zip_name, directory)
      if File.exists?(directory)
        if USING_OSX
          puts "ZIPPING #{directory} to #{zip_name}.zip"
          system "zip -r #{zip_name} #{directory}"
        end
      else
        puts "#{directory} doesn't exist in #{Dir.pwd}"
      end
    end
  end
end
