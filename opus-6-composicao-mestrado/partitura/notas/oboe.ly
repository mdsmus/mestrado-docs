%% oboe.ly
\version "2.10.33"
\include "newcommand.ly"

gestoAAAoboe = {
  R1*4
}

gestoAABoboe = {
  R1*4
}

gestoAACoboe = {
  R1*4
}

gestoAADoboe = {
  R1*4
}

gestoAAEoboe = {
  R1*4
}

gestoAAFoboe = {
  R1*4
}

gestoAAGoboe = {
  R1*4
}

gestoAAHoboe = {
  R1*4
}

gestoABAoboe = {
  R1*4
}

gestoABBoboe = {
  R1*4
}

gestoABCoboe = {
  R1*4
}

gestoABDoboe = {
  R1*4
}

gestoABEoboe = {
  R1*4
}

gestoBAAoboe = {
  R1*4
}

gestoBABoboe = {
  R1*4
}

gestoBACoboe = {
  R1*4
}

gestoBADoboe = {
  R1*4
}

gestoBAEoboe = {
  R1*4
}

gestoBBAoboe = {
  \relative c'' {
    R1*2
    %% sujeito do fugato transposto a quinta
    \transpose d a' {
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
        bes' g2.\trill
      }
    }
  }
}

gestoBBBoboe = {
  R1*4
}

gestoBBCoboe = {
  R1*4
}

gestoCAAoboe = {
  R1*4
}

gestoCABoboe = {
  R1*4
}

gestoCACoboe = {
  R1*4
}

gestoCADoboe = {
  R1*4
}

gestoCAEoboe = {
  R1*4
}

gestoCBAoboe = {
  R1*4
}

gestoCBBoboe = {
  R1*4
}

gestoCBCoboe = {
  R1*4
}

gestoCBDoboe = {
  R1*4
}

gestoCBEoboe = {
  R1*4
}

gestoCBFoboe = {
  R1*4
}

gestoCBGoboe = {
  R1*4
}

gestoCBHoboe = {
  R1*4
}
