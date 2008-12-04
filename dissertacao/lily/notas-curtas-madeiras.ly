\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff \with {
    \remove "Time_signature_engraver" }{
      \time 3/8
      \relative c'' {
        \bracketUp
        g16^\markup{\italic{fl.}} e fis cis dis[ c]
        \bar "||"
        e16^\markup{\italic{cl. (som real)}} g, bes e, g'[ cis,]
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
}
\paper {
  paper-width = 15.6\cm
  paper-height = 2.6\cm
  line-width = 15.4\cm
  top-margin = -.3\cm
  left-margin = .1\cm
  tagline = 0
  indent = #0
}
