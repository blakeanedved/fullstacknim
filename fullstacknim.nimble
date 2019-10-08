# Package

version       = "0.1.0"
author        = "blakeanedved"
description   = "A repository for testing a fullstack nim web development framework"
license       = "MIT"
srcDir        = "src"
installExt    = @["nim"]
bin           = @["fullstacknim"]

# Dependencies

requires "nim >= 1.0.0", "jester >= 0.4.3"
foreignDep "sass >= 1.23.0"
