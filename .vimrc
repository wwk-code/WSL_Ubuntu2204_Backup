
"plug插件管理器
call plug#begin('~/.vim/plugged')

"底部状态栏美化
Plug 'vim-airline/vim-airline'
Plug 'preservim/nerdtree'
Plug 'neoclide/coc.nvim', {'branch': 'release'}

call plug#end()


" 设置在vim中进行文本查找时进行全字匹配查找


"设置文件编码
set encoding=utf-8
set fileencodings=utf-8
set termencoding=utf-8

"设定leader键
let mapleader=','

let g:solarized_termcolors=256
"设置主题
"syntax on
"set background=dark
"colorscheme onehalfdark
"常用主题onedark,xcodelight,xcodedark,xcodewwdc
"gotham,gotham256,solarized

set cursorline
"设置保持历史记录10000
set history=10000

"打开文件时禁止折叠
set nofoldenable
"按照语法高亮进行折叠
set fdm=indent

set display=lastline
" scrolloff控制光标上下的边距为多少时翻页，emmm，说的有点抽象，改改这个数字就很清楚了
set scrolloff=5
set matchtime=2
set matchpairs+=<:>
" 显示行号可以通过在命令行中设置:set nonumber关闭行号。要想永久关闭或者开启就要在vimrc中设置了
set number
set showcmd
set showmatch

" 设置文件不备份，这里被注释掉；
set nobackup
set noundofile
set noswapfile
"set backupext=.bak
"set backupdir=~/.vim/vim_bak/

"语法高亮
set syntax=on
" 去掉输入错误的提示声音
set noeb
" 在处理未保存或只读文件的时候，弹出确认
set confirm
" 自动缩进
set autoindent
set cindent

" 设置tab为四个空格空格代替Tab。空格比起制表符拥有更好的兼容性
" 注意: 插入模式下输入【ctrl+v+i】可以强制输入一个tab
" 针对已经存在的制表符，可以通过:%retab将制表符替换成四个空格
set tabstop=4     " tabstop 表示一个 tab 显示出来是多少个空格的长度，默认8
set softtabstop=4 " softtabstop 表示在编辑模式的时候按退格键的时候退回缩进的长度，当使用 expandtab 时特别有用
set expandtab     " 当设置成 expandtab 时，缩进用空格来表示，noexpandtab 则是用制表符表示一个缩进
set autoindent    " 自动缩进
set cindent       " 自动缩进补充
set shiftwidth=4  " 自动缩进空白字符个数
" 行尾部的空格会显示红色
" highlight WhitespaceEOL ctermbg=red guibg=red
" match WhitespaceEOL /\s\+$/

" 显示行号
set number
" 历史记录数
set history=1000
"禁止生成临时文件
set nobackup
set noswapfile
"搜索忽略大小写
set ignorecase

set incsearch

set autoread
set autowrite

" 鼠标定位
" 鼠标定位和鼠标拷贝似乎不能共存，按住shift再使用鼠标拷贝
set mouse=a

" 设置光标的形态
" 普通模式下为光标方块，插入模式下为竖线
let &t_SI.="\e[6 q" "SI = INSERT mode
let &t_SR.="\e[4 q" "SR = REPLACE mode
let &t_EI.="\e[1 q" "EI = NORMAL mode (ELSE)

" 设置光标颜色
highlight Cursor guifg=white guibg=white
highlight iCursor guifg=white guibg=white
set guicursor=n-v-c:block-Cursor
set guicursor+=i:ver100-iCursor
set guicursor+=n-v-c:blinkon0
set guicursor+=i:blinkwait10


" 支持在Visual模式下，通过C-y复制到系统剪切板
 vnoremap <C-y> "+y
" 支持在normal模式下，通过C-p粘贴系统剪切板
 nnoremap <C-p> "*p


" 垂直分割线颜色
" 就是分页的时候的那条分割线
hi VertSplit guibg=#31312D guifg=#526A83 ctermfg=White ctermbg=Black term=none cterm=none gui=none



" 设    下·置tag跳转快捷键
 nnoremap <leader>] g<C-]>



"
" "=================================================================
" " cscope
" " cscope -Rbq，生成cscope数据库，使用方式类似ctags
" " cscope find c name，查找调用该函数的函数
" " set quickfix，把信息打到quickfix里面，不过还是全屏好用
" " set cscopequickfix=s-,c-,d-,i-,t-,e-
"
" " use both cscope and ctag for 'ctrl-]', ':ta', and 'vim -t'
" " set cscopetag
"
" " check cscope for definition of a symbol before checking ctags: set to 1
" " if you want the reverse search order.
 set csto=0
"
" " add any cscope database in current directory
 if filereadable("cscope.out")
         cs add cscope.out
