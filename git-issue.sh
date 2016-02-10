#!/bin/sh

eval "$(../docopts/docopts -V - -h - : "$@" <<EOF
Usage: $0 open <issue> <base>
       $0 update
       $0 close
----
git-issue 0.1.0
EOF
)"

# These is potentially changed later.
remote="origin"
base=

issue=$1
shift

# check issue against regex

command=$1
shift

# parse rest of arguments
while [ $# > 1 ]; do

	key="$1"

	case $key in

		-b|--base)
			base="$2"
			shift
			;;

		-r|--remote)
			remote="$2"
			shift
			;;

	esac

	shift

done

# check command against list
case $command in

	start)

		#base defaults to current base

		#look for existing issue branch
		#create issue branch if not already

		;;

	push)

		#check issue branch exists
		#rebase onto base
		#force push branch to remote

		;;

	update)

		#check issue branch exists
		#rebase onto base

		;;

	close)

		#check issue branch exists
		#delete local branch
		#delete remote branch
		#switch to base.

		;;

esac
