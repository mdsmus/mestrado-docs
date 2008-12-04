\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff {
    \time 4/4
    \relative c'' {
      \bracketUp
      d\startGroup^\markup{m1} d, e' a,\stopGroup
      \bar "||"
      e'\startGroup^\markup{m2} c f d\stopGroup
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
  paper-width = 6.5\cm
  paper-height = 2\cm
  line-width = 7.5\cm
  top-margin = -.4\cm
  left-margin = .1\cm
  tagline = 0
  indent = 0
}