"         " else add the database pointed to by environment variable
         elseif $CSCOPE_DB != ""
            cs add $CSCOPE_DB
    endif

    " show msg when any other cscope db added
     set cscopeverbose
    "
    " " 设置输出文件信息长度，文件路径深度最高为五
     :set cspc=5
    "
    " " 设置输出信息的颜色，这里还需要改进，颜色设置不够显眼
     :hi ModeMsg ctermfg=Blue




set tags+=./tags

set tags+=/software/llvm/lbd/lbdex/chapters/Chapter12_1/tags

# cppLearnTags
set tags+=/software/cppLearnDir/tags

set tags+=/software/llvm/lbd/lbdex/tags
set tags+=/software/llvm/LLVM/llvm-project/tags
set tags+=/software/llvm/lbd/tags
set tags+=/usr/include/c++/11/tags



" 这将设置 Vim 使用系统剪贴板来进行复制和粘贴操作
set clipboard=unnamedplus





# filetype plugin indent on

"""""""""""""""     NERDTree配置

" tart NERDTree and leave the cursor in it.
autocmd VimEnter * NERDTree
autocmd BufEnter * if tabpagenr('$') == 1 && winnr('$') == 1 && exists('b:NERDTree') && b:NERDTree.isTabTree() | quit | endif

" 设置NERDTree的边框宽度为1
let g:NERDTreeWinSize = 15

" 将 `Ctrl+t` 映射为打开/关闭 NERD Tree 窗口
nmap <C-t> :NERDTreeToggle<CR>
" 将 `<Shift+q>` 映射为切换焦点到 NERD Tree 窗口
nmap <S-q> :NERDTreeFocus<CR>
" 将 `<Shift+e>` 映射为切换焦点回到当前编辑窗口
nmap <S-e> :wincmd w<CR>


"""""""""""""""     NERDTree配置





""""""""""""""""""" Example Vim configuration

" May need for Vim (not Neovim) since coc.nvim calculates byte offset by count
" utf-8 byte sequence
set encoding=utf-8
" Some servers have issues with backup files, see #649
set nobackup
set nowritebackup

" Having longer updatetime (default is 4000 ms = 4s) leads to noticeable
" delays and poor user experience
set updatetime=300

" Always show the signcolumn, otherwise it would shift the text each time
" diagnostics appear/become resolved
set signcolumn=yes

" Use tab for trigger completion with characters ahead and navigate
" NOTE: There's always complete item selected by default, you may want to enable
" no select by `"suggest.noselect": true` in your configuration file
" NOTE: Use command ':verbose imap <tab>' to make sure tab is not mapped by
" other plugin before putting this into your config
inoremap <silent><expr> <TAB>
      \ coc#pum#visible() ? coc#pum#next(1) :
      \ CheckBackspace() ? "\<Tab>" :
      \ coc#refresh()
inoremap <expr><S-TAB> coc#pum#visible() ? coc#pum#prev(1) : "\<C-h>"

" Make <CR> to accept selected completion item or notify coc.nvim to format
" <C-g>u breaks current undo, please make your own choice
inoremap <silent><expr> <CR> coc#pum#visible() ? coc#pum#confirm()
                              \: "\<C-g>u\<CR>\<c-r>=coc#on_enter()\<CR>"

function! CheckBackspace() abort
  let col = col('.') - 1
  return !col || getline('.')[col - 1]  =~# '\s'
endfunction

" Use <c-space> to trigger completion
if has('nvim')
  inoremap <silent><expr> <c-space> coc#refresh()
else
  inoremap <silent><expr> <c-@> coc#refresh()
endif

" Use `[g` and `]g` to navigate diagnostics
" Use `:CocDiagnostics` to get all diagnostics of current buffer in location list
nmap <silent> [g <Plug>(coc-diagnostic-prev)
nmap <silent> ]g <Plug>(coc-diagnostic-next)

" GoTo code navigation
nmap <silent> gd <Plug>(coc-definition)
nmap <silent> gy <Plug>(coc-type-definition)
nmap <silent> gi <Plug>(coc-implementation)
nmap <silent> gr <Plug>(coc-references)

" Use K to show documentation in preview window
nnoremap <silent> K :call ShowDocumentation()<CR>

function! ShowDocumentation()
  if CocAction('hasProvider', 'hover')
    call CocActionAsync('doHover')
  else
    call feedkeys('K', 'in')
  endif
endfunction

" Highlight the symbol and its references when holding the cursor
autocmd CursorHold * silent call CocActionAsync('highlight')

" Symbol renaming
nmap <leader>rn <Plug>(coc-rename)

" Formatting selected code
xmap <leader>f  <Plug>(coc-format-selected)
nmap <leader>f  <Plug>(coc-format-selected)

