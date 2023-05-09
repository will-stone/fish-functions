function ls --wraps exa --description 'List contents of directory'
    command exa --all --group-directories-first --icons $argv
end
