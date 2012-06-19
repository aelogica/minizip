## INSTALLATION

### Unix/Mac OSX

    $ gem install minizip

or if you're using bundler, add this to your Gemfile

    gem 'minizip'

### Windows

In windows, there's an additional step. After installing the gem(or before), download the 7zip command line version here:

http://www.7-zip.org/download.html

Extract that into any folder that's in your path already or if you want to use a custom folder, make sure you add it to your path. Check your installation by restarting your command prompt and typing 7za. It should show you a list of options for 7zip.

## USAGE

### Zipping

To zip up some files manually:

    $ minizip zip_files zip_name file1 file2 file3

To zip up a folder:

    $ minizip zip_dir zip_name directory_you_want_to_zip

Note: In Windows, you'll have to add a .zip to your zip_name, otherwise, will create your zip file with a .7z extension

### Extracting

To unzip to your current directory, just do:

    $ minizip extract zip_name

If you want to unzip in a directory:

    $ minizip extract zip_name directory_you_want_to_unzip_to

To force an overwrite of all the files, use the `--overwrite` or `-o` option:

    $ minizip extract zip_name directory_you_want_to_unzip_to --overwrite
    $ minizip extract zip_name directory_you_want_to_unzip_to -o

## CONTRIBUTING

All push requests are welcome provided they are properly tested(at least for Unix). We are still trying to fix the tests for Windows(some help here would be great also). We use Aruba for testing.
