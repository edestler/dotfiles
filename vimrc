" vim:ft=vim:fdm=marker:fdl=0:fen:
"=============================================================================
" Description: Vimi bundle .vimrc
" Author: Vyacheslav Oliyanchuk <miripiruni@gmail.com>
" URL: http://github.com/miripiruni/vimi/
"=============================================================================

" Vundle setup {{{
    set nocompatible " be iMproved
    filetype off     " required!

    set rtp+=~/.vim/bundle/vundle/
    call vundle#rc()

    " let Vundle manage Vundle
    " required!
    Plugin 'gmarik/vundle'

    " My Bundles here:
    " NOTE: comments after Bundle command are not allowed...
    "
    " IDE
        Plugin 'DfrankUtil'
        Plugin 'vimprj'

    " Interface
        "Plugin 'nanotech/jellybeans.vim'
        Plugin 'altercation/vim-colors-solarized'
        Plugin 'scrooloose/nerdtree'
        Plugin 'fholgado/minibufexpl.vim'
        Plugin 'Yggdroot/indentLine'

        Plugin 'ervandew/supertab'
        Plugin 'vim-scripts/AutoComplPop'

        Plugin 'godlygeek/tabular'
        Plugin 'scrooloose/nerdcommenter'
        Plugin 'tpope/vim-surround'
        Plugin 'tpope/vim-repeat'
        Plugin 'tpope/vim-fugitive'
        "Plugin 'airblade/vim-gitgutter'
        " gitgutter works bad with sshfs
        Plugin 'vim-scripts/bufexplorer.zip'

        Plugin 'edsono/vim-matchit'
        Plugin 'kien/ctrlp.vim'
        Plugin 'bling/vim-airline'
        "Plugin 'jeetsukumaran/vim-markology'
    " Go
        Plugin 'fatih/vim-go'
    " HTML/HAML
        Plugin 'othree/html5.vim'
    " CSS/LESS
        Plugin 'hail2u/vim-css3-syntax'
        Plugin 'groenewege/vim-less'
    " JavaScript
        Plugin 'pangloss/vim-javascript'
        Plugin 'itspriddle/vim-jquery'
    " JSON
        Plugin 'leshill/vim-json'
    " Perl
        Plugin 'vim-perl/vim-perl'
        "Plugin 'perlomni.vim'
    " Xslate
        Plugin 'motemen/xslate-vim'
    " Mojolicious
        Plugin 'yko/mojo.vim'
    " Django
        "Plugin 'django.vim'
    " Snippets
        "Plugin 'UltiSnips'
    " Nginx
        Plugin 'nginx.vim'
    " Zen coding
        Plugin 'rstacruz/sparkup', {'rtp': 'vim/'}
    " Gist
        Plugin 'mattn/webapi-vim'
        Plugin 'mattn/gist-vim'
    " Smart current directory
        Plugin 'dbakker/vim-projectroot'

    filetype plugin indent on     " required!
    " Brief help
    " :BundleList          - list configured bundles
    " :BundleInstall(!)    - install(update) bundles
    " :BundleSearch(!) foo - search(or refresh cache first) for foo
    " :BundleClean(!)      - confirm(or auto-ap prove) removal of unused bundles
    " see :h vundle for more details or wiki for FAQ
" }}}

