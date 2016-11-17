### The problem.
I'd like to be do a `git checkout [tab]` and have the tab complete only complete local branches.

### The solution.
So I use zsh and after doing a bit of searching around I couldn't find a great introduction to tab completeion in zshell.
After some looking around if found this.

```
if [[ ! -o interactive ]]; then
    return
fi

compctl -K _pyenv pyenv

_pyenv() {
  local words completions
  read -cA words

  if [ "${#words}" -eq 2 ]; then
    completions="$(pyenv commands)"
  else
    completions="$(pyenv completions ${words[2,-2]})"
  fi

  reply=(${(ps:\n:)completions})
}
```
Which comes from the pyenv zshell completion script.
I modified it to this.

```
if [[ ! -o interactive ]]; then
    return
fi

compctl -K _git-local-checkout git-local-checkout

_git-local-checkout() {
  local words completions
  read -cA words

  completions="$(git branch | tr -d " " | tr -d \*)"
  reply=(${(ps:\n:)completions})
}
```
Git has this great feature that if you put in your path a command like `git-<name>` then you can type git <name> and it will execute that bash command.

This is useful if you want to namespace your git shell commands.
I also added an alias `alias glc="git-local-checkout"` so that I don't have to type so much.
In any case the above should make it so when you type `glc [tab]` you get only the local branches for completion.
