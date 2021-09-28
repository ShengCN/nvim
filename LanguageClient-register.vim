" Configuration of LanguageClient-neovim to use cquery and ccls with


" ccls
" also see https://github.com/autozimu/LanguageClient-neovim/wiki/ccls
let s:ccls_settings = {
         \ 'highlight': { 'lsRanges' : v:true },
         \ }

let s:ccls_command = ['ccls', '-init=' . json_encode(s:ccls_settings)]

