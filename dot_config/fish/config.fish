if status is-interactive
    # Commands to run in interactive sessions can go here
    pokemon-colorscripts -n lucario --no-title
end

fish_add_path ~/.local/bin ~/bin
fish_add_path ~/.bun/bin
fish_add_path ~/.nimble/bin

set -gx BUN_INSTALL "$HOME/.bun"

if test -x /home/linuxbrew/.linuxbrew/bin/brew
    eval "$(/home/linuxbrew/.linuxbrew/bin/brew shellenv fish)"
end

starship init fish | source
