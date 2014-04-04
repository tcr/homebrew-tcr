require 'formula'

class Gyp < Formula

      # homebrew should automatically know what to do svn repos
      url "http://gyp.googlecode.com/svn/trunk/", :using => :svn
      version "1.0"

      depends_on :python

     # initialize the installation of this
     def install

             # intialize setup arguments for python
             install_args = ["setup.py", "install"]

             # use the brew python to install the tools needed
             system 'python', *install_args

             # install the gyp executable
             bin.install("gyp")
             bin.install("gyp_main.py")
     end
end
