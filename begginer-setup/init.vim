source ~/AppData/Local/nvim/settings.vim
source ~/AppData/Local/nvim/vim-plug/plugins.vim

luafile ~/AppData/Local/nvim/lua/plugins/compe-config.lua
source ~/AppData/Local/nvim/plug-config/lsp-config.vim

luafile ~/AppData/Local/nvim/lua/lsp/go-lsp.lua

let g:loaded_python3_provider = 0
