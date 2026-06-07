# Package

version       = "0.4.1"
author        = "Dominik Picheta"
description   = "Official redis client for Nim"
license       = "MIT"

srcDir = "src"

# Dependencies

requires "nim >= 2.0.0"

task docs, "Build documentation":
  exec "nim doc --index:on -o:docs/redis.html src/redis.nim"

task test, "Run tests":
  exec "nim c -r tests/main.nim"