" Interface {{{
    set ttyfast                      " коннект с терминалом быстрый
    "set nonumber                    " Не показываем нумерацию строк
                                     " Во-первых, номер текущей строки всегда
                                     " есть в statusline, во-вторых, всегда можно
                                     " быстро перейти к нужной строке набрав :1
                                     " где 1 — номер строки.
    set number                       " Все-таки показываем

    set encoding=utf-8               " character encoding used inside Vim.
    set fileencodings=utf-8,cp1251   " Возможные кодировки файлов и последовательность определения
    set wildmode=list:longest,full   " Автодополнение на манер zsh
    set wildmenu                     " Саджест по <tab> в командной строке
                                     " When 'wildmenu' is on, command-line completion operates in an enhanced
                                     " mode.  On pressing 'wildchar' (usually <Tab>) to invoke completion,
                                     " the possible matches are shown just above the command line, with the
                                     " first match highlighted (overwriting the status line, if there is
                                     " one).
    set wildignore+=.hg,.git,.svn    " Version control
    set wildignore+=*.DS_Store       " OSX bullshit
    set wildignore+=*.pyc            " Python byte code
    set title                        " window title
                                     " the title of the window will be set to the value of 'titlestring'
                                     " (if it is not empty), or to: filename [+=-] (path) - VIM
    set showcmd                      " Show (partial) command in the last line of the screen
                                     " Set this option off if your terminal is slow.
                                     " In Visual mode the size of the selected area is shown:
                                     " - When selecting characters within a line, the number of characters.
                                     " If the number of bytes is different it is also displayed:              " 2-6 "
                                     " means two characters and six bytes.
                                     " - When selecting more than one line, the number of lines.
                                     " - When selecting a block, the size in screen characters:
                                     " {lines}x{columns}.
    " set scrolljump=5
    " set scrolloff=3
    " set scrolloff=0                " focus mode like in Writer app http://www.iawriter.com/
    set showtabline=1              " Показывать вкладки табов только когда их больше одной
    set nowrap                     " Выключаем перенос строк (http://vimcasts.org/episodes/soft-wrapping-text/)
    set formatoptions-=o           " dont continue comments when pushing o/O
    set linebreak                  " Перенос не разрывая слов
    set autoindent                 " Копирует отступ от предыдущей строки
    set smartindent                " Включаем 'умную' автоматическую расстановку отступов
    set expandtab
    set smarttab                   " вставляет табуляцию в начале строки размера shiftwidth
    set shiftwidth=4               " Размер сдвига при нажатии на клавиши << и >>
    set tabstop=4                  " Размер табуляции
    set softtabstop=4
    set linespace=1                " do not add some line space for easy reading; airline looks ugly with it
    set nocursorline                 " Подсветка строки, в которой находится в данный момент курсор
    set gcr=n:blinkon0             " Отключаем мигание курсора в MacVim. Больше никакого стресса.
    "set guioptions=                " Вырубаем все лишнее из ГУИ, если надо потогглить см <F6>
    set t_Co=256                   " Кол-во цветов
    "set guicursor=                 " Отключаем мигание курсора
    set splitbelow                 " новый сплит будет ниже текущего :sp
    set splitright                 " новый сплит будет правее текущего :vsp
    set shortmess+=I               " не показывать intro screen
    set mouseshape=s:udsizing,m:no " turn to a sizing arrow over the status lines
    set mousehide                  " Hide the mouse when typing text
    set lcs=tab:\│\ ,trail:\       " Show tabs, trailing spaces
    set list

    if version >= 703
      set cc=120
      highlight ColorColumn ctermbg=52 guibg=#592929
    endif

    if has('gui_running')
        "set gfn=Ubuntu\ Mono\ 14
        "set gfn=Droid\ Sans\ Mono\ for\ Powerline\ 12
        "set gfn=Monaco\ for\ Powerline:h13
        "set gfn=Consolas:h14
        set gfn=PragmataPro\ for\ Powerline:h15
        "set guioptions-=m
        "set guioptions-=T
        "set guioptions-=r
        "set guioptions-=l
        "set guioptions+=c
        set antialias " Обязательно сглаживание шрифитов
        "set mousehide
        "set noguipty
        "set cursorline
        "set guicursor+=a:blinkon0
        "set guiheadroom=0
        "set guitablabel=%N\ %f\ %M
    endif

    set hidden " this allows to edit several files in the same time without having to save them
