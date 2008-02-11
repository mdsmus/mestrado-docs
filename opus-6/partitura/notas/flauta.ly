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
  R1*4
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