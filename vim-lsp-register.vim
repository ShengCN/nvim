" Configuration of vim-lsp to use cquery and ccls with vim-lsp
" also see https://github.com/prabirshrestha/vim-lsp/wiki/Servers-ccls
"
" highlight.lsRanges = true
" is only necessary if vim doesn't have +byte_offset
if executable('ccls')
   au User lsp_setup call lsp#register_server({
      \ 'name': 'ccls',
      \ 'cmd': {server_info->['ccls']},
      \ 'root_uri': {server_info->lsp#utils#path_to_uri(lsp#utils#find_nearest_parent_file_directory(lsp#utils#get_buffer_path(), 'compile_commands.json'))},
      \ 'initialization_options': {
      \   'highlight': { 'lsRanges' : v:true },
      \ },
      \ 'whitelist': ['c', 'cpp', 'objc', 'objcpp', 'cc', 'cu'],
      \ })
endif
