augroup filetypedetect
    " (Plain file, Interface, Header, Assertion) x (Protected?)
    autocmd BufNewFile,BufRead *.sv          setf systemverilog
    autocmd BufNewFile,BufRead *.svi         setf systemverilog
    autocmd BufNewFile,BufRead *.svh         setf systemverilog
    autocmd BufNewFile,BufRead *.sva         setf systemverilog
    autocmd BufNewFile,BufRead *.svp         setf systemverilog
    autocmd BufNewFile,BufRead *.svip        setf systemverilog
    autocmd BufNewFile,BufRead *.svhp        setf systemverilog
    autocmd BufNewFile,BufRead *.svap        setf systemverilog
    " Although Vera also has package files, but we focus on SystemVerilog now.
    autocmd BufNewFile,BufRead *.pkg         setf systemverilog
augroup END

