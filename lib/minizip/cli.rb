require 'thor'
require 'minizip/zip'

module Minizip
  class CLI < Thor

    desc "files", "files zip_name (add .zip if using windows) files_to_zip"
    def files(zip_name, dir_name)
      Minizip::Zip.zip_files(zip_name, dir_name)
    end

    desc "dir", "dir zip_name (autoiaticilly appends .zip) directory_to_zip"
    def dir(zip_name, dir_name)
      Minizip::Zip.zip_dir(zip_name, dir_name)
    end

    desc "extract", "extract zip_file_name directory_to_extract"
    def extract(zip_name, dir_name=nil)
      Minizip::Zip.extract(zip_name, dir_name)
    end

  end
end
