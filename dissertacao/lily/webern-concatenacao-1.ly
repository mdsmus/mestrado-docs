\version "2.10.33"

\include "../config/lib.ly"

\score {
  \new Staff {
    \time 4/4
    \relative c''' {
      \set Score.currentBarNumber = #4
      \bar ""
      \bracketUp
      \override TextScript #'extra-offset = #'( 0 . 2 )
      r8 d\startGroup^\markup{(1 2 0)} f e,\stopGroup
      c'\startGroup^\markup{(2 0 1)} fis, bes\stopGroup r
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
  paper-width = 5.1\cm
  paper-height = 3\cm
  line-width = 6\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
  indent = 0
}
