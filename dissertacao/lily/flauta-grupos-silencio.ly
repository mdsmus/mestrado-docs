\version "2.10.33"

\include "lib.ly"

\score {
  \new Staff {
      \time 4/4
      \relative c'' {
        \set Score.currentBarNumber = #177
        \bar ""
        \bracketUp
        \override TextScript #'extra-offset = #'( -6 . 4 )
        r2 g16 e fis cis dis r8.
        r8. c?16 g'16 e fis cis dis c? r8 r4
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
  \midi {}
}
\paper {
  paper-width = 12.6\cm
  paper-height = 3\cm
  line-width = 13.5\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
}
