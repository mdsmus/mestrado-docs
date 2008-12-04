\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff \with { \remove "Time_signature_engraver" }{
      \time 6/4
      \override Stem #'transparent = ##t
      \relative c'''' {
        g4 cis, e g, bes e, \bar "||"
        g' g, cis g, cis cis, \bar "||"
        g''' e, c' cis,, a' fis, \bar "||"
        g''' cis,, bes' g,, e' bes, \bar "||"
        g'''' bes,, a' cis,,, c' dis,, \bar "||"
        g''' e, c' cis,, a' fis, \bar "||"
        g''' g, cis g, cis cis, \bar "||"
        g''' bes, dis cis, fis a, \bar "||"
        \clef bass
        g4 cis, e g, bes e, \bar "||"
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
      \remove "Bar_number_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}
\paper {
  paper-width = 16.6\cm
  paper-height = 6\cm
  line-width = 17.5\cm
  top-margin = -.1\cm
  left-margin = .1\cm
  tagline = 0
  indent = #0
  print-page-number = #'nil
}
