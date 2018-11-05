# Prompt customization
# Time, current Working Directory, Git branch in prompt.

parse_git_branch() {
   git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}
export PS1="\A \W\[\e[36m\]\$(parse_git_branch)\[\e[00m\] $ "

if which rbenv > /dev/null;
  then eval "$(rbenv init -)";
fi

export PATH="$HOME/.rbenv/bin:$PATH"




