# KGLog

A simple logging system for Keystone Games applications.

## Installation

All you have to do is type `haxelib install kglog` in the command prompt. This will install the latest version of kglog.
To update kglog, just type `haxelib update kglog` in the command prompt.
To include the library in your project you must add `-lib kglog` to build.hxml.

## Updates

This project uses SemVer 2.0. There are 3 digits in this versioning system. Example: `1.4.7`. When the 3rd digit increases, this indicates the release of a new patch. You will be able to upgrade to the new version with no issues. If the 2nd digit increases, this indicates a new minor release. You should be able to upgrade to the new version with no issues, but we highly recommend that you go through your code and find any errors with KGLog. Some changes may take place that are not compatible with your code. If the 1st digit increases, this indicates that there is a new major release. Major releases are completely different from an older version and NOT backwards compatible. When upgrading, you need to scan your code for errors with the libra

## Features (1.1.0)

-Logging to the console

-Logging to a file

### SimpleLog

Logs a simple string of text to the console and the application's log file.

### Error

Logs an error to the logs with path information.

### Info

Logs a simple string of text to the console and the application's log file.

### Debug

Logs a string of text with an indicator that it is for debugging.

### Trace

Logs a simple string of text to the logs with path information.

## Usage

### Info

Code:
```haxe
package;

import kglog.Logger;

class Program {
  public static function main() {
    Logger.info("Hello world!");
  }
}
```

Result:
```
Hello world!
```
