\version "2.10.33"

\score {
    \new Staff \with {
      \remove "Time_signature_engraver" }{
        \time 2/4
        \clef bass
        \relative c {
          \override Stem #'transparent = ##t
          <a g' cis dis>4
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
  paper-width = 3.1\cm
  paper-height = 3\cm
  line-width = 4\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
}