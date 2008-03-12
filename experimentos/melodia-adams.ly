\version "2.10.33"

\book {
  \header{
    title = "Experimentos com contornos - Adams"
    composer = "Marcos di Silva"
    date = "2008"
  }
  \score {
    \new Staff {
      \relative c'' {
        \time 2/2
        g4.^"S3D2R2" fis16 g a4. d,8
        c'2 b
        \bar "||"
        g4.^"S3D1R2" fis16 g a4. d,8
        bes'1
        \bar "||"
        g4.^"S1D1R1" fis16 g bes4. g8
        ees1
        \bar "||"
        g4.^"S3Dø" bes16 d g2
        \bar "||"
        g,4.^"S1Dø" fis16 d bes2
        \bar "||"
        g'4.^"S1D1R2" fis16 d bes4. d8
        ees2 d
        \bar "||"
        g4.^"S1D2R1" fis16 g bes4. g8
        ees4. d8 cis4 d
        \bar "||"
        g4.^"S2D1R1" bes16 d g4. d16 bes
        g1
        \bar "||"
        g4.^"S2D1R2" fis16 d bes4. d16 fis
        g1
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
      piece = "Experimento 1: Redução de contorno"
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
