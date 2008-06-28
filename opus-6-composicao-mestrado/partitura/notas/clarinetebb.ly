%% clarinetebb.ly
\version "2.10.33"
\include "newcommand.ly"

gestoAAAclarinetebb = {
  R1*5/4*8
}

gestoAABclarinetebb = {
  \relative c' {
    %% #s(5 3 4 1 2 0)
    e2\p( cis2.
    dis2) r4 a2(
    bes2 g2) r4

    %% repetição
    e'2( cis2.
    dis2) a2.(
    bes2 g2) r4
  }
}

gestoAACclarinetebb = {
  \relative c'' {
    R1*5/4*8
  }
}

gestoAADclarinetebb = {
  R1*4
}

gestoAAEclarinetebb = {
  R1*4
}

gestoAAFclarinetebb = {
  R1*4
}

gestoAAGclarinetebb = {
  R1*4
}

gestoAAHclarinetebb = {
  R1*4
}

gestoABAclarinetebb = {
  R1*4
}

gestoABBclarinetebb = {
  R1*4
}

gestoABCclarinetebb = {
  R1*4
}

gestoABDclarinetebb = {
  R1*4
}

gestoABEclarinetebb = {
  R1*4
}

gestoBAAclarinetebb = {
  R1*4
}

gestoBABclarinetebb = {
  R1*4
}

gestoBACclarinetebb = {
  R1*4
}

gestoBADclarinetebb = {
  R1*4
}

gestoBAEclarinetebb = {
  R1*4
}

gestoBBAclarinetebb = {
  \relative c'' {
    R1*11
  }
}

gestoBBBclarinetebb = {
  \relative c'' {
    %% sujeito do fugato
    %% #s(5 3 4 1 2 0)
    d4-^\f b-^ cis-^ gis8( ais
    g?4.)
    %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
    bes8->( e,8) g'4( cis,8~
    cis e8~\trill e2)
    %% (rotacionar (retrogradar #s(5 3 4 1 2 0) 5))
    gis,4\p
    b8( ais4) d8( cis4)
    %% (rotacionar (retrogradar #s(5 3 4 1 2 0) 4))
    e8->( gis,)
    b( ais) d2 e4~
    e cis4 g' e,
    bes' g2.\trill
    %% #s(5 3 4 1 2 0)
  }
}

gestoBBCclarinetebb = {
  \relative c'' {
    %% continuação do fugato
    d4-^\f b-^ cis-^ gis8( ais
    g?4.)
    %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
    bes8->( e,8) g'4( cis,8~
    cis e8~\trill e2) r4

    d,4-^\f b-^ cis-^ gis8( ais
    g?2~ g4.) r8 

    d'4-^ b-^ cis-^ gis8( ais
    g?2~ g4.) r8 
    
    d'4-^ b-^ cis-^ gis8( ais
    g?4.) r8

    d'4-^ b-^ cis-^ gis8( ais
    g?4.) r8

    cis'1\trill
  }
}

gestoCAAclarinetebb = {
  R1*4
}

gestoCABclarinetebb = {
  R1*4
}

gestoCACclarinetebb = {
  R1*4
}

gestoCADclarinetebb = {
  R1*4
}

gestoCAEclarinetebb = {
  R1*4
}

gestoCBAclarinetebb = {
  R1*4
}

gestoCBBclarinetebb = {
  R1*4
}

gestoCBCclarinetebb = {
  R1*4
}

gestoCBDclarinetebb = {
  R1*4
}

gestoCBEclarinetebb = {
  R1*4
}

gestoCBFclarinetebb = {
  R1*4
}

gestoCBGclarinetebb = {
  R1*4
}

gestoCBHclarinetebb = {
  R1*4
}
