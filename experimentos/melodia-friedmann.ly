\version "2.10.33"

\book {
  \header{
    title = "Experimentos com contornos - Friedmann"
    composer = "Marcos di Silva"
    date = "2008"
  }
  \score {
    \new Staff {
      \relative c' {
        d8\startGroup_"CAS ++-+" f a g a2\stopGroup
        cis,8\startGroup_"CAS ++-+" e bes' a bes2\stopGroup
        c,?8\startGroup_"CAS ++-+" a' d bes c2\stopGroup
        bes,8\startGroup_"CAS ++-+" d bes' g d'2\stopGroup
        a,8\startGroup_"CAS ++-+" f' e' d f2\stopGroup
        aes,,8\startGroup_"CAS ++-+" f' d' b g'2\stopGroup
        g,,8\startGroup_"CAS ++-+" e' cis' bes bes'4.\fermata\stopGroup_"CAS --+-" \cadenzaOn a8 gis a e cis! e\fermata d4
        \bar "|."
      }
    }
    \midi { }
    \layout {
      \context { \Score
                 \override MetronomeMark #'extra-offset = #'(-9 . 0)
                 \override MetronomeMark #'padding = #'3
               }
      \context { \Staff
                 \override TimeSignature #'style = #'numbered
               }
      \context { \Voice
                 \override Glissando #'thickness = #3
                 \override Glissando #'gap = #0.1
               }
      \context {
        \Staff \consists "Horizontal_bracket_engraver"
      }
    }
    \header {
      piece = "Experimento 1: Uso de CAS e expansão intervalar"
    }
  }
  \paper {
    #(set-paper-size "a4")
    line-width = 17.5\cm
    bottom-margin = 1.5\cm
    left-margin = 2\cm
    print-page-number = ##t
    ragged-last-bottom = ##t
  }
}
