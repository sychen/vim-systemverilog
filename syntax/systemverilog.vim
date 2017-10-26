" Vim Syntax File for SystemVerilog
" Language:     SystemVerilog
" Maintainer:   Sung-Yu Chen <sychen@realtek.com>
" Last Update:  Fri Oct 20 18:05:31 CST 2017
" Requires:     Vim 7.0 or later

" Quit when a syntax file was already loaded
if exists("b:current_syntax")
    finish
endif

" Read in Verilog syntax files
" runtime! syntax/verilog.vim
" unlet b:current_syntax

" TODO: any modification?
" setlocal iskeyword=@,48-57,_,192-255

" =====================
" Elements
" =====================

" Comment
syntax region   systemverilogComment    start="/\*" end="\*/" contains=systemverilogTodo,@Spell
syntax match    systemverilogComment    "//.*$" contains=systemverilogTodo,@Spell
syntax keyword  systemverilogTodo       contained TODO

" Constant
syntax match    systemverilogConstant   "\<[A-Z][A-Z0-9_]*\>"
syntax keyword  systemverilogConstant   null
syntax keyword  systemverilogConstant   highz1 highz0

syntax keyword  systemverilogConstant   supply0 strong0 pull0 weak0
syntax keyword  systemverilogConstant   supply1 strong1 pull1 weak1
" String
" syntax match   systemverilogString     "\"[^\"]*\""
syntax region  systemverilogString start=+"+ skip=+\\"+ end=+"+ contains=systemverilogEscape,@Spell
syntax match   systemverilogEscape +\\[nt"\\]+ contained
syntax match   systemverilogEscape "\\\o\o\=\o\=" contained

" Number
syntax match   systemverilogNumber "\<[0-9_]\+\([munpf]\|\)s\>"
syntax match   systemverilogNumber "\<[0-9_]\+step\>"

syntax match   systemverilogNumber "\(\<\d\+\|\)'[bB]\s*[0-1_xXzZ?]\+\>"
syntax match   systemverilogNumber "\(\<\d\+\|\)'[oO]\s*[0-7_xXzZ?]\+\>"
syntax match   systemverilogNumber "\(\<\d\+\|\)'[dD]\s*[0-9_xXzZ?]\+\>"
syntax match   systemverilogNumber "\(\<\d\+\|\)'[hH]\s*[0-9a-fA-F_xXzZ?]\+\>"
syntax match   systemverilogFloat  "\<[+-]\=[0-9_]\+\(\.[0-9_]*\|\)\(e[0-9_]*\|\)\>"

" Identifier
syntax keyword     systemverilogIdentifier         super this
syntax keyword     systemverilogIdentifier         option type_option
syntax match       systemverilogSystemTask         "\$root"
syntax match       systemverilogSystemTask         "\$unit"

" Function
" @object
syntax keyword systemverilogFunction randomize srandom
" @coverage
syntax keyword systemverilogFunction sample
" @process
syntax match   systemverilogFunction "\(process::\)\@<=self"

" @system tasks
syntax match       systemverilogSystemTask         "\$sformatf\>"
syntax match       systemverilogSystemTask         "\$sformat\>"
syntax match       systemverilogSystemTask         "\$swrite\>"
syntax match       systemverilogSystemTask         "\$bits"
syntax match       systemverilogSystemTask         "\$cast"
syntax match       systemverilogSystemTask         "\$urandom"
syntax match       systemverilogSystemTask         "\$isunknown"
syntax match       systemverilogSystemTask         "\$realtime"
syntax match       systemverilogSystemTask         "\$f\(display\|open\|close\)"
syntax match       systemverilogSystemTask         "\$time"

" assertion
syntax match       systemverilogSystemTask         "\$fatal"
syntax match       systemverilogSystemTask         "\$error"
syntax match       systemverilogSystemTask         "\$warning"
syntax match       systemverilogSystemTask         "\$info"

" timing check
syntax match       systemverilogSystemTask         "\$setup"
syntax match       systemverilogSystemTask         "\$hold"
syntax match       systemverilogSystemTask         "\$setuphold"
syntax match       systemverilogSystemTask         "\$recovery"
syntax match       systemverilogSystemTask         "\$removal"
syntax match       systemverilogSystemTask         "\$recrem"
syntax match       systemverilogSystemTask         "\$skew"
syntax match       systemverilogSystemTask         "\$timeskew"
syntax match       systemverilogSystemTask         "\$fullskew"
syntax match       systemverilogSystemTask         "\$period"
syntax match       systemverilogSystemTask         "\$width"
syntax match       systemverilogSystemTask         "\$nochange"

" We leave general system tasks not highlighted,
" so users can find typos if the highlight is not there
" syntax match systemverilogSystemTask "$[a-zA-Z0-9_]\+\>"

" @string
syntax match   systemverilogFunction "\(\.\)\@<=\(len\|puts\|getc\)"
syntax match   systemverilogFunction "\(\.\)\@<=\(toupper\|tolower\)"
syntax match   systemverilogFunction "\(\.\)\@<=\(compare\|icompare\|substr\)"
syntax match   systemverilogFunction "\(\.\)\@<=\(atoi\|atohex\|atooct\|atobin\|atoreal\)"
syntax match   systemverilogFunction "\(\.\)\@<=\(itoa\|hextoa\|octtoa\|bintoa\|realtoa\)"

" @enumeration
syntax match   systemverilogFunction "\(\.\)\@<=\(first\|last\|next\|prev\|num\|name\)"

" @aggregation data types
syntax match   systemverilogFunction "\(\.\)\@<=\(size\|delete\|exists\|insert\)"
syntax match   systemverilogFunction "\(\.\)\@<=\(pop\|push\)_\(front\|back\)"
syntax match   systemverilogFunction "\(\.\)\@<=find\(_first\|_last\)\?\(_index\)\?\>"

syntax match  systemverilogFunction  "\(\.\)\@<=index\>"
syntax match  systemverilogFunction  "\(\.\)\@<=min\>"
syntax match  systemverilogFunction  "\(\.\)\@<=max\>"
syntax match  systemverilogFunction  "\(\.\)\@<=unique\>"
syntax match  systemverilogFunction  "\(\.\)\@<=unique_index\>"
syntax match  systemverilogFunction  "\(\.\)\@<=sort\>"
syntax match  systemverilogFunction  "\(\.\)\@<=rsort\>"
syntax match  systemverilogFunction  "\(\.\)\@<=shuffle\>"
syntax match  systemverilogFunction  "\(\.\)\@<=reverse\>"
syntax match  systemverilogFunction  "\(\.\)\@<=sum\>"
syntax match  systemverilogFunction  "\(\.\)\@<=product\>"
syntax match  systemverilogFunction  "\(\.\)\@<=xor\>"
syntax match  systemverilogFunction  "\(\.\)\@<=status\>"
syntax match  systemverilogFunction  "\(\.\)\@<=kill\>"
syntax match  systemverilogFunction  "\(\.\)\@<=self\>"
syntax match  systemverilogFunction  "\(\.\)\@<=await\>"
syntax match  systemverilogFunction  "\(\.\)\@<=suspend\>"
syntax match  systemverilogFunction  "\(\.\)\@<=resume\>"
syntax match  systemverilogFunction  "\(\.\)\@<=get\>"
syntax match  systemverilogFunction  "\(\.\)\@<=put\>"
syntax match  systemverilogFunction  "\(\.\)\@<=peek\>"
syntax match  systemverilogFunction  "\(\.\)\@<=try_get\>"
syntax match  systemverilogFunction  "\(\.\)\@<=try_peek\>"
syntax match  systemverilogFunction  "\(\.\)\@<=try_put\>"
syntax match  systemverilogFunction  "\(\.\)\@<=data\>"
syntax match  systemverilogFunction  "\(\.\)\@<=eq\>"
syntax match  systemverilogFunction  "\(\.\)\@<=neq\>"
syntax match  systemverilogFunction  "\(\.\)\@<=new\>"
syntax match  systemverilogFunction  "\(\.\)\@<=empty\>"
syntax match  systemverilogFunction  "\(\.\)\@<=front\>"
syntax match  systemverilogFunction  "\(\.\)\@<=back\>"
syntax match  systemverilogFunction  "\(\.\)\@<=insert\>"
syntax match  systemverilogFunction  "\(\.\)\@<=insert_range\>"
syntax match  systemverilogFunction  "\(\.\)\@<=erase\>"
syntax match  systemverilogFunction  "\(\.\)\@<=erase_range\>"
syntax match  systemverilogFunction  "\(\.\)\@<=set\>"
syntax match  systemverilogFunction  "\(\.\)\@<=swap\>"
syntax match  systemverilogFunction  "\(\.\)\@<=clear\>"
syntax match  systemverilogFunction  "\(\.\)\@<=purge\>"
syntax match  systemverilogFunction  "\(\.\)\@<=start\>"
syntax match  systemverilogFunction  "\(\.\)\@<=finish\>"

" Statement
syntax keyword systemverilogStatement fork join disable join_any join_none forkjoin
syntax keyword systemverilogStatement initial final
syntax keyword systemverilogStatement always always_comb always_ff always_latch
syntax keyword systemverilogStatement wait wait_order
syntax keyword systemverilogStatement case casex casez endcase
syntax keyword systemverilogStatement return break continue
syntax keyword systemverilogStatement with inside dist
syntax keyword systemverilogStatement import export
syntax keyword systemverilogStatement posedge negedge edge

syntax keyword systemverilogStatement checker endchecker
syntax keyword systemverilogStatement class endclass
syntax keyword systemverilogStatement clocking endclocking global
syntax keyword systemverilogStatement config endconfig
syntax keyword systemverilogStatement function endfunction
syntax keyword systemverilogStatement generate endgenerate
syntax keyword systemverilogStatement interface endinterface
syntax keyword systemverilogStatement module endmodule macromodule
syntax keyword systemverilogStatement package endpackage
syntax keyword systemverilogStatement primitive endprimitive
syntax keyword systemverilogStatement program endprogram
syntax keyword systemverilogStatement property endproperty
syntax keyword systemverilogStatement sequence endsequence randsequence
syntax keyword systemverilogStatement specify endspecify
syntax keyword systemverilogStatement table endtable
syntax keyword systemverilogStatement task endtask

syntax keyword systemverilogStatement modport
syntax keyword systemverilogStatement alias
syntax keyword systemverilogStatement assign deassign
syntax keyword systemverilogStatement force release
syntax keyword systemverilogStatement assert assume
syntax keyword systemverilogStatement timeprecision timeunit
syntax keyword systemverilogStatement randcase
syntax keyword systemverilogStatement let
syntax keyword systemverilogStatement localparam parameter specparam defparam

syntax keyword systemverilogStatement library
syntax keyword systemverilogStatement genvar

syntax keyword systemverilogStatement pullup pulldown

syntax keyword systemverilogStatement showcancelled

" * design composition
syntax keyword systemverilogStatement instance cell liblist use
syntax keyword systemverilogStatement bind

" *conditional
syntax keyword systemverilogStatement unique unique0 priority

" *property
syntax keyword systemverilogStatement expect
syntax keyword systemverilogStatement restrict
syntax keyword systemverilogStatement cover

" *coverage
syntax keyword systemverilogStatement covergroup coverpoint endgroup
syntax keyword systemverilogStatement bins binsof illegal_bins ignore_bins
syntax keyword systemverilogStatement cross
syntax keyword systemverilogStatement wildcard
syntax keyword systemverilogStatement soft
syntax keyword systemverilogStatement solve before

syntax keyword systemverilogTypeStatement  constraint

" Conditional
syntax keyword systemverilogConditional if else
syntax keyword systemverilogConditional iff
syntax keyword systemverilogConditional ifnone

" Repeat
syntax keyword systemverilogRepeat while foreach for do
syntax keyword systemverilogRepeat always_comb always_ff always_latch
syntax keyword systemverilogRepeat forever
syntax keyword systemverilogRepeat repeat

" Label
syntax keyword systemverilogLabel begin end
" Default value in literals
syntax keyword systemverilogLabel default

" Operator
syntax match   systemverilogOperator "[&|~><!)(*#%@+/=?:;}{,.\^\-\[\]]"

syntax keyword systemverilogOperator new
syntax keyword systemverilogOperator matches
" @assertion
syntax keyword systemverilogOperator strong weak
syntax keyword systemverilogOperator implies
syntax keyword systemverilogOperator nexttime s_nexttime
syntax keyword systemverilogOperator s_always
syntax keyword systemverilogOperator eventually s_eventually
syntax keyword systemverilogOperator until s_until
syntax keyword systemverilogOperator until_with s_until_with
syntax keyword systemverilogOperator accept_on reject_on
syntax keyword systemverilogOperator sync_accept_on sync_reject_on

" @sequence
syntax keyword systemverilogOperator intersect
syntax keyword systemverilogOperator first_match throughout
syntax keyword systemverilogOperator within

" The usage of type can be type or operator:
" var type T = type(4'b1); // T is the type of 4'b1
syntax keyword systemverilogOperator type

" Keyword
syntax keyword     systemverilogKeyword            extends
syntax keyword     systemverilogKeyword            implements

" PreProc
syntax match systemverilogPreProc "`celldefine"
syntax match systemverilogPreProc "`endcelldefine"
syntax match systemverilogPreProc "`default_nettype"
syntax match systemverilogPreProc "`line"
syntax match systemverilogPreProc "`nounconnected_drive"
syntax match systemverilogPreProc "`resetall"
syntax match systemverilogPreProc "`timescale"
syntax match systemverilogPreProc "`unconnected_drive"

" Include
syntax match systemverilogInclude "^\s*`\(include\)\>"
syntax match systemverilogInclude "-incdir"
syntax keyword systemverilogInclude include

" Define
syntax match systemverilogDefine  "^\s*`\(define\)\>"
syntax match systemverilogDefine  "^\s*`\(undef\)\>"

" Macro
syntax match systemverilogMacro "`\<[A-Z][A-Z0-9_]*\>"

" PreCondition
syntax match       systemverilogPreCondition       "^\s*`\(ifdef\|ifndef\|else\|elsif\|endif\)\>"

" Type
syntax keyword systemverilogType shortint int longint
syntax keyword systemverilogType byte bit logic
syntax keyword systemverilogType reg integer time
syntax keyword systemverilogType real shortreal realtime
syntax keyword systemverilogType void
syntax keyword systemverilogType chandle
syntax keyword systemverilogType string
syntax keyword systemverilogType event
syntax keyword systemverilogType untyped

syntax keyword     systemverilogType               process

syntax keyword systemverilogType interconnect
" @ built-in net types
syntax keyword systemverilogType wire wand wor
syntax keyword systemverilogType tri triand trior
syntax keyword systemverilogType tri0 tri1 trireg
" supply0 and supply1 are moved as constants
" syntax keyword systemverilogType supply0 supply1 uwire
syntax keyword systemverilogType uwire
" @ gate and switch type
syntax keyword systemverilogType cmos rcmos
syntax keyword systemverilogType bufif0 bufif1 notif0 notif1
syntax keyword systemverilogType nmos pmos rnmos rpmos
syntax keyword systemverilogType and nand or nor xor xnor
syntax keyword systemverilogType buf not
syntax keyword systemverilogType tranif0 tranif1 rtranif1 rtranif0
syntax keyword systemverilogType tran rtran

" StorageClass
syntax keyword systemverilogStorageClass virtual pure context
syntax keyword systemverilogStorageClass public protected local
syntax keyword systemverilogStorageClass extern static
syntax keyword systemverilogStorageClass signed unsigned const
syntax keyword systemverilogStorageClass ref inout input output
syntax keyword systemverilogStorageClass rand randc
syntax keyword systemverilogStorageClass automatic
syntax keyword systemverilogStorageClass var nettype
syntax keyword systemverilogStorageClass packed tagged
" Charge strength of trireg
syntax keyword systemverilogStorageClass small medium large
syntax keyword systemverilogStorageClass vectored scalared

" Structure
syntax keyword systemverilogStructure  struct union enum

" Typedef
syntax keyword systemverilogTypedef typedef

" SpecialComment
syntax match   systemverilogDirective   "//\s*synopsys\>.*$"
syntax region  systemverilogDirective   start="/\*\s*synopsys\>" end="\*/"
syntax region  systemverilogDirective   start="//\s*synopsys dc_script_begin\>" end="//\s*synopsys dc_script_end\>"

syntax match   systemverilogDirective   "//\s*\$s\>.*$"
syntax region  systemverilogDirective   start="/\*\s*\$s\>" end="\*/"
syntax region  systemverilogDirective   start="//\s*\$s dc_script_begin\>" end="//\s*\$s dc_script_end\>"

" =====================
" Expansion packs
" =====================

" UVM syntax
runtime syntax/systemverilog-uvm.vim

" UVM syntax
runtime syntax/systemverilog-vmm.vim

" Stuff can not be published
runtime syntax/systemverilog-local.vim

" =====================
" Highlight assignments
" =====================

" Comment
" any comment
highlight default link systemverilogComment         Comment

" Literals
" anything constant
highlight default link systemverilogConstant        Constant
" a string constant: "this is a string"
highlight default link systemverilogString          String
" a character constant: 'c', '\n'
highlight default link systemverilogCharacter       Character
" a number constant: 234, 0xff
highlight default link systemverilogNumber          Number
" a boolean constant: TRUE, false
highlight default link systemverilogBoolean         Boolean
" a floating point constant: 2.3e10
highlight default link systemverilogFloat           Float

" Names
" any variable name
highlight default link systemverilogIdentifier      Identifier
" function name (also: methods for classes)
highlight default link systemverilogFunction        Function
highlight default link systemverilogSystemTask      Function

" Keywords for statements
" any statement
highlight default link systemverilogStatement       Statement
" * statement calls a function
highlight default link systemverilogFunctionStatement  Statement
" * statement generates a type
highlight default link systemverilogTypeStatement   Statement
" if, then, else, endif, switch, etc
highlight default link systemverilogConditional     Conditional
" for, do, while, etc.
highlight default link systemverilogRepeat          Repeat
" case, default, etc
highlight default link systemverilogLabel           Label
" "sizeof", "+", "*", etc.
highlight default link systemverilogOperator        Operator
" any other keyword
highlight default link systemverilogKeyword         Keyword
" try, catch, throw
highlight default link systemverilogException       Exception

" Preprocessor
" generic Preprocessor
highlight default link systemverilogPreProc         PreProc
" preprocessor #include
highlight default link systemverilogInclude         Include
" preprocessor #define
highlight default link systemverilogDefine          Define
" same as Define
highlight default link systemverilogMacro           Macro
" preprocessor #if, #else, #endif, etc.
highlight default link systemverilogPreCondition    PreCondit

" Type Names
" int, long, char, etc.
highlight default link systemverilogType            Type
" static, register, volatile, etc.
highlight default link systemverilogStorageClass    StorageClass
" structure, union, enum, etc.
highlight default link systemverilogStructure       Structure
" A typedef
highlight default link systemverilogTypedef         Typedef



" Special
" any special symbol
highlight default link systemverilogSpecial         Special
highlight default link systemverilogEscape          Special
" special character in a constant
highlight default link systemverilogSpecialChar     SpecialChar
" you can use CTRL-] on this
highlight default link systemverilogTag             Tag
" character that needs attention
highlight default link systemverilogDelimiter       Delimiter
" special things inside a comment
highlight default link systemverilogSpecialComment  SpecialComment
highlight default link systemverilogDirective       SpecialComment
" debugging statements
highlight default link sytemverilogDebug            Debug

highlight default link systemverilogTodo            Todo

let b:current_syntax = "systemverilog"

