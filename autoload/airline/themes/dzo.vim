" File:           dzo.vim
" Maintainer:     Henry Blevins (blevs)
" Url:            https://github.com/blevs/vim-dzo
" License:        MIT

" Description:
" Vim-airline 'dzo' theme designed to work with the vim-dzo colorscheme.
" Based on the 'wombat' vim-airline theme.

" Normal mode
"          [ guifg, guibg, ctermfg, ctermbg, opts ]
let s:N1 = [ '#1A1A1A' , '#8BB664' , 0 , 10]   " mode
let s:N2 = [ '#8BB664' , '#1A1A1A' , 10   , 0] " info
let s:N3 = [ '#8BB664' , '#1A1A1A' , 10   , 0] " statusline
let s:N4 = [ '#99CF50' , 2 ]                   " mode modified


" Insert mode
let s:I1 = [ '#1A1A1A' , '#DDA790' , 0 , 11 ]
let s:I2 = [ '#DDA790' , '#1A1A1A' , 11 , 0 ]
let s:I3 = [ '#DDA790' , '#1A1A1A' , 11 , 0 ]
let s:I4 = [ '#FDAF87' , 3 ]

" Visual mode
let s:V1 = [ '#1A1A1A' , '#5F819D' , 0 , 4 ]
let s:V2 = [ '#5F819D' , '#1A1A1A' , 4 , 0 ]
let s:V3 = [ '#5F819D' , '#1A1A1A' , 4 , 0 ]
let s:V4 = [ '#81A2BE' , 12 ]

" Replace mode
let s:R1 = [ '#1A1A1A' , '#A54242' , 0 , 1 ]
let s:R2 = [ '#A54242' , '#1A1A1A' , 1 , 0 ]
let s:R3 = [ '#A54242' , '#1A1A1A' , 1 , 0 ]
let s:R4 = [ '#CC6666' , 9 ]

" Paste mode
let s:PA = [ '#005577' , 6 ]

" Info modified
let s:IM = [ '#1A1A1A' , 0 ]

" Inactive mode
let s:IA = [ '#1A1A1A' , s:N3[1] , 0 , s:N3[3] , '' ]

let g:airline#themes#dzo#palette = {}

let g:airline#themes#dzo#palette.accents = {
      \ 'red': [ '#CC6666' , '' , 9 , '' , '' ],
      \ }

let g:airline#themes#dzo#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)
let g:airline#themes#dzo#palette.normal_modified = {
    \ 'airline_a': [ s:N1[0] , s:N4[0] , s:N1[2] , s:N4[1] , ''     ] ,
    \ 'airline_b': [ s:N4[0] , s:IM[0] , s:N4[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:N4[0] , s:N3[1] , s:N4[1] , s:N3[3] , ''     ] }


let g:airline#themes#dzo#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)
let g:airline#themes#dzo#palette.insert_modified = {
    \ 'airline_a': [ s:I1[0] , s:I4[0] , s:I1[2] , s:I4[1] , ''     ] ,
    \ 'airline_b': [ s:I4[0] , s:IM[0] , s:I4[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:I4[0] , s:N3[1] , s:I4[1] , s:N3[3] , ''     ] }


let g:airline#themes#dzo#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)
let g:airline#themes#dzo#palette.visual_modified = {
    \ 'airline_a': [ s:V1[0] , s:V4[0] , s:V1[2] , s:V4[1] , ''     ] ,
    \ 'airline_b': [ s:V4[0] , s:IM[0] , s:V4[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:V4[0] , s:N3[1] , s:V4[1] , s:N3[3] , ''     ] }


let g:airline#themes#dzo#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)
let g:airline#themes#dzo#palette.replace_modified = {
    \ 'airline_a': [ s:R1[0] , s:R4[0] , s:R1[2] , s:R4[1] , ''     ] ,
    \ 'airline_b': [ s:R4[0] , s:IM[0] , s:R4[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:R4[0] , s:N3[1] , s:R4[1] , s:N3[3] , ''     ] }


let g:airline#themes#dzo#palette.insert_paste = {
    \ 'airline_a': [ s:I1[0] , s:PA[0] , s:I1[2] , s:PA[1] , ''     ] ,
    \ 'airline_b': [ s:PA[0] , s:IM[0] , s:PA[1] , s:IM[1] , ''     ] ,
    \ 'airline_c': [ s:PA[0] , s:N3[1] , s:PA[1] , s:N3[3] , ''     ] }


let g:airline#themes#dzo#palette.inactive = airline#themes#generate_color_map(s:IA, s:IA, s:IA)
let g:airline#themes#dzo#palette.inactive_modified = {
    \ 'airline_c': [ s:N4[0] , ''      , s:N4[1] , ''      , ''     ] }


if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#dzo#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ '#8BB664' , '#1A1A1A' , 10 , 0 , ''     ] ,
      \ [ '#8BB664' , '#1A1A1A' , 10 , 0 , ''     ] ,
      \ [ '#1A1A1A' , '#8BB664' , 0 , 10 , 'bold' ] )

