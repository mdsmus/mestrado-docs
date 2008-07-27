\version "2.10.33"

\include "../config/lib.ly"

\score {
  \new Staff \with {
    \remove "Time_signature_engraver" }{
      \time 7/4
      \relative c'' {
        \override Stem #'transparent = ##t
        \bracketUp
        \override TextScript #'extra-offset = #'( -2 . 2 )
        g4^\startGroup^\markup{Motivo beta} e
        \revert TextScript #'extra-offset
        \override TextScript #'extra-offset = #'( 0 . 2 )
        fis\stopGroup cis^\startGroup^\markup{Motivo beta invertido} dis c\stopGroup
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 4.6\cm
  paper-height = 3\cm
  line-width = 5.5\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
  indent = #0
}
