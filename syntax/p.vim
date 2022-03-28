if exists("b:current_syntax")
    finish
endif

" Match typenames.
syntax keyword plangTypes
            \ any       
            \ bool     
            \ enum     
            \ event    
            \ eventset 
            \ float    
            \ int      
            \ machine  
            \ interface
            \ map      
            \ set      
            \ string   
            \ seq      
            \ data
highlight link plangTypes Type

" Match keywords.
syntax keyword plangKeywords
            \ announce
            \ as
            \ assert
            \ assume
            \ break
            \ case
            \ cold
            \ continue
            \ default
            \ defer
            \ do
            \ else
            \ entry
            \ exit
            \ foreac
            \ format
            \ fun
            \ goto
            \ halt
            \ hot
            \ if
            \ ignore
            \ in
            \ keys
            \ new
            \ observes
            \ on
            \ print
            \ raise
            \ receive
            \ return
            \ send
            \ sizeof
            \ spec
            \ start
            \ state
            \ this
            \ type
            \ values
            \ var
            \ while
            \ with
            \ choose 
highlight link plangKeywords Keyword

" Match module-test-impl declarations.
syntax keyword plangModTestImpl
            \ module
            \ implementation
            \ test
            \ refines 
highlight link plangModTestImpl Keyword

" Match module constructors.
syntax keyword plangCstrs
            \ compose
            \ union  
            \ hidee  
            \ hidei  
            \ rename 
            \ safe  
            \ main    
highlight link plangCstrs Keyword

" Match machine annotations.
syntax keyword plangAnnots
            \ receives
            \ sends    
highlight link plangAnnots Keyword

" Match common keywords.
syntax keyword plangCommonKeywords 
            \ creates
            \ to
highlight link plangCommonKeywords Keyword


" Literals

syntax keyword plangLiterals true false null
syntax match plangLiterals "\v<\d+>"
syntax keyword plangLiterals null
highlight link plangLiterals Constant

syntax region plangString start=/"/ skip=/\\"/ end=/"/ oneline contains=plangFormatWrapper
syntax region plangFormat start=/{/ skip=/\\}/ end=/}/ contained containedin=plangString

highlight link plangString String
highlight link plangFormat Delimiter

" Symbols
syntax match plangOperator "\v\$\$"
syntax match plangOperator "\v\$"

syntax match plangOperator "\v\!"
syntax match plangOperator "\v\&\&"
syntax match plangOperator "\v\|\|"

syntax match plangOperator "\v\=\="
syntax match plangOperator "\v\!\="
syntax match plangOperator "\v\<\="
syntax match plangOperator "\v\>\="
syntax match plangOperator "\v\<"
syntax match plangOperator "\v\>"
syntax match plangOperator "\v\-\>"

syntax match plangOperator "\v\="
syntax match plangOperator "\v\+\="
syntax match plangOperator "\v\-\="

syntax match plangOperator "\v\+"
syntax match plangOperator "\v\-"
syntax match plangOperator "\v\*"
syntax match plangOperator "\v\/"
syntax match plangOperator "\v\%"

syntax match plangOperator "\v\{"
syntax match plangOperator "\v\}"
syntax match plangOperator "\v\["
syntax match plangOperator "\v\]"
syntax match plangOperator "\v\("
syntax match plangOperator "\v\)"
syntax match plangOperator "\v\;"
syntax match plangOperator "\v\,"
syntax match plangOperator "\v\."
syntax match plangOperator "\v\:"

highlight link plangOperator Statement

" Non-code regions

syntax region plangComment start="/\*" end="\*/"
syntax region plangComment  start="//" end="$"
highlight link plangComment Comment


let b:current_syntax = "p"
