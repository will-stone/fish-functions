function ls --wraps eza --description 'List contents of directory'
    command eza --all --group-directories-first $argv
end
