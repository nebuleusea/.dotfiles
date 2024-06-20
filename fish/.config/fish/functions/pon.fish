function pon --wraps='export http_proxy=http://127.0.0.1:20171;export https_proxy=http://127.0.0.1:20171' --description 'alias pon export http_proxy=http://127.0.0.1:20171;export https_proxy=http://127.0.0.1:20171'
  export http_proxy=http://127.0.0.1:20171;export https_proxy=http://127.0.0.1:20171 $argv
        
end
