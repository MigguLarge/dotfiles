" Colorscheme
colo one
let g:sierra_Twilight = 1
let g:palenight_terminal_italics=1

if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
    colo onedark
else
    colo one
endif

if (g:colors_name == 'dracula')
    highlight Normal guibg=#282828
endif

if (g:colors_name isnot 'dim')
    set termguicolors
endif

if (g:colors_name == 'one')
    set background=light
endif

highlight Comment cterm=italic gui=italic
