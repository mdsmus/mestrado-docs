%% flauta.ly
\version "2.10.33"
\include "newcommand.ly"

gestoAflauta = {
  \relative c'' {
    R1*10
    r2 f2~->\mf(
    f8 a8 g'4 c, e~
    e2.) r4
    f4( d a c
    b1)
    r2 a2~(
    a4 c b' e,
    g1)
    r4 f2.(
    \times 2/3 { e2 f, c' }
    b1)
  }
}
gestoBflauta = {
  \relative c' {
    R1
    d4.\pp\<( e8 a4.\mp f8
    g8 d4.)\breathe d4.( e8
    c'4. f,16 b a2)
    d4( c e4. b8
    a4. f8~ f4.) b8(
    g4. a8~ a2
    d,1)
    R1*2
    %% ret-rot-4
    r8 g32\<( a b c d e f g a b c d e2~\f
    e2) d4( f~
    f2 d~
    d2) d--
    d-- d--
    d-- d--
    R1*7
  }
}
gestoCflauta = {
  R1*4
}
gestoDflauta = {
  R1*4
}
gestoEflauta = {
  R1*6
}