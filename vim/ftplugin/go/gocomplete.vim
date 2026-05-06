" Prefer vim-go's built-in completion; keep legacy gocode as a fallback.
if globpath(&runtimepath, 'autoload/go/complete.vim') != ''
  setlocal omnifunc=go#complete#Complete
elseif executable('gocode')
  setlocal omnifunc=gocomplete#Complete
endif
