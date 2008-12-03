\version "2.10.33"

\score {
  \new Staff \with {
    \remove "Time_signature_engraver" }{
      \time 7/4
      <<
        \relative c''' {
          \override Stem #'transparent = ##t
          g4 e fis cis g' e
        }
        \\
        \relative c'' {
          \override Stem #'transparent = ##t
          ees4 c ais a ees' c
        }
      >>
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 6.6\cm
  paper-height = 3\cm
  line-width = 6.5\cm
  top-margin = -.1\cm
  left-margin = .1\cm
  tagline = 0
  indent = #0
}
