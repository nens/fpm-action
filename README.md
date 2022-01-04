# fpm-action

FPM github workflow action for generating debian packages

## Prerequisites

- A `version.txt` file with the version in it (like `0.2`). This value gets
  passed with `--version` automatically.

- A `.fpm` file with all the options (apart from `--version`) you want to pass
  to fpm. For instance:

	  --input-type dir
	  --output-type deb
	  --name reinouttest
	  --chdir root
	  --deb-dist focal
	  reinout
