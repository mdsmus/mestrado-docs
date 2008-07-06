%% trompa.ly
\version "2.10.33"
\include "newcommand.ly"

gestoAAAtrompa = {
  R1*5/4*8
}

gestoAABtrompa = {
  R1*5/4*6
}

gestoAACtrompa = {
  R1*5/4*8
}

gestoAADtrompa = {
  \relative c'' {
    %% variação da seção AAA - fagote.
    %% inclusão de transposição
    %% #s(5 3 4) - subconjunto de  #s(5 3 4 1 2 0)
    %% procedimentos utilizados: expansão de intervalos e transposição
    g1\p\dolce\espressivo e4(
    fis2) fis cis4
    e1) r4
    bes'2.\espressivo fis2(
    a2. e4 g4~
    g1) r4
  }
}

gestoAAEtrompa = {
  \relative c'' {
    %% variação da seção AAA - fagote.
    %% inclusão de transposição
    %% #s(5 3 4) - subconjunto de  #s(5 3 4 1 2 0)
    %% procedimentos utilizados: expansão de intervalos e transposição
    \setTextCresc
    g1\<\dolce\espressivo e4(
    fis2) fis cis4
    e1) r4
    bes'2.\espressivo fis2(
    a2. e4 g4~
    g1) r4
    g1\espressivo e4(
    fis2.~\f fis2)
  }
}

gestoABAtrompa = {
  \relative c' {
    %% lembrete: dimnuir duração das notas
    R1*5/4*3
    r4 bes1~\p
    bes1 r4
    R1*5/4
    r4 bes1
    r1 bes4~
  }
}

gestoABBtrompa = {
  \relative c' {
    bes2.~ bes2
    bes2.~-> bes2~
    bes4 bes2.~-> bes8 bes~->
    bes2~ bes8 bes~-> bes2~
  }
}

gestoABCtrompa = {
  \relative c' {
    bes2 r2.
    bes2. r2
    R1*5/4
    r4 bes1
    R1*5/4*3
    bes2.~ bes2
  }
}

gestoBAAtrompa = {
  \relative c' {
    \repeat unfold 5 {
      R1
      R1*5/4
    }
    g1~\mf
    g8 e4. fis2.
    cis4. dis c4~
    c1 r4
    R1
    R1*5/4
  }
}

gestoBABtrompa = {
  R1*4
}

gestoBACtrompa = {
  R1*4
}

gestoBADtrompa = {
  R1*4
}

gestoBAEtrompa = {
  R1*4
}

gestoBBAtrompa = {
  R1*11
}

gestoBBBtrompa = {
  R1*7
}

gestoBBCtrompa = {
  \relative c' {
    d1\f
    b2 cis~
    cis gis4 ais
    g1~
    g2. r4

    d'1
    b2 cis
    d1
    b2 cis

    d2 b
    cis1
  }
}

gestoCAAtrompa = {
  R1*4
}

gestoCABtrompa = {
  R1*4
}

gestoCACtrompa = {
  R1*4
}

gestoCADtrompa = {
  R1*4
}

gestoCAEtrompa = {
  R1*4
}

gestoCBAtrompa = {
  R1*4
}

gestoCBBtrompa = {
  R1*4
}

gestoCBCtrompa = {
  R1*4
}

gestoCBDtrompa = {
  R1*4
}

gestoCBEtrompa = {
  R1*4
}

gestoCBFtrompa = {
  R1*4
}

gestoCBGtrompa = {
  R1*4
}

gestoCBHtrompa = {
  R1*4
}
