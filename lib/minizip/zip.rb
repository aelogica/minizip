require 'rbconfig'

module Minizip
  USING_WINDOWS = (::RbConfig::CONFIG['host_os'] =~/mswin|mingw/)
  USING_OSX = (::RbConfig::CONFIG['host_os'] =~ /darwin/)

  class Zip
    def self.zip_files(zip_name, *files)
      if USING_OSX
        system "zip #{zip_name} #{files.join(' ')}"
      elsif USING_WINDOWS
        system "7za a #{zip_name} #{files.join(' ')}"
      else
        raise "Unsupported platform"
      end
    end

    def self.zip_dir(zip_name, directory)
      if File.exists?(directory)
        if USING_OSX
          puts "ZIPPING #{directory} to #{zip_name}.zip"
          system "zip -r #{zip_name} #{directory}"
        elsif USING_WINDOWS
          system "7za a #{zip_name} #{directory}"
        else
          raise "Unsupported platform"
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
        elsif USING_WINDOWS
          if directory
            system "7za x #{zip_name} -o#{directory}"
          else
            system "7za x #{zip_name}"
          end
        else
          raise "Unsupported platform"
        end
      else
        puts "#{zip_name} doesn't exist in #{Dir.pwd}"
      end
    end
  end
end
