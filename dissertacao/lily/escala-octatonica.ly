\version "2.10.33"

\score {
  \new Staff \with {
    \remove "Time_signature_engraver" }{
      \time 9/4
      \relative c''' {
        \override Stem #'transparent = ##t
        g4 fis e dis cis c bes a
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
  paper-height = 3\cm
  line-width = 6.5\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
  indent = #0
}
