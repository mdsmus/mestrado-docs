\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff {
    \time 4/4
    \relative c''' {
      \set Score.currentBarNumber = #7
      \bar ""
      \bracketUp
      \once \override TextScript #'extra-offset = #'( -4.5 . -4 )
      r8^\markup{\italic{vln.I}}
      \once \override TextScript #'extra-offset = #'( 0 . -2 )
      cis\startGroup^\markup{(2 1 0)} a gis\stopGroup
      e\startGroup^\markup{(2 1 0)} dis d\stopGroup
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
  paper-width = 7.4\cm
  paper-height = 2.6\cm
%   line-width = 6\cm
  top-margin = -.6\cm
  left-margin = .2\cm
  tagline = 0
  indent = 0
}
