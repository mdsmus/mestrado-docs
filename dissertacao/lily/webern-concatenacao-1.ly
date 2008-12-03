\version "2.10.33"

\include "../config/lib.ly"

\score {
  \new Staff {
    \time 4/4
    \relative c''' {
      \set Score.currentBarNumber = #4
      \bar ""
      \bracketUp
      \once \override TextScript #'extra-offset = #'( -4 . 0 )
      r8^\markup{\italic{vln.I}}
      \override TextScript #'extra-offset = #'( 0 . 2 )
      d\startGroup^\markup{(1 2 0)} f e,\stopGroup
      c'\startGroup^\markup{(2 0 1)} fis, bes\stopGroup r
    }
  }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 6.1\cm
  paper-height = 3\cm
  line-width = 6\cm
  top-margin = -.1\cm
  left-margin = .1\cm
  tagline = 0
  indent = 0
}