augroup mygroup
  autocmd!
  " Setup formatexpr specified filetype(s)
  autocmd FileType typescript,json setl formatexpr=CocAction('formatSelected')
  " Update signature help on jump placeholder
  autocmd User CocJumpPlaceholder call CocActionAsync('showSignatureHelp')
augroup end

" Applying code actions to the selected code block
" Example: `<leader>aap` for current paragraph
xmap <leader>a  <Plug>(coc-codeaction-selected)
nmap <leader>a  <Plug>(coc-codeaction-selected)

" Remap keys for applying code actions at the cursor position
nmap <leader>ac  <Plug>(coc-codeaction-cursor)
" Remap keys for apply code actions affect whole buffer
nmap <leader>as  <Plug>(coc-codeaction-source)
" Apply the most preferred quickfix action to fix diagnostic on the current line
nmap <leader>qf  <Plug>(coc-fix-current)

" Remap keys for applying refactor code actions
nmap <silent> <leader>re <Plug>(coc-codeaction-refactor)
xmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)
nmap <silent> <leader>r  <Plug>(coc-codeaction-refactor-selected)

" Run the Code Lens action on the current line
nmap <leader>cl  <Plug>(coc-codelens-action)

" Map function and class text objects
" NOTE: Requires 'textDocument.documentSymbol' support from the language server
xmap if <Plug>(coc-funcobj-i)
omap if <Plug>(coc-funcobj-i)
xmap af <Plug>(coc-funcobj-a)
omap af <Plug>(coc-funcobj-a)
xmap ic <Plug>(coc-classobj-i)
omap ic <Plug>(coc-classobj-i)
xmap ac <Plug>(coc-classobj-a)
omap ac <Plug>(coc-classobj-a)

" Remap <C-f> and <C-b> to scroll float windows/popups
if has('nvim-0.4.0') || has('patch-8.2.0750')
  nnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  nnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
  inoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(1)\<cr>" : "\<Right>"
  inoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? "\<c-r>=coc#float#scroll(0)\<cr>" : "\<Left>"
  vnoremap <silent><nowait><expr> <C-f> coc#float#has_scroll() ? coc#float#scroll(1) : "\<C-f>"
  vnoremap <silent><nowait><expr> <C-b> coc#float#has_scroll() ? coc#float#scroll(0) : "\<C-b>"
endif

" Use CTRL-S for selections ranges
" Requires 'textDocument/selectionRange' support of language server
nmap <silent> <C-s> <Plug>(coc-range-select)
xmap <silent> <C-s> <Plug>(coc-range-select)

" Add `:Format` command to format current buffer
command! -nargs=0 Format :call CocActionAsync('format')

" Add `:Fold` command to fold current buffer
command! -nargs=? Fold :call     CocAction('fold', <f-args>)

" Add `:OR` command for organize imports of the current buffer
command! -nargs=0 OR   :call     CocActionAsync('runCommand', 'editor.action.organizeImport')

" Add (Neo)Vim's native statusline support
" NOTE: Please see `:h coc-status` for integrations with external plugins that
" provide custom statusline: lightline.vim, vim-airline
set statusline^=%{coc#status()}%{get(b:,'coc_current_function','')}

" Mappings for CoCList
" Show all diagnostics
nnoremap <silent><nowait> <space>a  :<C-u>CocList diagnostics<cr>
" Manage extensions
nnoremap <silent><nowait> <space>e  :<C-u>CocList extensions<cr>
" Show commands
nnoremap <silent><nowait> <space>c  :<C-u>CocList commands<cr>
" Find symbol of current document
nnoremap <silent><nowait> <space>o  :<C-u>CocList outline<cr>
" Search workspace symbols
nnoremap <silent><nowait> <space>s  :<C-u>CocList -I symbols<cr>
" Do default action for next item
nnoremap <silent><nowait> <space>j  :<C-u>CocNext<CR>
" Do default action for previous item
nnoremap <silent><nowait> <space>k  :<C-u>CocPrev<CR>
" Resume latest coc list
nnoremap <silent><nowait> <space>p  :<C-u>CocListResume<CR>


" 代码定义跳转
nmap <S-D> <Plug>(coc-definition)

"鼠标跳回到上一个指针处理
nmap <S-Left> <C-o>   
"鼠标跳回到下一个指针处理
nmap <S-Right> <C-i>   

"""""""""""""""""""""""  End of Example Vim configuration



" 切换vim中多个窗口的快捷键映射
" nnoremap <YourKeyForNextWindow> <C-w>
nnoremap <C-w> <C-w>w

" 以下两行配置代码设置vim底部状态栏显示文件的名字时附带当前文件的绝对路径
set statusline=%F
let g:airline_section_c = '%F'



