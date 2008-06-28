%% fagote.ly
\version "2.10.33"
\include "newcommand.ly"

gestoAAAfagote = {
  \clef bass
  R1*4
}

gestoAABfagote = {
  \clef bass
  R1*4
}

gestoAACfagote = {
  \clef bass
  R1*4
}

gestoAADfagote = {
  \clef bass
  R1*4
}

gestoAAEfagote = {
  \clef bass
  R1*4
}

gestoAAFfagote = {
  \clef bass
  R1*4
}

gestoAAGfagote = {
  \clef bass
  R1*4
}

gestoAAHfagote = {
  \clef bass
  R1*4
}

gestoABAfagote = {
  \clef bass
  R1*4
}

gestoABBfagote = {
  \clef bass
  R1*4
}

gestoABCfagote = {
  \clef bass
  R1*4
}

gestoABDfagote = {
  \clef bass
  R1*4
}

gestoABEfagote = {
  \clef bass
  R1*4
}

gestoBAAfagote = {
  \clef bass
  R1*4
}

gestoBABfagote = {
  \clef bass
  R1*4
}

gestoBACfagote = {
  \clef bass
  R1*4
}

gestoBADfagote = {
  \clef bass
  R1*4
}

gestoBAEfagote = {
  \clef bass
  R1*4
}

gestoBBAfagote = {
  \clef bass
    R1*11
}

gestoBBBfagote = {
  \clef bass
  \relative c' {
    R1*1
    %% sujeito do fugato transposto a quinta
    \transpose d a, {
      \relative {
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
      }
    }
  }
}

gestoBBCfagote = {
  \clef bass
  \relative c' {
    %% continuação do fugato transposto a quinta
    \transpose d a, {
      \relative {
        bes4 g2.\trill
        %% #s(5 3 4 1 2 0)
        d'4-^\f b-^ cis-^ gis8( ais
        g?4.)
        %% (rotacionar #s(5 3 4 1 2 0) 3) com expansão de intervalos
        bes8->( e,8) g'4( cis,8~
        cis e8~\trill e2) r4

      }
    }
    d4-^ b-^ cis-^ gis8( ais
    g?2~ g4.) r8

    d'4-^ b-^ cis-^ gis8( ais
    g?2~ g4.) r8

    d'4-^ b-^ cis-^ gis8( ais
    g?4.) r8 

    d'4-^ b-^ 
    g1\trill
  }
}

gestoCAAfagote = {
  \clef bass
  R1*4
}

gestoCABfagote = {
  \clef bass
  R1*4
}

gestoCACfagote = {
  \clef bass
  R1*4
}

gestoCADfagote = {
  \clef bass
  R1*4
}

gestoCAEfagote = {
  \clef bass
  R1*4
}

gestoCBAfagote = {
  \clef bass
  R1*4
}

gestoCBBfagote = {
  \clef bass
  R1*4
}

gestoCBCfagote = {
  \clef bass
  R1*4
}

gestoCBDfagote = {
  \clef bass
  R1*4
}

gestoCBEfagote = {
  \clef bass
  R1*4
}

gestoCBFfagote = {
  \clef bass
  R1*4
}

gestoCBGfagote = {
  \clef bass
  R1*4
}

gestoCBHfagote = {
  \clef bass
  R1*4
}
