call plug#begin()
Plug 'neovim/nvim-lspconfig'
call plug#end()

nnoremap <Space>f :lua vim.lsp.buf.formatting()<CR>
nnoremap <Space>r :lua vim.lsp.buf.rename()<CR>

set expandtab
set shiftwidth=4
set softtabstop=4

lua << EOF
require('lspconfig').clangd.setup{}
require('lspconfig').dartls.setup{}
require('lspconfig').rust_analyzer.setup{}
EOF
