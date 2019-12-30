syntax keyword scmNiceLambda lambda conceal cchar=λ

syntax clear schemeFunction

syntax match scmNiceOperator "<=" conceal cchar=≤
syntax match scmNiceOperator ">=" conceal cchar=≥

highlight link scmNiceLambda schemeSyntax
highlight link scmNiceOperator Noise

highlight! link Conceal Noise

setlocal conceallevel=1
