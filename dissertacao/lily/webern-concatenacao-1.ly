\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff {
    \time 4/4
    \relative c''' {
      \set Score.currentBarNumber = #4
      \bar ""
      \bracketUp
      \once \override TextScript #'extra-offset = #'( -4 . -5 )
      r8^\markup{\italic{vln.I}}
      \once \override TextScript #'extra-offset = #'( 0 . -2 )
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
  paper-width = 5.5\cm
  paper-height = 2.6\cm
  line-width = 6\cm
  top-margin = -.6\cm
  left-margin = .2\cm
  tagline = 0
  indent = 0
}
