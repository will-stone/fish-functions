function ls --wraps ls --description 'List contents of directory'
  command ls -A $argv
end