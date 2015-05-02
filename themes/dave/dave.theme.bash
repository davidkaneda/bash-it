#!/bin/bash
SCM_THEME_PROMPT_DIRTY=" ${red}✗"
SCM_THEME_PROMPT_CLEAN=" ${cyan}✓"
SCM_THEME_PROMPT_PREFIX=""
SCM_THEME_PROMPT_SUFFIX=""

GIT_THEME_PROMPT_DIRTY=" ${bold_red}✗"
GIT_THEME_PROMPT_CLEAN=" ${bold_green}✓"
GIT_THEME_PROMPT_PREFIX="${yellow}"
GIT_THEME_PROMPT_SUFFIX=" "

RVM_THEME_PROMPT_PREFIX="|"
RVM_THEME_PROMPT_SUFFIX="|"

function prompt_command() {
    PS1="\n${bold_black}$(pwd) ${black}at ${bold_black}$(date +%r)\\n$(scm_prompt_info)${yellow}→${reset_color}${normal} "
}

PROMPT_COMMAND=prompt_command;


