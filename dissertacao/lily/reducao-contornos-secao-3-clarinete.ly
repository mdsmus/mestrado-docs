\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff {
      \time 6/8
      \relative c'' {
        \set Score.currentBarNumber = #68
        \bar ""
        \bracketUp
        g2.~^\markup{Cl. (som real)}
        g2.~
        g4. c,4.~
        c2.~
        c2.~
        c4. r
        \bar "||"
        \cadenzaOn
        \override Stem #'transparent = ##t
        \override TextScript #'extra-offset = #'( -5 . 0 )
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
  paper-width = 11.8\cm
  paper-height = 3\cm
  line-width = 11\cm
  top-margin = -.1\cm
  left-margin = .2\cm
  tagline = 0
  indent = #0
}
