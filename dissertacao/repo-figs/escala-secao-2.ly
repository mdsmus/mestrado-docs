\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff \with { \remove "Time_signature_engraver" }{
      \override Stem #'transparent = ##t
      \relative c'''' {
        \time 11/4
        g4 fis e dis cis c bes a g4 fis e \bar "||"
        \time 16/4
        g'4 fis e dis cis c bes a 
        g4 fis e dis cis c bes a \bar "||"
        \time 21/4
        g''4 fis e dis cis c bes a
        g4 fis e dis cis c bes a
        g4 fis e dis cis \bar "||"
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 12.6\cm
  paper-height = 6\cm
  line-width = 13.5\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
  indent = #0
  print-page-number = #'nil
}
