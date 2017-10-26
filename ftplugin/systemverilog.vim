" Vim filetype plugin file
" Language:    SystemVerilog
" Maintainer:  Sung-Yu Chen <sychen@gmail.com>
" Last Change: Fri Oct 20 18:05:03 CST 2017

" Based on: (in Last Change order)
" Verilog, by Chih-Tsun Huang <cthuang@larc.ee.nthu.edu.tw>, on September 3rd, 2008
" SystemVerilog, by WeiChung Wu <exelion04 at gmail dot com>, on January 13th, 2011
" SystemVerilog, by kocha <kocha.lsifrontend@gmail.com>, on August 12th, 2013

if exists("b:did_ftplugin")
  finish
else
  let b:did_ftplugin = 1
endif

let b:undo_ftplugin = "setlocal fo< com< tw<"
    \ . "| unlet! b:browsefilter b:match_ignorecase b:match_words"

setlocal formatoptions-=t " Auto-wrap text using textwidth
setlocal formatoptions+=c " Auto-wrap comments using textwidth, inserting the current comment
                          " leader automatically.
setlocal formatoptions+=r " Automatically insert the current comment leader after hitting
                          " <Enter> in Insert mode.
setlocal formatoptions+=o " Automatically insert the current comment leader after hitting 'o' or
                          " 'O' in Normal mode.
setlocal formatoptions+=q " Allow formatting of comments with "gq".
setlocal formatoptions+=l " Long lines are not broken in insert mode:
                          " When a line was longer than 'textwidth'
                          " when the insert command started,
                          " Vim does not automatically format it.
setlocal formatoptions+=m " Also break at a multi-byte character above 255.
setlocal formatoptions+=1 " Don't break a line after a one-letter word.
                          " It's broken before it instead (if possible).

" Set 'comments' to format dashed lists in comments.
setlocal comments=sO:*\ -,mO:*\ \ ,exO:*/,s1:/*,mb:*,ex:*/,://

if exists("loaded_matchit")
  let b:match_ignorecase=0
  let b:match_words=
    \ '\<begin\>:\<end\>,' .
    \ '\<if\>:\<else\>,' .
    \ '`if\%[n]def\>:`els\%(if\|e\)\>:`endif\>,' .
    \ '\<case\%[xz]\>\|\<randcase\>:\<endcase\>,' .
    \ '\%(disable\s\+\)\@<!\<fork\>:\<\%(join_none\|join_any\|join\)\>,' .
    \ '\<checker\>:\<endchecker\>,' .
    \ '\<class\>:\<endclass\>,' .
    \ '\<clocking\>:\<endclocking\>,' .
    \ '\<covergroup\>:\<endgroup\>,' .
    \ '\<function\>:\<return\>:\<endfunction\>,' .
    \ '\<generate\>:\<endgenerate\>,' .
    \ '\<interface\>:\<endinterface\>,' .
    \ '\<module\>:\<endmodule\>,' .
    \ '\<package\>:\<endpackage\>,' .
    \ '\<primitive\>:\<endprimitive\>,' .
    \ '\<program\>:\<endprogram\>,' .
    \ '\<property\>:\<endproperty\>,' .
    \ '\<randsequence\>:\<endsequence\>,' .
    \ '\<sequence\>:\<endsequence\>,' .
    \ '\<specify\>:\<endspecify\>,' .
    \ '\<table\>:\<endtable\>,' .
    \ '\<task\>:\<endtask\>,' .
    \ '`uvm_object\%(_param\)\=_utils_begin\>:`uvm_object_utils_end\>,' .
    \ '`uvm_component\%(_param\)\=_utils_begin\>:`uvm_component_utils_end\>'
endif
