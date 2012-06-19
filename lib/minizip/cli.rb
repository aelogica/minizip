require 'thor'
require 'minizip/zip'

module Minizip
  class CLI < Thor

    desc "files", "files zip_name (add .zip if using windows) files_to_zip"
    def files(zip_name, *files_to_zip)
      Minizip::Zip.zip_files(zip_name, files_to_zip.join(" "))
    end

    desc "dir", "dir zip_name (autoiaticilly appends .zip) directory_to_zip"
    def dir(zip_name, dir_name)
      Minizip::Zip.zip_dir(zip_name, dir_name)
    end

    method_option :overwrite, :type => :boolean, :aliases => "-o", :desc => "This overwrites all the files if the destination file exists already. Basically the -o option for the UNIX unzip"
    desc "extract", "extract zip_file_name directory_to_extract"
    def extract(zip_name, dir_name=nil)
      new_options = {'directory' => dir_name}.merge(options)
      Minizip::Zip.extract(zip_name, new_options)
    end
  end
end
