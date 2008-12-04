\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff \with {
    \remove "Time_signature_engraver"
    \remove "Bar_number_engraver"
  }{
      \time 6/4
      \override Stem #'transparent = ##t
      \relative c'''' {
        \overrideProperty #"Score.NonMusicalPaperColumn"
        #'line-break-system-details #'((Y-offset . 0))
        g4 cis, e g, bes e, \bar "||"
        g' g, cis g, cis cis, \bar "||"
        g''' e, c' cis,, a' fis, \bar "||"
        \break
        \overrideProperty #"Score.NonMusicalPaperColumn"
        #'line-break-system-details #'((Y-offset . 17))
        g''' cis,, bes' g,, e' bes, \bar "||"
        g'''' bes,, a' cis,,, c' dis,, \bar "||"
        g''' e, c' cis,, a' fis, \bar "||"
        \break
        \overrideProperty #"Score.NonMusicalPaperColumn"
        #'line-break-system-details #'((Y-offset . 39))
        g''' g, cis g, cis cis, \bar "||"
        g''' bes, dis cis, fis a, \bar "||"
        \clef bass
        g4 cis, e g, bes e, \bar "||"
      }
    }
  \layout {
    indent = #0
    line-width = #150
    ragged-last = ##f
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
    \context {
      \Score
      \remove "Bar_number_engraver"
    }
  }
}
\paper {
  paper-width = 15.2\cm
  paper-height = 10.5\cm
  top-margin = -.3\cm
  left-margin = .1\cm
  tagline = 0
  print-page-number = #'nil
}
