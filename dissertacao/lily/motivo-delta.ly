\version "2.10.33"

\include "../config/lib.ly"

\score {
  \new RhythmicStaff  \with {
    \remove "Clef_engraver" }{
      \relative c' {
        \time 6/8
        \clef percussion
        \override Staff.StaffSymbol #'line-count = 0
        \stopStaff
        \startStaff
        c4.\st c\st
        c\st c\st
        c4.~\st c8 c4\st
        \bar "||"
      }
    }
  \layout {
      \context { \Staff
                 \override TimeSignature #'style = #'numbered
               }
      \context {
        \RhythmicStaff \consists "Horizontal_bracket_engraver"
      }
    }
}
\paper {
  paper-width = 6.6\cm
  paper-height = 3\cm
  line-width = 7.5\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
  indent = #0
}
