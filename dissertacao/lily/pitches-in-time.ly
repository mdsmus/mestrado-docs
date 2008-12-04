\version "2.11.64"

\score {
  \new Staff \with {
    \remove "Time_signature_engraver" }{
      \time 5/4
      \relative c'' {
        \override Stem #'transparent = ##t
        a f bes d
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 3.5\cm
  paper-height = 1.5\cm
  top-margin = -.8\cm
  left-margin = .1\cm
  tagline = 0
  indent = #0
}
