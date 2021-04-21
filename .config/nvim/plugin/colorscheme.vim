" Colorscheme
colo dim

if system("defaults read -g AppleInterfaceStyle") =~ '^Dark'
    colo dracula
else
    colo dim
endif

if (g:colors_name isnot 'dim')
    set termguicolors
endif
