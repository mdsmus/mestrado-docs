\version "2.11.64"

\score {
  \new DrumStaff \with {
    \remove "Time_signature_engraver"
    \remove "Clef_engraver" }{
      \override Staff.StaffSymbol #'line-count = 0
      \stopStaff
      \startStaff
      \time 2/4
      \relative c'' {
        c8\p\noBeam c\ppp c\mf\noBeam c\ff
      }
    }
  \layout {
    indent = #0
    line-width = #50
    ragged-last = ##f
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 4.5\cm
  paper-height = 1.5\cm
  top-margin = -.8\cm
  left-margin = .1\cm
  tagline = 0
  indent = #0
}
