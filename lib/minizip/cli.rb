require 'thor'
require 'minizip/zip'

module Minizip
  class CLI < Thor
    desc "zip_dir", "zip_dir zip_name (automatically appends .zip) directory_to_zip"
    def zip_dir(zip_name, dir_name)
      Minizip::Zip.zip_dir(zip_name, dir_name)
    end
  end
end
