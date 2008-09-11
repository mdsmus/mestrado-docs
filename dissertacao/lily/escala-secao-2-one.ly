\version "2.10.33"

\include "../config/lib.ly"

\score {
  \new Staff \with { \remove "Time_signature_engraver" }{
      \override Stem #'transparent = ##t
      \relative c'''' {
        \time 11/4
        \bracketUp
        \override TextScript #'extra-offset = #'( 0 . 2 )
        g4\startGroup^\markup{Escala octatônica} fis e dis cis c bes a g4 fis e\stopGroup \bar "||"
        \time 6/4
        g'\startGroup^\markup{Notas escolhidas} e cis bes g e\stopGroup \bar "||"
        g'\startGroup^\markup{Contorno} cis, e g, bes e,\stopGroup \bar "||"
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 12.6\cm
  paper-height = 6\cm
  line-width = 13.5\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
  indent = #0
  print-page-number = #'nil
}
