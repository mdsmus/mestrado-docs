%% score.ly
\version "2.10.33"

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

%% partitura

\book {
  \score {
    <<
      \new StaffGroup <<
        \new Staff <<
          \set Staff.midiInstrument = "flute"
          \gestosglobal
          \gestosflauta
        >>
        \new Staff <<
          \set Staff.midiInstrument = "oboe"
          \gestosglobal
          \gestosoboe
        >>
        \new Staff <<
          \set Staff.midiInstrument = "clarinet"
          \gestosglobal
          \gestosclarinetebb
        >>
        \new Staff <<
          \set Staff.midiInstrument = "bassoon"
          \gestosglobal
          \gestosfagote
        >>
        \new Staff <<
          \set Staff.midiInstrument = "french horn"
          \gestosglobal
          \gestostrompa
        >>
      >>
    >>
    \midi { }
  }
}
