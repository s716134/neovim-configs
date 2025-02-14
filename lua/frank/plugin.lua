local status, packer = pcall(require, "packer")
if (not status) then
        print("Packer is not installed")
        return
end

vim.cmd [[packadd packer.nvim]]

packer.startup(function(use)
  use 'wbthomason/packer.nvim'                                -- note: (must)plugin package managemant.
  use 'ekalinin/dockerfile.vim'                               -- note: dockerfile syntax.
  use 'preservim/nerdtree'                                    -- note: file system explorer.
  use 'hashivim/vim-terraform'                                -- note: terraform highlighted..etc. 
  use 'Yggdroot/indentLine'                                   -- note: displaying thin vertical lines.
  use 'dense-analysis/ale'                                    -- note: syntax checking and semantic errors.
  use 'godlygeek/tabular'                                     -- note: using Tabularize aligning text.
  use 'vim-airline/vim-airline'                               -- note: status/tabline for vim.
  use 'vim-airline/vim-airline-themes'                        -- note: airline themes.
  use 'akinsho/bufferline.nvim'                               -- note: buffer line.
  use 'kyazdani42/nvim-web-devicons'                          -- note: web devicons.
  use 'ryanoasis/vim-devicons'                                -- note: web devicons.
  use 'projekt0n/circles.nvim'                                -- note: uniform icons for neovim.
  use 'jiangmiao/auto-pairs'                                  -- note: auto pair the symbol. 
  use 'seblj/nvim-tabline'                                    -- note: ai auto complete.
  use {'nvim-treesitter/nvim-treesitter', run = ':TSInstall'} -- note: interface for tree-sitter and some basic functionality. 
  use {'neoclide/coc.nvim', branch = 'release'}               -- note: Make your Vim/Neovim as smart as VSCode.
  use {'fatih/vim-go', run = ':GoInstallBinaries'}            -- note: let go take easily.
  --use 'projekt0n/github-nvim-theme'                           -- note: github theme. 
  use {'nvim-telescope/telescope.nvim', tag = '0.1.0'}        -- note: for find file on vim. 
  use 'nvim-lua/plenary.nvim'                                 -- note: telescope dependency packge.
  use 'github/copilot.vim'                                    -- note: copilot for vim.
end)


-- about vim plugin settings
vim.g.indentline_char_list  = { '|', '¦', '┆', '┊' }
vim.g.coc_global_extensions = {'coc-solargraph'}
vim.g.coc_global_extensions = {'coc-go'}
vim.g.coc_global_extensions = {'coc-java'}
vim.g.go_def_mode = {'gopls'}
vim.g.go_info_mode = {'gopls'}
vim.g.go_doc_popup_window = 1

vim.g.ale_sign_error = '✘'
vim.g.ale_sign_warning = '⚠'
vim.g.ale_lint_on_text_changed = 'never'
vim.g.ale_echo_msg_format = '[%linter%] %s [%severity%]'
vim.g.airline_powerline_fonts = 1
vim.g.airline_theme='ouo'
--vim.g.airline#extensions#tabline#enabled = 1
--vim.g.airline#extensions#tabline#left_sep = ' '
--vim.g.airline#extensions#tabline#left_alt_sep = '|'
--vim.g.airline#extensions#tabline#formatter = 'unique_tail'
--vim.g.airline#extensions#branch#enabled = 1
--vim.g.airline#extensions#ale#enabled = 1
