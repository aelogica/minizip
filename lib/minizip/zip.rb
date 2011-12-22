require 'rbconfig'

module Minizip
  USING_WINDOWS = (::RbConfig::CONFIG['host_os'] =~/mswin|mingw/)

  class Zip
    def self.zip_files(zip_name, *files)
      if USING_WINDOWS
        system "7za a #{zip_name} #{files.join(' ')}"
      else
        system "zip #{zip_name} #{files.join(' ')}"
      end
    end

    def self.zip_dir(zip_name, directory)
      if File.exists?(directory)
        if USING_WINDOWS
          system "7za a #{zip_name} #{directory}"
        else
          system "zip -r #{zip_name} #{directory}"
        end
      else
        puts "#{directory} doesn't exist in #{Dir.pwd}"
      end
    end

    def self.extract(zip_name, directory=nil)
      if File.exists?(zip_name)
        Dir.mkdir(directory) if directory && !File.exists?(directory)

        if USING_WINDOWS
          if directory
            system "7za x #{zip_name} -o#{directory}"
          else
            system "7za x #{zip_name}"
          end
        else
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
