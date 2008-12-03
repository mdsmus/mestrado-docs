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
}
\paper {
  paper-width = 5.6\cm
  paper-height = 1.5\cm
  line-width = 5.5\cm
  top-margin = -.6\cm
  left-margin = .1\cm
  tagline = 0
  indent = #0
}
