#!/bin/bash
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${bold_green}✓"
SCM_THEME_PROMPT_PREFIX=" |"
SCM_THEME_PROMPT_SUFFIX="${green}|"

GIT_THEME_PROMPT_DIRTY=" ${red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX=" ${green}|"
GIT_THEME_PROMPT_SUFFIX="${green}|"

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

function node_version() {
    nv=$(node -v) || return
    echo -e "$RVM_THEME_PROMPT_PREFIX$nv$RVM_THEME_PROMPT_SUFFIX"
}
# "${light_blue}$(node_version)  "
function prompt_command() {
    PS1="\n${orange}\h ${black}— \w\n${bold_yellow}$(scm_char)${green}$(scm_prompt_info) ${yellow}→${reset_color} "
}

PROMPT_COMMAND=prompt_command;
