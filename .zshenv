#
# Defines environment variables.
#
# Authors:
#   Sorin Ionescu <sorin.ionescu@gmail.com>
#

# Ensure that a non-login, non-interactive shell has a defined environment.
if [[ "$SHLVL" -eq 1 && ! -o LOGIN && -s "${ZDOTDIR:-$HOME}/.zprofile" ]]; then
  source "${ZDOTDIR:-$HOME}/.zprofile"
fi

if [ "$TERM_PROGRAM" = "Apple_Terminal" ]; then
	setopt combiningchars
fi

# no nomatch
setopt nonomatch
setopt hist_ignore_dups
setopt hist_ignore_all_dups

# japanese strings
setopt print_eight_bit

# define
export HOMEBREW_GITHUB_API_TOKEN=ad7c6ad69503c00f3d33ae296ff9d6268bcca8d5
export GTAGSCONF=/usr/local/Cellar/global/6.6.2_1/share/gtags/gtags.conf
export GTAGSLABEL=pygments

# path
path=(
  $HOME/bin
  /usr/local/bin
  $path
)
. "$HOME/.cargo/env"
