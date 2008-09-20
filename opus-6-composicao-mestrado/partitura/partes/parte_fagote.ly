%% parte_fagote.ly
\version "2.10.33"

%% includes

\include "gestosglobal.ly"
\include "gestosfagote.ly"

#(set-global-staff-size 17)

%% partitura

\book {
  \header{
    title = "Em torno da romã"
    subtitle = "para quinteto de sopros"
    opus = "Opus 6"
    composer = "Marcos di Silva"
    date = "2008"
    copyright = "© Marcos di Silva"
    instrument = "Fagote"
  }

  \score {
    <<
      \set Score.skipBars = ##t
      \new Staff <<
        \gestosglobal
        \gestosfagote
      >>
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
    %%    #(set-global-staff-size 8)
    #(set-paper-size "a4")

    line-width = 17.5\cm
    bottom-margin = 1.5\cm
    left-margin = 2\cm
%     right-margin = 2\cm
%     head-separation = 1\cm
%     foot-separation = 1\cm
%     before-title-space = 1\cm
%     after-title-space = 1\cm
%     between-title-space = 1\cm

    print-page-number = ##t
    ragged-last-bottom = ##t
  }
}
