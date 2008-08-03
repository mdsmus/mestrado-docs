\version "2.10.33"

\score {
  \new RhythmicStaff  \with {
    \remove "Clef_engraver" }{
      \relative c' {
        \time 4/4
        \clef percussion
        \override Staff.StaffSymbol #'line-count = 0
        \stopStaff
        \startStaff
        c4. c c4~
        \time 5/4
        c8 c4. c2 c4
        \bar ":|"
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
