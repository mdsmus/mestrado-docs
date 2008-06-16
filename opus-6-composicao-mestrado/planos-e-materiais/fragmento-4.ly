\score {
  \new Staff {
    \relative c'''' {
      %% a ais c cis dis e fis g
      %% original: (-3 +2 -4 +2 -3)
      %% expansão 1 (-6 +4 -8 +4 -6)
      %% expansão 2 (-9 +6 -12 +6 -9)
      %% "tonal"
      g4^"original" e fis cis
      dis c?^"expansão 1" e, a
      ais, dis g,^"expansão 2" g,
      \clef bass
      dis' ais, fis' fis,
      \bar "||"
    }
  }
  \layout { }
  \midi { }
}
