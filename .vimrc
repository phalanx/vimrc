"Colour settings
if &term =~ 'xterm-256color' || &term =~ 'screen-256color' || &term =~ 'xterm'
    set t_Co=256
    set t_Sf=[3%p1%dm
	set t_Sb=[4%p1%dm
	color desert
endif
if exists('+colorcolumn')
  set colorcolumn=81                    " Highlight column 81
endif

set nocompatible                      " Turn off vi compatibility
set ruler                             "Show cursor position at bottom
set number                            "Enable Line numbers
set encoding=utf-8
set fileencoding=utf-8
syntax on                             "Turn on syntax Highlighting
set history=200                       "Save up to 200 commands executed
set showmatch                         "Show matching parens/brackets
set showcmd                           "Show commands as you type them
set scrolloff=3                       "scroll offset of 3
set nowrap                            "Don't wrap text lines

"Enable filetype detection:
filetype on
filetype plugin on
filetype indent on

" Change the background color the hightlight menu from ugly pink to nice blue:
:highlight Pmenu ctermbg=DarkBlue ctermfg=white gui=bold
:highlight PmenuSel ctermbg=LightBlue ctermfg=red gui=bold

" Highlight trailing whitespace with a red background:
highlight ExtraWhitespace ctermbg=red guibg=red
match ExtraWhitespace /\s\+$/
autocmd BufWinEnter * match ExtraWhitespace /\s\+$/
autocmd InsertEnter * match ExtraWhitespace /\s\+\%#\@<!$/ " This will not match trailing whitespace when typing on a line
autocmd InsertLeave * match ExtraWhitespace /\s\+$/
autocmd BufWinLeave * call clearmatches()

" Spacing and Tabbing
set tabstop=2
set shiftwidth=2
set autoindent
set smarttab
set expandtab                  " USe spaces instead of tabs
set backspace=indent,eol,start " Make backspace reasonable
