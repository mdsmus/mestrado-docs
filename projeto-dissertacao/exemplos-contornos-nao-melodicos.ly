\book {
  \header {
    title = "Exemplos de contornos não melódicos"
    composer = "Marcos di Silva"
  }
  \score {
    \new Staff {
      \relative c'' {
        \tempo 4=80
        \partial 8
        %% ambito de 5a
        g8
        c, d16 e f e f g e8 c f16 e d e
        %% ambito de 11a
        f d g8 b b, c16 d e c g'8 c
        d16 c a b c8 c, e16 d e f g8 f
        %% ambito de 3a
        e16 d e8 d c d4 b c1
        \bar "|."
      }
    }
    \layout {}
    \midi {}
    \header {
      piece = "Amplitude"
    }
  }
  \score {
    \new Staff {
      \relative c'' {
        \tempo 4=60
        c1\mf\>
        d\pp\<
        e4\ff r2.
        \bar "|."
      }
    }
    \layout {}
    \midi {}
    \header {
      piece = "Dinâmica"
    }
  }
  \score {
    \new Staff {
      \relative c'' {
        \tempo 4=40
        c8 c16 c c8 c16 c \times 2/3 {c8 c c} c16 c8 c16
        \times 4/5 {c16[ c \times 2/3 {c32 c c} c16 c32 c]} c8 c16 c c8 c c c
        \bar "|."
      }
    }
    \layout {}
    \midi {}
    \header {
      piece = "Regularidade x irregularidade rítmica"
    }
  }
}