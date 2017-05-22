" vim-airline template by chartoin (http://github.com/chartoin)
" Base 16 Chalk Scheme by Chris Kempson (http://chriskempson.com)
let g:airline#themes#base16_chalk#palette = {}
let s:gui00 = "#151515"
let s:gui01 = "#202020"
let s:gui02 = "#303030"
let s:gui03 = "#505050"
let s:gui04 = "#b0b0b0"
let s:gui05 = "#d0d0d0"
let s:gui06 = "#e0e0e0"
let s:gui07 = "#f5f5f5"
let s:gui08 = "#fb9fb1"
let s:gui09 = "#eda987"
let s:gui0A = "#ddb26f"
let s:gui0B = "#acc267"
let s:gui0C = "#12cfc0"
let s:gui0D = "#6fc2ef"
let s:gui0E = "#e1a3ee"
let s:gui0F = "#deaf8f"

let s:cterm00 = 233
let s:cterm01 = 234
let s:cterm02 = 236
let s:cterm03 = 239
let s:cterm04 = 249
let s:cterm05 = 252
let s:cterm06 = 253
let s:cterm07 = 15
let s:cterm08 = 217
let s:cterm09 = 216
let s:cterm0A = 179
let s:cterm0B = 143
let s:cterm0C = 6
let s:cterm0D = 75
let s:cterm0E = 183
let s:cterm0F = 180

let s:N1   = [ s:gui01, s:gui0B, s:cterm01, s:cterm0B ]
let s:N2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:N3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#base16_chalk#palette.normal = airline#themes#generate_color_map(s:N1, s:N2, s:N3)

let s:I1   = [ s:gui01, s:gui0D, s:cterm01, s:cterm0D ]
let s:I2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:I3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#base16_chalk#palette.insert = airline#themes#generate_color_map(s:I1, s:I2, s:I3)

let s:R1   = [ s:gui01, s:gui08, s:cterm01, s:cterm08 ]
let s:R2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:R3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#base16_chalk#palette.replace = airline#themes#generate_color_map(s:R1, s:R2, s:R3)

let s:V1   = [ s:gui01, s:gui0E, s:cterm01, s:cterm0E ]
let s:V2   = [ s:gui06, s:gui02, s:cterm06, s:cterm02 ]
let s:V3   = [ s:gui09, s:gui01, s:cterm09, s:cterm01 ]
let g:airline#themes#base16_chalk#palette.visual = airline#themes#generate_color_map(s:V1, s:V2, s:V3)

let s:IA1   = [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]
let s:IA2   = [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]
let s:IA3   = [ s:gui05, s:gui01, s:cterm05, s:cterm01 ]
let g:airline#themes#base16_chalk#palette.inactive = airline#themes#generate_color_map(s:IA1, s:IA2, s:IA3)

" Here we define the color map for ctrlp.  We check for the g:loaded_ctrlp
" variable so that related functionality is loaded iff the user is using
" ctrlp. Note that this is optional, and if you do not define ctrlp colors
" they will be chosen automatically from the existing palette.
if !get(g:, 'loaded_ctrlp', 0)
  finish
endif
let g:airline#themes#base16_chalk#palette.ctrlp = airline#extensions#ctrlp#generate_color_map(
      \ [ s:gui07, s:gui02, s:cterm07, s:cterm02, '' ],
      \ [ s:gui07, s:gui04, s:cterm07, s:cterm04, '' ],
      \ [ s:gui05, s:gui01, s:cterm05, s:cterm01, 'bold' ])
