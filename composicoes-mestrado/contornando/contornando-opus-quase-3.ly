\version "2.10.0"

%% variáveis

global = {
}

segAA = {
  s
}

%% partitura

\book {
  \header {
    title = "Contornando"
    instrument = "para Clarinete em Si bemol"
    opus = "Opus quase 3"
    composer = "Marcos di Silva"
    date = "2007"
    copyright = "© Marcos di Silva"
  }
  \score {
    \new Staff <<
      \global
      {
        \segAA
      }
    >>
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
  }
  \paper {
    %% #(set-global-staff-size 8)
    #(set-paper-size "a4")

    line-width = 17.5\cm
    bottom-margin = 1.5\cm
    left-margin = 2\cm
    print-page-number = ##t
    ragged-last-bottom = ##t
  }
}
