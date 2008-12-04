\version "2.11.64"

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
  paper-height = 1.5\cm
  top-margin = -.8\cm
  left-margin = .1\cm
  tagline = 0
  indent = #0
}
