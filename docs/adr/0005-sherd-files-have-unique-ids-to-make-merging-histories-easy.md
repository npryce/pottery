# 5. Sherd files have unique IDs to make merging histories easy

Date: 2018-08-20

## Status

Accepted

Amends [4. Store shards in time-stamped directories and files](0004-store-shards-in-time-stamped-directories-and-files.md)

## Context

Sherd files are named after the time at which they were recorded (or relate to).  However, there is a (tiny) chance that two people might record a sherd at the same time, and merging the two commits will be a pain.

## Decision

Include a [large (96 bits), random, base-64][] encoded bit string in the file name to ensure uniqueness.

## Consequences

It is easier to merge commits or entire histories.

It is harder to parse the timestamp from the sherd filename.


[base-64]: https://en.wikipedia.org/wiki/Base64
