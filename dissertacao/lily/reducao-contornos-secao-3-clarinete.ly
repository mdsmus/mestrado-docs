\version "2.10.33"

\include "../config/lib.ly"

\score {
  \new Staff {
      \time 6/8
      \relative c'' {
        \set Score.currentBarNumber = #68
        \bar ""
        \bracketUp
        g2.~^\markup{Cl. (em dó)}
        g2.~
        g4. c,4.~
        c2.~
        c2.~
        c4. r
        \bar "||"
        \cadenzaOn
        \override Stem #'transparent = ##t
        fis4^\markup{Notas omitidas} e dis cis
        \bar "||"
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 10.1\cm
  paper-height = 3\cm
  line-width = 11\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
  indent = #0
}
