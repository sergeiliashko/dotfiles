require("lserj")

print("config loaded")
-- Setup russian keymap
--vim.cmd([[set keymap=russian-jcukenmac]])
vim.o.keymap="russian-jcukenmac"

--vim.cmd([[set iminsert=0]])
vim.o.iminsert=0

--vim.cmd([[set imsearch=0]])
vim.o.imsearch=0


-- Test of russian keymap
--set keymap=russian-jcukenmac
--set iminsert=0
--set imsearch=0
--highlight lCursor guifg=NONE guibg=Cyan
--cmap <silent> <F9> <C-^>
--imap <silent> <F9> <C-^><Esc>:call MyKeyMapHighlight()<CR>a
--nmap <silent> <F9> a<C-^><Esc>:call MyKeyMapHighlight()<CR>
--vmap <silent> <F9> <Esc>a<C-^><Esc>:call MyKeyMapHighlight()<CR>gv
--function MyKeyMapHighlight()
--	if &iminsert == 0
--    let &statusline=g:statli . " - EN"
--		" hi StatusLine ctermfg=Blue guifg=Blue
--    else
--      let &statusline=g:statli . " - RU"
--      " hi StatusLine ctermfg=Red guifg=Red
--    endif
--endfunction
--call MyKeyMapHighlight()
--au WinEnter * :call MyKeyMapHighlight()
