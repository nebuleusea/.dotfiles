function poff --wraps='set --erase http_proxy https_proxy' --description 'alias poff set --erase http_proxy https_proxy'
  set --erase http_proxy https_proxy $argv
        
end
