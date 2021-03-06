name             "system"
maintainer       "Mike Mackintosh"
maintainer_email "m@splug.io"
license          "Apache 2.0"
description      "Manage System Stuff for OS X"
long_description IO.read(File.join(File.dirname(__FILE__), 'README.md'))
version          "0.2.3"

depends "homebrew"
depends 'mac_os_x'

# 0.2.3
# - Added fix for login window message
#
# <= 0.2.2
# - Bunch of stuff