\version "2.10.33"

\include "lib.ly"

\score {
  \new Staff \with {
    \remove "Time_signature_engraver" }{
      \time 3/8
      \relative c'' {
        \bracketUp
        g16^\markup{\italic{fl.}} e fis cis dis[ c]
        \bar "||"
        e16^\markup{\italic{cl. (em dó)}} g, bes e, g'[ cis,]
        \bar "||"
        cis'16^\markup{\italic{ob.}} dis c g e[ fis]
        \bar "||"
        \clef bass
        e16^\markup{\italic{fg.}} cis g' e, bes' g
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
  paper-width = 14.6\cm
  paper-height = 3\cm
  line-width = 15.5\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
}
