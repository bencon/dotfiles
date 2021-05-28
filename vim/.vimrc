let configs = [
\  "ui",
\  "commands",
\  "plugins",
\  "plugin-settings",
\  "general",
\]

for file in configs
  let x = expand("~/.vim/".file.".vim")
  if filereadable(x)
    execute 'source' x
  endif
endfor
