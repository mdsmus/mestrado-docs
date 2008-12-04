\version "2.11.64"

\score {
  \new Staff \with {
    \remove "Time_signature_engraver" }{
      \time 5/4
      \relative c' {
        \override Stem #'transparent = ##t
        <f b f'>4 <f f'> <f a c f> <f g a b c d e f>
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
  line-width = 5.5\cm
  top-margin = -.1\cm
  left-margin = .1\cm
  tagline = 0
  indent = #0
}
