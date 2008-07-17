\version "2.10.33"

\score {
  \new Staff \with {
    \remove "Time_signature_engraver" }{
      \time 6/4
      \relative c'''' {
        \override Stem #'transparent = ##t
        g4^\markup{\italic{fl.}}
        g,^\markup{\italic{cl.}}
        cis^\markup{\italic{ob.}}
        \override TextScript #'extra-offset = #'( -3 . 0 )
        e,,^\markup{\italic{fg. ou tpa.}}
        \revert TextScript #'extra-offset
        bes'^\markup{\italic{cl.}} 
        \override TextScript #'extra-offset = #'( -3 . 0 )
        bes,^\markup{\italic{tpa. ou fg.}}
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
  paper-width = 12.6\cm
  paper-height = 3\cm
  line-width = 13.5\cm
  top-margin = -.1\cm
  left-margin = -1.2\cm
  tagline = 0
}
