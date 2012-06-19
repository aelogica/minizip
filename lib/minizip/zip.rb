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

    def self.extract(zip_name, options)
      if options && options.is_a?(String)
        warn "[DEPRECATED] Passing in 'directory' as the second argument is deprecated. Please pass it in as part of a hash instead, like this: extract(#{zip_name}, :directory => #{options})"
        options = {'directory' => options}
      end
      directory = options['directory']
      overwrite = options['overwrite'] ? '-o' : nil

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
            system "unzip #{overwrite} #{zip_name} -d #{directory}"
          else
            system "unzip #{overwrite} #{zip_name}"
          end
        end
      else
        puts "#{zip_name} doesn't exist in #{Dir.pwd}"
      end
    end
  end
end
