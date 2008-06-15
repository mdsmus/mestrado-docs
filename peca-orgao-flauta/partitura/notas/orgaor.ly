%% orgaor.ly
\version "2.10.33"
\include "newcommand.ly"

gestoAorgaor = {
  \relative c' {
    r2. e4\p
    a2. f4
    R1
    f2. b4
    e2. c4
    R1
    e4 c g b
    R1
    c2. g4
    c,4 f4 r2
    R1*7
    r2 a8 c8 b' e,
    g1~
    <e g>~
    <e g>
  }
}
gestoBorgaor = {
  \relative c'' {
    R1*7
    d4.\pp^"clarinete"( e8 a4. f8
    g8 d4.) d4.( e8
    c'4. f,16 b a2)
    d4( c e4 b
    a4. f8~ f4.) b8(
    g4. a8~ a2)
    d,4^"oboé"( e a4. f8
    g8 d4.) d4.( e8
    c'4. f,16 b a2)
    d4( c e4 b
    a4. f8~ f4.) b8(
    g4. a8~ a2)
    R1*4
  }
}
gestoCorgaor = {
  R1*4
}
gestoDorgaor = {
  R1*4
}
gestoEorgaor = {
  R1*6
}