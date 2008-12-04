\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff {
    \time 4/4
    \relative c'' {
      \bracketUp
      \override TextScript #'extra-offset = #'( 0 . 2 )
      \relative c'' {
        r8 g\startGroup^\markup{m1} g g
        ees2
        r8 f f f
        d2\stopGroup
        \bar "||"
      }
      \clef bass
      g4.\startGroup^\markup{m2} a,,8
      g'2
      aes,\stopGroup
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
  paper-width = 10.6\cm
  paper-height = 2.3\cm
  line-width = 11.5\cm
  top-margin = -.5\cm
  left-margin = -1\cm
  tagline = 0
  indent = 0
}
