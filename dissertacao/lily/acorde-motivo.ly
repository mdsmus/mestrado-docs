\version "2.11.64"

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
}
\paper {
  paper-width = 2\cm
  paper-height = 1.5\cm
  top-margin = -.6\cm
  left-margin = .1\cm
  tagline = 0
  indent = #0
}
