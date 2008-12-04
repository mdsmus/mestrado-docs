\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff {
      \time 2/4
      \key c \minor
      \relative c'' {
        r8 g g g
        ees2
        r8 f f f
        d2~
        d
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
  paper-height = 3\cm
  line-width = 10.5\cm
  top-margin = -.1\cm
  left-margin = .1\cm
  tagline = 0
  indent = #0
}
