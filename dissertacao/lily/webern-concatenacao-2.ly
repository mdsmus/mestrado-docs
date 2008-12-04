\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff {
    \time 4/4
    \relative c''' {
      \set Score.currentBarNumber = #7
      \bar ""
      \bracketUp
      \once \override TextScript #'extra-offset = #'( -4 . 0 )
      r8^\markup{\italic{vln.I}}
      \override TextScript #'extra-offset = #'( 0 . 1.5 )
      cis\startGroup^\markup{(2 1 0)} a gis\stopGroup
      e\startGroup^\markup{(2 1 0)} dis d\stopGroup
      \override TextScript #'extra-offset = #'( 0 . 3 )
      des\startGroup^\markup{(1 0 2)} r c r b'\stopGroup
    }
  }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 8.1\cm
  paper-height = 3\cm
  line-width = 8\cm
  top-margin = -.1\cm
  left-margin = .1\cm
  tagline = 0
  indent = 0
}
