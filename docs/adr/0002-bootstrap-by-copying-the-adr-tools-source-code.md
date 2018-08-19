# 2. Bootstrap by copying the adr-tools source code

Date: 2018-08-17

## Status

Accepted

## Context

I'm writing this very fast as part of a hackday.

I want the app to be like [adr-tools](https://github.com/npryce/adr-tools): a command line tool that stores data in a project's version control system.  I want it to have built-in help, like adr-tools.

## Decision

Copy the source of adr-tools.  Delete the scripts that don't make sense for Pottery.  Then do a bulk find-and-replace of "adr" to "pottery".  Bish bosh!

## Consequences

I can get the first version working very fast.  It actually took about two hours from idea to the first working version.

Pottery inherits the same technical underpinnings of adr-tools, with all its advantages and disadvantages.  In particular, that means it is implemented in Bash and other Unix command-line tools, is tested with approval testing of bash script output, and has configuration that helps packaging projects easily package the tool for distribution. 
