\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff {
      \time 4/4
      \clef bass
      c4 d8 e d4 c
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 8.6\cm
  paper-height = 3\cm
  line-width = 8.5\cm
  top-margin = -.1\cm
  left-margin = .1\cm
  tagline = 0
  indent = #0
}