" }}}

    " Не бибикать! {{{
        set novisualbell
        set t_vb=
    " }}}

    " Use xterm key sequences in tmux {{{
        if &term =~ '^screen'
            " tmux will send xterm-style keys when its xterm-keys option is on
            execute "set <xUp>=\e[1;*A"
            execute "set <xDown>=\e[1;*B"
            execute "set <xRight>=\e[1;*C"
            execute "set <xLeft>=\e[1;*D"
        endif
    " }}}

    " http://www.allaboutvim.ru/2012/03/blog-post.html
        set isfname+=-
        set path+=.,,,
        "set path+=$PATH_BACK/**
        "set path+=$PATH_FRONT/**
        set path+=$PATH_PRJ/**
        set path+=$PATH_PRJ/../CPB/lib/**


    " Символ табуляции и конца строки
        if has('multi_byte')
            if version >= 700
                set listchars=tab:▸\ ,extends:❯,precedes:❮,nbsp:×,trail:\   " dummy comment to calm trailing space check
            else
                set listchars=tab:»\ ,extends:>,precedes:<,nbsp:_,trail:\   " dummy comment to calm trailing space check
            endif
        endif

    " Символ, который будет показан перед перенесенной строкой
        if has("linebreak")
              let &sbr = nr2char(8618).' '  " Show ↪ at the beginning of wrapped lines
        endif


    " Приводим в порядок status line

        function! FileSize()
            let bytes = getfsize(expand("%:p"))
            if bytes <= 0
                return ""
            endif
            if bytes < 1024
                return bytes . "B"
            else
                return (bytes / 1024) . "K"
            endif
        endfunction

        function! CurDir()
            return expand('%:p:~')
        endfunction

    " Статусная строка {{{
        set laststatus=2
    " }}}

    " Создаем меню с кодировками
        menu Encoding.UTF-8 :e ++enc=utf8 <CR>
        menu Encoding.Windows-1251 :e ++enc=cp1251<CR>
        menu Encoding.koi8-r :e ++enc=koi8-r<CR>
        menu Encoding.cp866 :e ++enc=cp866<CR>

    " Проверка орфографии
        if version >= 700
            set spell spelllang=
            set nospell " По умолчанию проверка орфографии выключена
            menu Spell.off :setlocal spell spelllang= <cr>
            menu Spell.Russian+English :setlocal spell spelllang=ru,en <cr>
            menu Spell.Russian :setlocal spell spelllang=ru <cr>
            menu Spell.English :setlocal spell spelllang=en <cr>
            menu Spell.-SpellControl- :
            menu Spell.Word\ Suggest<Tab>z= z=
            menu Spell.Previous\ Wrong\ Word<Tab>[s [s
            menu Spell.Next\ Wrong\ Word<Tab>]s ]s
        endif

    " Фолдинг
        " Всё, что нужно знать для начала:
        " za - скрыть/открыть текущую складку.
        " {zR, zM} - {открыть, скрыть} все складки.

        set foldcolumn=2        " Ширина строки где располагается фолдинг
        set foldmethod=indent   " Фолдинг по отступам
        set foldnestmax=10      " Глубина фолдинга 10 уровней
        set foldenable          " Не^W фолдить по умолчанию
        set foldlevel=10        " This is just what i use

    " Не показывать парную скобку
        "let loaded_matchparen=1 " бред какой-то... перестает прыгать на парную скобку, показывая где она. +100 к скорости
        set noshowmatch          " Не прыгать по парным скобкам <s>Не показывать парные <> в HTML</s>
        "set showmatch           " показываем открывающие и закрывающие скобки

" Search
    set incsearch   " При поиске перескакивать на найденный текст в процессе набора строки
    set hlsearch    " Включаем подсветку выражения, которое ищется в тексте
    set ignorecase  " Игнорировать регистр букв при поиске
    set smartcase   " Override the 'ignorecase' if the search pattern contains upper case characters
    set gdefault    " Включает флаг g в командах замены, типа :%s/a/b/


" Шорткаты
    "let mapleader = "," " мапим <Leader> на запятую. По умолчанию <Leader> это обратный слэш \

    " Переназначение ESC
    inoremap jj <ESC>

    " ,пробел выключает подсветку результатов поиска
    map <leader><space> :noh<CR>
    map <silent> <F7>   :noh<CR>

    " shift-insert как в Xterm
    map <S-Insert> <esc>"+gPi

    " Пробел перелистывает страницы
    " nmap <Space> <PageDown>
    " Нахуй-нахуй!

    " C-c and C-v - Copy/Paste в глобальный клипборд"
    vmap <C-C> "+yi
    imap <C-V> <esc>"+gPi

    map <leader>tt :NERDTreeToggle "'" . expand("%:p:h") ."'" <CR>
    map <leader>bb :BufExplorer<CR>
    map <leader>tu :UltiSnipsEdit<CR>

    " ,m
        " в Normal mode тогглит поддержку мыши
        if has('gui_running')
            set mouse=a
        else
            set mouse=
        endif
        function! ToggleMouse()
          if &mouse == 'a'
            set mouse=
            echo "Mouse usage disabled"
          else
            set mouse=a
            echo "Mouse usage enabled"
          endif
        endfunction
        nnoremap <leader>m :call ToggleMouse()<CR>

    " ,r
        " Поиск и замена во всех открытых буферах http://vim.wikia.com/wiki/VimTip382
        function! Replace()
            let s:word = input("Replace " . expand('<cword>') . " with:")
            :exe 'bufdo! %s/\<' . expand('<cword>') . '\>/' . s:word . '/gce'
            :unlet! s:word
        endfunction
        map <Leader>r :call Replace()<CR>

    " < >
        vnoremap < <gv
        vnoremap > >gv

    " ,p
        " Вставлять код извне без этой строчки проблематично, без нее начитается
        " бешеный реформат кода
        set pastetoggle=<Leader>p

    " ,nm
        " Toggle type of line numbers
        " http://stackoverflow.com/questions/4387210/vim-how-to-map-two-tasks-under-one-shortcut-key
        " vim 7.3 required
        let g:relativenumber = 1
        function! ToogleRelativeNumber()
          if g:relativenumber == 0
            let g:relativenumber = 1
            set norelativenumber
            set number
            echo "Show line numbers"
          elseif g:relativenumber == 1
            let g:relativenumber = 2
            set nonumber
            set relativenumber
            echo "Show relative line numbers"
          else
            let g:relativenumber = 0
            set nonumber
            set norelativenumber
            echo "Show no line numbers"
          endif
        endfunction
        map <Leader>nm :call ToogleRelativeNumber()<cr>
        nnoremap <F4>  :call ToogleRelativeNumber()<CR>
        inoremap <F4>  <Esc>:call ToogleRelativeNumber()<CR>a

    " ,g
        function! ToggleGUINoise()
          if &go==''
            exec('se go=mTrL')
            echo "Show GUI elements"
          else
            exec('se go=')
            echo "Show no GUI elements"
          endif
        endfunction
        map <Leader>g <Esc>:call ToggleGUINoise()<cr>

    " ,f
        " Fast grep
        " грепает в текущей директории по слову, на котором стоит курсор
        map <Leader>f :execute "Ack " . expand("<cword>") <Bar> cw<CR>

    " ,s
        nnoremap <leader>s :%s//<left>
        vnoremap <leader>s :s//<left>

    " Перемещение строк
        " переместить одну строку
        nmap <C-S-k> ddkP
        nmap <C-S-j> ddp
        " переместить несколько выделенных строк http://www.vim.org/scripts/script.php?script_id=1590
        vmap <C-S-k> xkP'[V']
        vmap <C-S-j> xp'[V']

    " Y янкает от курсора и до конца строки. На манер страндартных D и С.
        nnoremap Y y$

    " Переключение по сплитам
        nmap <C-h> <C-W>h
        nmap <C-j> <C-W>j
        nmap <C-k> <C-W>k
        nmap <C-l> <C-W>l

    " ,v
        " Pressing ,v opens the .vimrc in a new tab
        nmap <leader>v :edit $MYVIMRC<CR>

    " n и N
        " когда бегаем по результатам поиска, то пусть они всегда будут в центре
        nmap n nzz
        nmap N Nzz
        nmap * *zz
        nmap # #zz
        nmap g* g*zz
        nmap g# g#zz

    " Don't skip wrap lines
        " Еще раз и попонятнее:
        " если строка n длиная и не влезла в окно — она перенесется на
        " следующую (wrap on). Шокткаты ниже нужны, чтобы попасть
        " на каждую псевдострочку этой врапнутой строки.
        noremap j gj
        noremap k gk

    " gf открывает файл под курсором в вертикальном сплите
        " (по дефолту gf открывает файл в том же буфере)
        nmap gf :vertical wincmd f<CR>

    " Создаем пустой сплит относительно текущего
        nmap <Leader><left>  :leftabove  vnew<CR>
        nmap <Leader><right> :rightbelow vnew<CR>
        nmap <Leader><up>    :leftabove  new<CR>
        nmap <Leader><down>  :rightbelow new<CR>

    " Утащить содержимое индентированной строки, но не захватив с собой
    " начальные и конечные \s
        nnoremap ,yy ^yg_"_dd

    " ,c
        " camelCase => camel_case
        vnoremap <silent> <Leader>c :s/\v\C(([a-z]+)([A-Z]))/\2_\l\3/g<CR>

    " ,ts fix trailing spaces
        function! Preserve(command)
            " Preparation: save last search, and cursor position.
            let _s=@/
            let l = line(".")
            let c = col(".")
            " Do the business:
            execute a:command
            %s/\s\+$//e
            " Clean up: restore previous search history, and cursor position
            let @/=_s
            call cursor(l, c)
        endfunction
        map <silent> <leader>ts :call Preserve("%s/\\s\\+$//e")<CR>

    " ,bl show buffers
        nmap <Leader>bl :ls<cr>:b

    " ,bp prev buffer
        nmap <Leader>bp :bp<cr>

    " ,bn next buffer
        nmap <Leader>bn :bn<cr>

    " ,u Change case to uppercase
        nnoremap <Leader>u gUiw
        inoremap <Leader>u <esc>gUiwea

    " В коммандном режиме разрешить прыгать в конец и начало строки,
    " как в консоли
        cnoremap <c-e> <end>
        imap     <c-e> <c-o>$
        cnoremap <c-a> <home>
        imap     <c-a> <c-o>^

    " ,b
        " In Visual mode exec git blame with selected text
        vmap <Leader>b :<C-U>!git blame <C-R>=expand("%:p") <CR> \| sed -n <C-R>=line("'<") <CR>,<C-R>=line("'>") <CR>p <CR>

    " ,w
        " Jump to next split
        map <Leader>w <C-w>w

    " Ctrl+s
        map <C-s> <esc>:w<CR>
        imap <C-s> <esc>:w<CR>

    " ,n
        " Edit another file in the same directory with the current one
        "map <Leader>n :e <C-R>=expand("%:p:h") . '/'<CR>

    " Bind :Q to :q
        command! Q q

    " {<CR>
        " auto complete {} indent and position the cursor in the middle line
        "inoremap {<CR> {<CR>}<Esc>O
        "inoremap (<CR> (<CR>)<Esc>O
        "inoremap [<CR> [<CR>]<Esc>O
        " Полезные мапы, но, увы, терпеть паузы после ввода каждой скобки нет
        " никаких сил

    " Fold with space
        " nnoremap <Space> za
        " vnoremap <Space> zf

    " Switch tabs with <Tab>
        nmap <Tab> gt
        nmap <S-Tab> gT
        nnoremap <S-Left> gT
        inoremap <S-Left> <Esc>gT
        nnoremap <S-Right> gt
        inoremap <S-Right> <Esc>gt


    " Ремапим русские символы
        " set langmap=ёйцукенгшщзхъфывапролджэячсмитьбюЁЙЦУКЕHГШЩЗХЪФЫВАПРОЛДЖЭЯЧСМИТЬБЮ;`qwertyuiop[]asdfghjkl\\;'zxcvbnm\\,.~QWERTYUIOP{}ASDFGHJKL:\\"ZXCVBNM<>
        map ё `
        map й q
        map ц w
        map у e
        map к r
        map е t
        map н y
        map г u
        map ш i
        map щ o
        map з p
        map х [
        map ъ ]
        map ф a
        map ы s
        map в d
        map а f
        map п g
        map р h
        map о j
        map л k
        map д l
        map ж ;
        map э '
        map я z
        map ч x
        map с c
        map м v
        map и b
        map т n
        map ь m
        map б ,
        map ю .
        map Ё ~
        map Й Q
        map Ц W
        map У E
        map К R
        map Е T
        map Н Y
        map Г U
        map Ш I
        map Щ O
        map З P
        map Х {
        map Ъ }
        map Ф A
        map Ы S
        map В D
        map А F
        map П G
        map Р H
        map О J
        map Л K
        map Д L
        map Ж :
        map Э "
        map Я Z
        map Ч X
        map С C
        map М V
        map И B
        map Т N
        map Ь M
        map Б <
        map Ю >

    " Разное
        nnoremap <F3>  :set expandtab!<CR>
        inoremap <F3>  <Esc>:set expandtab!<CR>a
        nnoremap <F5>  :MBEbp<CR>
        inoremap <F5>  <Esc>:MBEbp<CR>
        nnoremap <S-Up> :MBEbp<CR>
        inoremap <S-Up> <Esc>:MBEbp<CR>
        nnoremap <F8>  :MBEbn<CR>
        inoremap <F8>  <Esc>:MBEbn<CR>
        nnoremap <S-Down> :MBEbn<CR>
        inoremap <S-Down> <Esc>:MBEbn<CR>
        nnoremap <F10> :MBEbd<CR>
        nnoremap <F6>  :MBEbd<CR>
        nnoremap * *N
        vnoremap <silent> * y :execute ":let @/=@\""<CR> :execute "set hlsearch"<CR>

" Abbrs
    abbr ssql $CONFIG->{show_sql}=1;<esc>
    abbr udd use Data::Dumper;<esc>
    abbr lwd log_warn Dumper
    abbr lw  log_warn

" Environment
    set history=1000 " store lots of :cmdline history
    "cmap w!! %!sudo tee > /dev/null % " save file with root permissions"
    " Save file with root permissions
    command! W w
    command! Wsudo exec 'w !sudo tee % > /dev/null' | e!

    " Backspacing settings
        " start     allow backspacing over the start of insert;
        "           CTRL-W and CTRL-U stop once at the start of insert.
        " indent    allow backspacing over autoindent
        " eol       allow backspacing over line breaks (join lines)
        set backspace=indent,eol,start

    " Backup и swp файлы
        set nobackup    " Отключаем создание бэкапов
        set noswapfile  " Отключаем создание swap файлов
        "set backupdir=~/.dotfiles/vimi/bak/,/tmp " Директория для backup файлов
        "set directory=~/.dotfiles/vimi/swp/,/tmp " Директория для swp файлов

    " Загрузка предыдущей сессии
        set viminfo='10,\"100,:20,%,n~/.viminfo
        " Устанавливаем курсор в файле на место, где он был при закрытии этого файла
        au BufReadPost * if line("'\"") > 0|if line("'\"") <= line("$")|exe("norm '\"")|else|exe "norm $"|endif|endif

    " AutoReload .vimrc
        " from http://vimcasts.org/episodes/updating-your-vimrc-file-on-the-fly/
        " Source the vimrc file after saving it
        if has("autocmd")
          autocmd! bufwritepost .vimrc source $MYVIMRC
        endif

    " Auto change the directory to the current file I'm working on
        "autocmd BufEnter * lcd %:p:h
        autocmd BufEnter * ProjectRootCD

" File specific
    au BufRead,BufNewFile *.html if  search('^: ') > 0 || search('<:') > 0 | set filetype=xslate | endif
    au BufRead,BufNewFile *.html if  search('{{') > 0  || search('{%') > 0 | set filetype=htmldjango | endif
    au BufRead,BufNewFile *.tpl  set filetype=tt2html
    au BufRead,BufNewFile *.psgi set filetype=perl
    au BufRead,BufNewFile *.t    set filetype=perl
    au BufRead,BufNewFile *.less set filetype=less


    au BufRead,BufNewFile,BufEnter *  call SetGoFmtHighlight()

    function! SetGoFmtHighlight()
        if (&ft=='go')
            hi SpecialKey guibg=NONE
            setlocal tabstop=8
            setlocal shiftwidth=8
            setlocal noexpandtab
            if has('multi_byte')
                if version >= 700
                    set listchars=tab:┊\ ,extends:❯,precedes:❮,nbsp:×,trail:·
                else
                    set listchars=tab:\|\ ,extends:>,precedes:<,nbsp:_,trail:\   " dummy comment to calm trailing space check
                endif
            endif
        else
            hi SpecialKey guibg=#073642
            if has('multi_byte')
                if version >= 700
                    set listchars=tab:┊\ ,extends:❯,precedes:❮,nbsp:×,trail:\   " dummy comment to calm trailing space check
                else
                    set listchars=tab:\|\ ,extends:>,precedes:<,nbsp:_,trail:\   " dummy comment to calm trailing space check
                endif
            endif
        endif
    endfunction

" Цветовая схема
    syntax enable
    set background=dark
    let g:solarized_termcolors=16
    let g:solarized_termtrans=1
    let g:solarized_degrade=0
    let g:solarized_bold=1
    let g:solarized_underline=1
    let g:solarized_italic=1
    let g:solarized_termcolors=16
    let g:solarized_contrast="normal"
    let g:solarized_visibility="normal"
    let g:solarized_diffmode="normal"
    let g:solarized_hitrail=0
    let g:solarized_menu=1
    colorscheme solarized
    "hi TabLineFill      ctermbg=237
    "hi TabLineSel       ctermbg=230 ctermfg=144
    "hi TabLine          ctermbg=236 ctermfg=144
    "hi IndentGuidesEven ctermbg=darkgrey
    "hi IndentGuidesOdd  ctermbg=black

" Плагины
        try
            call togglebg#map("<Leader>b")
        catch /^Vim\%((\a\+)\)\=:E117/
            " :(
        endtry

    " MiniBufExplorer
        let g:miniBufExplBRSplit = 1    " список буферов справа
        let g:miniBufExplVSplit = 1
        let g:miniBufExplMaxHeight = 45
        let g:miniBufExplMaxSize = 0

    " NERDTree
        let NERDTreeShowBookmarks=1
        let NERDTreeChDirMode=2
        let NERDTreeQuitOnOpen=1
        let NERDTreeShowHidden=0
        let NERDTreeKeepTreeInNewTab=0
        let NERDTreeMinimalUI=1 " Disables display of the 'Bookmarks' label and 'Press ? for help' text.
        let NERDTreeDirArrows=1 " Tells the NERD tree to use arrows instead of + ~ chars when displaying directories.
        let NERDTreeBookmarksFile= $HOME . '/.vim/.NERDTreeBookmarks'
        let NERDTreeWinSize=60

    " autocomplpop.vim {{{
        "let g:acp_behaviorPerlOmniLength = 2         " ипользовать perlomni.vim
        let g:acp_enableAtStartup        = 1         " включить при старте системы
        let g:acp_mappingDriven          = 0         " если 1 то будет включаться по хоткею
        let g:acp_ignorecaseOption       = 1         " игнорировать регистр
        let g:acp_completeOption         = '.,w,b,k' " опции дополнения (completeopt)
        let g:acp_completeoptPreview     = 0         " показывать превью дополнения
        let g:acp_behaviorKeywordCommand = "\<C-n>"  " комманда для автодополнения
        let g:acp_behaviorKeywordLength  = 2         " количество символов для начала дополнения
        let g:acp_behaviorKeywordIgnores = []        " не дополнять эти слова
    " }}}

    " tabularize {{{
        if exists(":Tabularize")
            nmap <Leader>a= :Tabularize /=<CR>
            vmap <Leader>a= :Tabularize /=<CR>
            nmap <Leader>a: :Tabularize /:\zs<CR>
            vmap <Leader>a: :Tabularize /:\zs<CR>
        endif
    " }}}

    " NERDCommenter {{{
        let g:NERDCustomDelimiters = {
            \ 'tt2html': { 'left': '#' }
        \ }
    " }}}

    " UltiSnips {{{
        let g:UltiSnipsUsePythonVersion    = 2
        let g:UltiSnipsExpandTrigger       = '<c-j>'
        let g:UltiSnipsListSnippets        = '<c-tab>'
        let g:UltiSnipsJumpForwardTrigger  = '<c-j>'
        let g:UltiSnipsJumpBackwardTrigger = '<c-k>'
        let g:UltiSnipsSnippetsDir         = $HOME . '/.vim/bundle/UltiSnips/UltiSnips/'
        let g:UltiSnipsEditSplit           = 'vertical'

    " }}}
    " Supertab {{{
        let g:SuperTabMappingForward  = '<c-j>'
        let g:SuperTabMappingBackward = '<c-k>'
    " }}}
    " Airline {{{
        let g:airline_theme='solarized'
        let g:airline_powerline_fonts = 1
        let g:airline_section_b='%{getcwd()}'
        let g:airline#extensions#whitespace#checks = [ 'trailing' ]
        let g:airline#extensions#ctrlp#color_template = 'normal'
        let g:airline#extensions#ctrlp#show_adjacent_modes = 1
        "let g:airline_left_sep=''
        "let g:airline_right_sep=''
    " }}}
    " IndentLine {{{
        let g:indentLine_color_term = 11
        let g:indentLine_char = '│'
    " }}}
