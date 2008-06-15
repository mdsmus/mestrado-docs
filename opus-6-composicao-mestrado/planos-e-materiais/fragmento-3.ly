\score {
  \new Staff {
    \relative c''' {
      %% a ais c cis dis e fis g
      %% original: (-3 +2 -4 +2 -3)
      g2.^"original" e4
      fis2. cis8 dis
      c?1
      \bar "||"
      %% expansão 1 (-6 +4 -8 +4 -6)
      g'2.^"expansão 1" c,4
      e2. fis,8 ais
      dis,1
      \bar "||"
      %% expansão 2 (-9 +6 -12 +6 -9)
      g'2.^"expansão 2" g,4
      dis'2. ais,8 fis'
      fis,1
      \bar "||"
    }
  }
  \layout { }
  \midi { }
}
