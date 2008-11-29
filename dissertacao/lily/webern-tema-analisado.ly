\version "2.10.33"

\include "../config/lib.ly"

\score {
  \new Staff {
    \time 4/4
    \relative c {
      \set Score.currentBarNumber = #9
      \bar ""
      \override Score.BarNumber #'break-visibility = #end-of-line-invisible
      \partial 2
      \clef bass
      \bracketUp
      \override TextScript #'extra-offset = #'( 0 . 4 )
      r8 a8\startGroup^\markup{(0 1 2)}^\markup{\italic{vlc.}} \times 2/3 {f'8[ e'\stopGroup r]}
      \clef treble
      \override TextScript #'extra-offset = #'( 0 . 2 )
      d'8\startGroup^\markup{(2 0 1)}^\markup{\italic{vln.I}} bes cis4.\stopGroup 
      bes?8\startGroup^\markup{(1 2 0)} c b\stopGroup
      \revert Score.BarNumber #'break-visibility
      \override TextScript #'extra-offset = #'( 0 . 2 )
      bes-.\startGroup^\markup{(2 1 0)} f-. a,4-.\stopGroup
    }
  }
  \layout {
    \context {
      \Staff \consists "Horizontal_bracket_engraver"
    }
  }
}
\paper {
  paper-width = 12.1\cm
  paper-height = 2\cm
  line-width = 13\cm
  top-margin = -.4\cm
  left-margin = -1.2\cm
  tagline = 0
  indent = 0
}
