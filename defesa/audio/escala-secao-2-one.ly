\score {
  \new Staff {
    \relative c'''' {
      \tempo 4=80 
      \time 6/4
      g8\startGroup^\markup{Escala octatônica} fis e dis cis c bes a g fis e4\stopGroup \bar "||"
      \time 3/4
      g'8\startGroup^\markup{Notas escolhidas} e cis bes g e\stopGroup \bar "||"
      g'\startGroup^\markup{Contorno} cis, e g, bes e,\stopGroup \bar "||"
    }
  }
  \layout { }
  \midi { }
}