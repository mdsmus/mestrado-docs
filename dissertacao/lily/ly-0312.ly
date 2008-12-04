\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff {
    \time 4/4
    \relative c' {
      \bracketUp
      f\startGroup^\markup{m1} f' b, d\stopGroup
      \bar "||"
      g,\startGroup^\markup{m2} bes gis a\stopGroup
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
