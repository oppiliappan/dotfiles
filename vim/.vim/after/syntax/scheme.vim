syntax keyword scmNiceLambda lambda conceal cchar=λ

syntax clear schemeFunction

syntax match scmNiceOperator "<=" conceal cchar=≤
syntax match scmNiceOperator ">=" conceal cchar=≥

syn region scmNiceQuote matchgroup=secondAccent start=/'[`']*/ end=/[ \t\n()\[\]";]/me=e-1
syn region scmNiceQuote matchgroup=secondAccent start=/'['`]*"/ skip=/\\[\\"]/ end=/"/
syn region scmNiceQuote matchgroup=secondAccent start=/'['`]*|/ skip=/\\[\\|]/ end=/|/
syn region scmNiceQuote matchgroup=secondAccent start=/'['`]*#\?(/ end=/)/ contains=ALLBUT,schemeQuasiquote,schemeQuasiquoteForm,schemeUnquote,schemeForm,schemeDatumCommentForm,schemeImport,@schemeImportCluster,@schemeSyntaxCluster

highlight link scmNiceLambda schemeSyntax
highlight link scmNiceOperator Noise
highlight link scmNiceQuote secondAccent

highlight! link Conceal Noise

setlocal conceallevel=1
