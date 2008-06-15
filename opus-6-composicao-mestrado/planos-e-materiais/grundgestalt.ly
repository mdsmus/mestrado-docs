\score {
  \new Staff \with {\remove "Time_signature_engraver" }
  <<
    \time 6/4
    \new Voice <<
      \voiceOne
      \relative c'' {
        \override Stem #'transparent = ##t
        cis4 e g fis e cis
      }
    >>
    \new Voice <<
      \voiceTwo
      \relative c'' {
        \override Stem #'transparent = ##t
        a4 c ees gis, c a
      }
    >>
  >>
  \layout { }
  \midi { }
}
