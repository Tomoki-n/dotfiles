" ==========
" javascript
" ==========
if executable('eslint')
  compiler eslint
else
  compiler javascriptlint
endif

if !exists('b:undo_ftplugin')
    let b:undo_ftplugin = ''
endif

let b:undo_ftplugin .= '
\ | setlocal makeprg<
\ | setlocal errorformat<
\'

" enable jsx syntax in .js file.
" let g:jsx_ext_required = 0
