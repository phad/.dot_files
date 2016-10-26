#!/bin/bash
#   Flush .bash_history after each command.
#   from: http://northernmost.org/blog/flush-bash_history-after-each-command

export PROMPT_COMMAND='history -a'
