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
        g4^\startGroup^\markup{\italic{motivo #(ly:export (ly:wide-char->utf-8 #x3B2))}} e
        \revert TextScript #'extra-offset
        \override TextScript #'extra-offset = #'( 0 . 2 )
        fis\stopGroup cis^\startGroup^\markup{\italic{inv(motivo #(ly:export (ly:wide-char->utf-8 #x3B2)))}} dis c\stopGroup
      }
    }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 5.8\cm
  paper-height = 2.2\cm
  line-width = 5.5\cm
  top-margin = -.3\cm
  left-margin = .1\cm
  tagline = 0
  indent = #0
}
