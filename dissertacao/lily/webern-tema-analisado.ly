\version "2.11.64"

\include "../config/lib.ly"

\score {
  \new Staff {
    \time 4/4
    \relative c {
      \set Score.currentBarNumber = #9
      \bar ""
      \override Score.BarNumber #'break-visibility = #end-of-line-invisible
      \override Score.BarNumber #'extra-offset = #'( .4 . -3 )
      \partial 2
      \clef bass
      \bracketUp
      \override TextScript #'extra-offset = #'( 0 . -4 )
      r8^\markup{\italic{vlc.}}
      \override TextScript #'extra-offset = #'( 0 . -2 )
      a8\startGroup^\markup{(0 1 2)} \times 2/3 {f'8[ e'\stopGroup \once \override TextScript #'extra-offset = #'( .8 . 1.5 ) r^\markup{\italic{vln.I}}]} \revert TextScript #'extra-offset
      \clef treble
      d'8\startGroup^\markup{(2 0 1)} bes cis4.\stopGroup 
      bes?8\startGroup^\markup{(0 2 1)} c b\stopGroup
      \revert Score.BarNumber #'break-visibility
      bes-.\startGroup^\markup{(2 1 0)} f-. a,4-.\stopGroup
    }
  }
  \layout {
    indent = #0
    line-width = #110
    ragged-last = ##f
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 11\cm
  paper-height = 2.5\cm
  top-margin = -.7\cm
  left-margin = .1\cm
  tagline = 0
  indent = 0
}
