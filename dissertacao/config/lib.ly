bracketUp = {
      \override Staff.HorizontalBracket #'direction = #UP
}
bracketRevert = {
      \revert Staff.HorizontalBracket #'direction
}

%% abre colchete com texto
colcheteO = #(define-music-function (parser location texto) (string?)
   #{
       \startGroup^\markup{\italic{ #$texto }}
   #})

%% fecha colchete
colcheteC = \stopGroup

%% insere texto
textoit = #(define-music-function (parser location texto) (string?)
            #{
            ^\markup{\italic{ #$texto }}
            #})
