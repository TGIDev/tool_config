
"-------------    SYSTEMVERILOG  SNIPETS --------------------"
if has("win32")
  nnoremap ;svff    :-1read $HOME/vimfiles/snippets/.sv_always_ff.sv<CR>e
  nnoremap ;svcomb  :-1read $HOME/vimfiles/snippets/.sv_always_comb.sv<CR>e
  nnoremap ;svcase  :-1read $HOME/vimfiles/snippets/.sv_case.sv<CR>f(a
  nnoremap ;svnf    :-1read $HOME/vimfiles/snippets/.sv_new_file_sic.sv<CR>14jA
else
  nnoremap ;svff    :-1read $HOME/.vim/snippets/.sv_always_ff.sv<CR>e
  nnoremap ;svcomb  :-1read $HOME/.vim/snippets/.sv_always_comb.sv<CR>e
  nnoremap ;svcase  :-1read $HOME/.vim/snippets/.sv_case.sv<CR>f(a
  nnoremap ;svnf    :-1read $HOME/.vim/snippets/.sv_new_file_sic.sv<CR>14jA
endif
