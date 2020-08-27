# Colour available commands green instead of white
set fish_color_command green

# Show truncated directory names in prompt
set fish_prompt_pwd_dir_length 0

# Git prompt
set __fish_git_prompt_show_informative_status
set __fish_git_prompt_showcolorhints
set __fish_git_prompt_color_branch magenta

function fish_prompt
  # status of last command can change before the end so we store it in this var.
  set -l last_status $status

  printf "\n\n"

  set_color --bold
  set_color blue
  printf (prompt_pwd)
  set_color normal

  set_color --bold
  fish_git_prompt " %s"
  set_color normal

  printf "\n"

  if test $last_status -eq 0
    set_color green
    printf "❯ "
    set_color normal
  else
    set_color red
    printf "✖ "
    set_color normal
  end
end

function fish_right_prompt
  if test -f "package.json"
    set -l node_version (eval node --version)
    set_color green
    printf "⬢ $node_version"
    set_color normal
  end
end
