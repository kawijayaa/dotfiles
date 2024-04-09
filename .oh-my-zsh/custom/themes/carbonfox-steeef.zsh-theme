# carbonfox-steeef 
# steeef with carbonfox palette
#
# prompt style and colors based on Steve Losh's Prose theme:
# https://github.com/sjl/oh-my-zsh/blob/master/themes/prose.zsh-theme
#
# vcs_info modifications from Bart Trojanowski's zsh prompt:
# http://www.jukie.net/bart/blog/pimping-out-zsh-prompt
#
# git untracked files modification from Brian Carper:
# https://briancarper.net/blog/570/git-info-in-your-zsh-prompt

export VIRTUAL_ENV_DISABLE_PROMPT=1

function virtualenv_info {
    [ $VIRTUAL_ENV ] && echo '('%F{blue}`basename $VIRTUAL_ENV`%f') '
}
PR_GIT_UPDATE=1

setopt prompt_subst

autoload -U add-zsh-hook
autoload -Uz vcs_info

# color palette
black="%F{#282828}"
red="%F{#EE5396}"
green="%F{#25be6a}"
yellow="%F{#08BDBA}"
blue="%F{#78A9FF}"
magenta="%F{#BE95FF}"
cyan="%F{#33B1FF}"
white="%F{#dfdfe0}"
orange="%F{#3DDBD9}"
pink="%F{#FF7EB6}"

# enable VCS systems you use
zstyle ':vcs_info:*' enable git svn

# check-for-changes can be really slow.
# you should disable it, if you work with large repositories
zstyle ':vcs_info:*:prompt:*' check-for-changes true

# set formats
# %b - branchname
# %u - unstagedstr (see below)
# %c - stagedstr (see below)
# %a - action (e.g. rebase-i)
# %R - repository path
# %S - path in the repository
PR_RST="%f"
FMT_BRANCH="%{$white%}(${PR_RST}%{$orange%}%b%u%c${PR_RST}%{$white%})${PR_RST}"
FMT_ACTION="%{$white%}(${PR_RST}%{$pink%}%a${PR_RST}%{$white%})${PR_RST}"
FMT_UNSTAGED="%{$magenta%}●"
FMT_STAGED="%{$green%}●"

zstyle ':vcs_info:*:prompt:*' unstagedstr   "${FMT_UNSTAGED}"
zstyle ':vcs_info:*:prompt:*' stagedstr     "${FMT_STAGED}"
zstyle ':vcs_info:*:prompt:*' actionformats "${FMT_BRANCH}${FMT_ACTION}"
zstyle ':vcs_info:*:prompt:*' formats       "${FMT_BRANCH}"
zstyle ':vcs_info:*:prompt:*' nvcsformats   ""


function steeef_preexec {
    case "$2" in
        *git*)
            PR_GIT_UPDATE=1
            ;;
        *hub*)
            PR_GIT_UPDATE=1
            ;;
        *svn*)
            PR_GIT_UPDATE=1
            ;;
    esac
}
add-zsh-hook preexec steeef_preexec

function steeef_chpwd {
    PR_GIT_UPDATE=1
}
add-zsh-hook chpwd steeef_chpwd

function steeef_precmd {
    if [[ -n "$PR_GIT_UPDATE" ]] ; then
        # check for untracked files or updated submodules, since vcs_info doesn't
        if git ls-files --other --exclude-standard 2> /dev/null | grep -q "."; then
            PR_GIT_UPDATE=1
            FMT_BRANCH="%{$white%}(${PR_RST}%{$orange%}%b%u%c%{$red%}●${PR_RST}%{$white%})${PR_RST}"
        else
            FMT_BRANCH="%{$white%}(${PR_RST}%{$orange%}%b%u%c${PR_RST}%{$white%})${PR_RST}"
        fi
        zstyle ':vcs_info:*:prompt:*' formats "${FMT_BRANCH} "

        vcs_info 'prompt'
        PR_GIT_UPDATE=
    fi
}
add-zsh-hook precmd steeef_precmd

PROMPT=$'
%{$red%}%n${PR_RST}%{$white%}@${PR_RST}%{$cyan%}%m${PR_RST}%{$white%}:${PR_RST}%{$green%}%~${PR_RST} $vcs_info_msg_0_$(virtualenv_info)
$ '

