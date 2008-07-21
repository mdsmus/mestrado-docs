\version "2.10.33"

\score {
    \new Staff \with {
      \remove "Time_signature_engraver" }{
        \time 4/4
        \relative c' {
          s8. c16 ees[ des f e]
          g4
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
  paper-width = 4.6\cm
  paper-height = 3\cm
  line-width = 5.5\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
}
