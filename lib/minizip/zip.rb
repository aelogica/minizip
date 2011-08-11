module Minizip
  USING_WINDOWS = !!((RUBY_PLATFORM =~ /(win|w)(32|64)$/) || (RUBY_PLATFORM =~ /mswin|mingw/))
  USING_OSX = RUBY_PLATFORM =~ /darwin/

  class Zip
    def self.zip_files(zip_name, *files)
      if USING_OSX
        system "zip #{zip_name} #{files.join(' ')}"
      elsif USING_WINDOWS
        system "7z a #{zip_name} #{files.join(' ')}"
      end
    end

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

    def self.extract(zip_name, directory=nil)
      if File.exists?(zip_name)
        Dir.mkdir(directory) if directory && !File.exists?(directory)

        if USING_OSX
          if directory
            system "unzip #{zip_name} -d #{directory}"
          else
            system "unzip #{zip_name}"
          end
        end
      else
        puts "#{zip_name} doesn't exist in #{Dir.pwd}"
      end
    end
  end
end
