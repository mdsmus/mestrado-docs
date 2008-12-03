\version "2.10.33"

\score {
    \new Staff \with {
      \remove "Time_signature_engraver" }{
        \time 4/4
        \relative c'' {
          \override Stem #'transparent = ##t
          g4 e fis
        }
      }
    \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 4.1\cm
  paper-height = 1.5\cm
  line-width = 4\cm
  top-margin = -.6\cm
  left-margin = .1\cm
  tagline = 0
  indent = #0
}
