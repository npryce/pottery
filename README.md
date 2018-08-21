Pottery
=======

It's like Twitter, for recording things that happen in your project, stored in it's version control repository.

[![Build Status](https://travis-ci.org/npryce/pottery.svg?branch=master)](https://travis-ci.org/npryce/pottery)

Quick Start
-----------

Installation instructions coming soon...

Use the `pottery` command to record significant events in your project with short,
Twitter-like posts (which we've nicknamed "shards").

Shards are stored in a subdirectory of your project as Markdown files. 
The default directory is `docs/project-history`, but you can specify a 
different directory when you initialise the history log.

1. Create a directory in the root of your project:

        pottery init

    This will create a directory named `docs/project-history`

2. Post interesting events

        pottery post Alice joined the project

    This will create a new Markdown file in a dated subdirectory and file
	within `docs/project-directory`.  If you don't write any text after the
	`post` command, Pottery will open the new file for editing in your
    editor of choice (as specified by the VISUAL or EDITOR environment
    variable).
	
4. Post more events, when they occur.

        pottery post Bob left the project
		pottery post The company merged with MegaCorp, stopped selling widgets and started promoting doodads.

    Over time, you will build a record of the non-technical influences that 
	affected the project over its lifetime.


3. For further information, use the built in help:

        pottery help


See the [tests](tests/) for detailed examples.
