    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
end

set -x PATH ~/.local/bin $PATH


function g
   git
end

function gk
   gitk
end

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end
"~/.config/fish/config.fish" 35L, 387C
function fish_user_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
end

set -x PATH ~/.local/bin $PATH


function g
   git
end

function gk
   gitk
end

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

function ..
    cd ..
end

function cd..
    cd ..
end



~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
function fish_user_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
end

set -x PATH ~/.local/bin $PATH


function g
   git
end

function gk
   gitk
end

function sudo
    if test "$argv" = !!
        eval command sudo $history[1]
    else
        command sudo $argv
    end
end

function ..
    cd ..
end

function cd..
    cd ..
end



~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
~
