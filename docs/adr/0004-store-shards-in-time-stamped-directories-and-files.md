# 4. Store shards in time-stamped directories and files

Date: 2018-08-17

## Status

Accepted

Amended by [5. Sherd files have unique IDs to make merging histories easy](0005-sherd-files-have-unique-ids-to-make-merging-histories-easy.md)

## Context

A project history can cover many years, with many small shards being recorded.  If all the shard files are stored in the same directory, the directory will be difficult to work with when many shards have been posted.  Performance might suffer on older file systems.

## Decision

Store shard files in subdirectories named after year and then year-and-month, and name the files after the date and time.

## Consequences

It should be easier for people to find shard files by date.

The `ls` command won't be enough to list shard files in time order or reverse time order, but it is possible with the `find` command.  However, a more user friendly way of listing shards between dates would a useful subcommand to add to `pottery`
