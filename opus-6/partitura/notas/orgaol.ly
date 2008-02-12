%% orgaol.ly
\version "2.10.33"
\include "newcommand.ly"

gestoAorgaol = {
  \relative c'{
    d1~\p
    d~
    <d g>~
    <d g>~
    <d g>~
    <d g d'>~
    <d g d'>~
    <d g a d>~
    <d g a d>~
    <d g a d>2~ <d e g a d>2~
    <e g a>1~
    <g a>2.~ a4~
    a1~
    a~
    <g a>~
    <g a>~
    <g a>~
    <f g a>~
    <f g a b>~
    <f g a b>~
    <f g a b>
  }
}
gestoBorgaol = {
  \clef bass
  \relative c {
    R1*9
    d4\pp^"fagote"( e a f8 g~
    g8 d4. e4 c'~
    c4. f,16 b a2)
    d4( c e4. b8
    a4. f8~ f4.) b8(
    g4. a8~ a2
    d,1)
    d,4\pp( e a f8 g~
    g8 d4. e4 c'~
    c4. f,16 b a2)
    d4( c e4. b8
    a4. f8~ f4.) b8(
    g4. a8~ a2
    d,1)
  }
}
gestoCorgaol = {
  R1*4
}
gestoDorgaol = {
  R1*4
}
gestoEorgaol = {
  R1*6
}