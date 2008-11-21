\score {
  \new Staff {
    \tempo 4=100
    \time 6/4
    \override Stem #'transparent = ##t
    \relative c'''' {
      g8 cis, e g, bes e, \bar "||"
      g' g, cis g, cis cis, \bar "||"
      g''' e, c' cis,, a' fis, \bar "||"
      g''' cis,, bes' g,, e' bes, \bar "||"
      g'''' bes,, a' cis,,, c' dis,, \bar "||"
      g''' e, c' cis,, a' fis, \bar "||"
      g''' g, cis g, cis cis, \bar "||"
      g''' bes, dis cis, fis a, \bar "||"
      \clef bass
      g cis, e g, bes e, \bar "||"
    }
  }
  \layout { }
  \midi { }
}