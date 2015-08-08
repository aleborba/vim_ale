execute pathogen#infect()
syntax on
filetype on
filetype plugin indent on

set number

set foldmethod=indent
set foldlevel=99

map <leader>td <Plug>TaskList

map <leader>g :GundoToggle<CR>

let g:pep8_map='<leader>8'

au FileType python set omnifunc=pythoncomplete#Complete
let g:SuperTabDefaultCompletionType = "context"

set completeopt=menuone,longest,preview

map <leader>n :NERDTreeToggle<CR>

set laststatus=2
set statusline=%{fugitive#statusline()}

set tabstop=4 shiftwidth=4 expandtab

" Add the virtualenv's site-packages to vim path

py << EOF
import os.path
import sys
import vim
if 'VIRTUAL_ENV' in os.environ:
    project_base_dir = os.environ['VIRTUAL_ENV']
    sys.path.insert(0, project_base_dir)
    activate_this = os.path.join(project_base_dir, 'bin/activate_this.py')
    execfile(activate_this, dict(__file__=activate_this))
EOF
