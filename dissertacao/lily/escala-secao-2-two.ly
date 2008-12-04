\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff \with {
    \remove "Time_signature_engraver"
    \remove "Bar_number_engraver"
  }{
      \override Stem #'transparent = ##t
      \relative c'''' {
        \time 16/4
        \bracketUp
        \override TextScript #'extra-offset = #'( 0 . 2 )
        g4\startGroup^\markup{Escala octatônica} fis e dis cis c bes a g4 fis e dis cis c bes a\stopGroup \bar "||"
        \time 6/4
        g''\startGroup^\markup{Notas escolhidas} dis bes fis cis a\stopGroup \bar "||"
        g''\startGroup^\markup{Contorno} bes, dis cis, fis a,\stopGroup \bar "||"
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}
\paper {
  paper-width = 13.6\cm
  paper-height = 6\cm
  line-width = 13.5\cm
  top-margin = -.1\cm
  left-margin = .1\cm
  bottom-margin = -2\cm
  tagline = 0
  indent = #0
  print-page-number = #'nil
}
