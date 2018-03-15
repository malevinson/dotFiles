set -x PATH ~/.local/bin $PATH

function fish_user_key_bindings
    for mode in insert default visual
        bind -M $mode \cf forward-char
    end
end
function g
   git $argv;
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
function gcp
    git cherry-pick $argv;
end
function gco
    git checkout $argv;
end
function gcb
    git checkout -b $argv;
end
function gsh
    git stash
end
function gshp
    git stash pop
end
function gsl
    git stash list
end
function gsa
    git stash apply
end
function gss
    git stash save $argv;
end
function gs
    git status
end
function gl
    git log
end
function grc
    git rebase --continue
end
function gra
    git rebase --abort
end
function gmc
    git merge --continue
end
function gma
    git merge --abort
end
function gcpc
    git cherry-pick --continue
end
function gcpa
    git cherry-pick --abort
end
function glf
	git log --pretty=format:"%C(yellow)%h%Cred%d\\ %Creset%s%Cblue\\ [%an]" --decorate --numstat
end
function gl1
	git log --numstat -1
end
function gl2
	git log --numstat -2
end
function gl3
	git log --numstat -3
end
function gl4
	git log --numstat -4
end
function gl5
	git log --numstat -5
end
function gw
    git show
end
function gld
	git log --pretty=format:"%C(yellow)%h\\ %ad%Cred%d\\ %Creset%s%Cblue\\ [%an]" --decorate --date=relative
end
function gprom
	git pull --rebase origin master
end
function gprod
	git pull --rebase origin develop
end
function gpom
	git pull origin master
end
function gpod
	git pull origin develop
end
function gpl
	git pull
end
function gpo
	git push origin $argv;
end
function gfa
	git fetch --all
end
function grhom
	git reset --hard origin/master
end
function gpo
    git push origin HEAD $argv
end
function gsa1
    git stash apply stash@{1}
end
function gsa2
    git stash apply stash@{2}
end
function gsa3
    git stash apply stash@{3}
end
function grhod
	git reset --hard origin/develop
end
function gc
    git commit -am $argv;
end
function gcs
    git add .; and git commit -m 'save'
end
function gch
    git checkout -p
end
function gm
    git commit -m $argv;
end
function gcm
	git checkout master
end
function gcod
	git checkout develop
end
function grh
	git reset HEAD~
end
function grh2
	git reset HEAD~2
end
function grh3
	git reset HEAD~3
end
function grh4
	git reset HEAD~4
end
function grh5
	git reset HEAD~5
end
function grh6
	git reset HEAD~6
end
function grh7
	git reset HEAD~7
end
function grh8
	git reset HEAD~8
end
function gdf
	git diff
end
function gdel
	git branch -D $argv;
end
function ga 
    git add .
end
function grf
	git reset public/JCheckout.js public/JLiteCheckout.js public/index.html src/index.js
end
function gcpe
	git cherry-pick envSetup
end
function gam
	git commit --amend --all $argv;
end
function gas
	git add .; and git stash
end
function gr
    git reset $argv; 
end
function t
    tig
end
