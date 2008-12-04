%% score.ly
\version "2.11.64"

%% includes

\include "gestosglobal.ly"
\include "gestosflauta.ly"
\include "gestosglobal.ly"
\include "gestosoboe.ly"
\include "gestosglobal.ly"
\include "gestosclarinetebb.ly"
\include "gestosglobal.ly"
\include "gestosfagote.ly"
\include "gestosglobal.ly"
\include "gestostrompa.ly"

#(set-global-staff-size 15.3)

%% partitura

\book {
  \header{
    title = "Em torno da romã"
    subtitle = "para quinteto de sopros"
    opus = "Opus 6"
    composer = "Marcos di Silva"
    date = "2008"
    copyright = "© Marcos di Silva"
  }

  \score {
    <<
      \new StaffGroup <<
        \new Staff <<
          \set Staff.instrumentName = \markup {\hcenter-in #5 "Flauta "}
          \set Staff.shortInstrumentName = \markup {\hcenter-in #5 "Fl. "}
          \set Staff.midiInstrument = "flute"
          \gestosglobal
          \gestosflauta
        >>
        \new Staff <<
          \set Staff.instrumentName = \markup {\hcenter-in #5 "Oboé "}
          \set Staff.shortInstrumentName = \markup {\hcenter-in #5 "Ob. "}
          \set Staff.midiInstrument = "oboe"
          \gestosglobal
          \gestosoboe
        >>
        \new Staff <<
          \set Staff.instrumentName = \markup {\hcenter-in #5 "Clarinete Bb "}
          \set Staff.shortInstrumentName = \markup {\hcenter-in #5 "Cl.Bb "}
          \set Staff.midiInstrument = "clarinet"
          \transposition bes
          \gestosglobal
          \transpose c d {
            \gestosclarinetebb
          }
        >>
        \new Staff <<
          \set Staff.instrumentName = \markup {\hcenter-in #5 "Trompa F "}
          \set Staff.shortInstrumentName = \markup {\hcenter-in #5 "Tpa. "}
          \set Staff.midiInstrument = "french horn"
          \transposition f
          \gestosglobal
          \transpose c g {
            \gestostrompa
          }
        >>
        \new Staff <<
          \set Staff.instrumentName = \markup {\hcenter-in #5 "Fagote "}
          \set Staff.shortInstrumentName = \markup {\hcenter-in #5 "Fg. "}
          \set Staff.midiInstrument = "bassoon"
          \gestosglobal
          \gestosfagote
        >>
      >>
    >>
    \midi { }
    \layout {
      \context { \Score
                 \override MetronomeMark #'extra-offset = #'(-7 . 0)
                 \override BarNumber #'extra-offset = #'(0 . .5)
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
    #(set-paper-size "a4")
    line-width = 17.5\cm
    bottom-margin = 1.5\cm
    left-margin = 2\cm
    print-page-number = ##t
    ragged-last-bottom = ##t
  }
}
