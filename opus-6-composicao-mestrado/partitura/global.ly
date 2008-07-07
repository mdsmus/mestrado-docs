\version "2.10.0"

\include "newcommand.ly"

tempoMark = #(define-music-function
       (parser location marktext padding) (string? number?)
     #{
       \once \override Score . RehearsalMark #'padding = $padding
       \once \override Score . RehearsalMark #'no-spacing-rods = ##t
       \mark \markup { \bold $marktext }
     #})

padraoglobal = {
  \override Staff.TimeSignature #'style = #'()
  \override Score.MetronomeMark #'padding = #4
  \set Score.markFormatter = #format-mark-box-letters
  \override Score.RehearsalMark #'padding = #0.5
}

gestoAAAglobal = {
  %% merge do AAA e AAB planejados
  \padraoglobal
  \tempo 4=82
  \time 5/4
  s1*5/4*8
  \break
  \bar "||"
}

gestoAABglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=82
  \time 5/4
  s1*5/4*6
}

gestoAACglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=82
  \time 5/4
  s1*5/4*8
}

gestoAADglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=82
  \time 5/4
  s1*5/4*6
}

gestoAAEglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=82
  \time 5/4
  s1*5/4*8
  \bar "||"
}

gestoABAglobal = {
  %% s(5 3 4 1 2 0) distribuido entre os instrunentos
  %% expansão de intervalos
  \mark \default
  \padraoglobal
  \tempo 4=66
  \time 5/4
  s1*5/4*8
}

gestoABBglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=66
  \time 5/4
  s1*5/4*4
}

gestoABCglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=66
  \time 5/4
  s1*5/4*8
  \bar "||"
}

gestoBAAglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=120
  \repeat unfold 8 {
    \time 4/4
    s1
    \time 5/4
    s1*5/4
  }
  \bar "||"
}

gestoBABglobal = {
  \padraoglobal
  \tempo 4=120
  \repeat unfold 8 {
    \time 4/4
    s1
    \time 5/4
    s1*5/4
  }
}

gestoBACglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=120
  \repeat unfold 8 {
    \time 4/4
    s1
    \time 5/4
    s1*5/4
  }
  \bar "||"
}

gestoBADglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoBAEglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoBBAglobal = {
  %% início da fuga (fl+ob)
  %% encerramento gradual da homofonia da seção anterior
  \padraoglobal
  \tempo 4=120
  \time 4/4
  s1*11
%   \bar "||"
}

gestoBBBglobal = {
  %% continuação da fuga. entram cl+fg
  %% homofonia anterior encerrada
  \padraoglobal
  \tempo 4=120
  \time 4/4
  s1*7
%   \bar "||"
}

gestoBBCglobal = {
  %% continuação da fuga. entram fl+ob+cl+fg
  %% entrada da trompa em ritmo desdobrado com tema da fuga
  \padraoglobal
  \tempo 4=120
  \time 4/4
  s1*11
  \bar "||"
}

gestoCAAglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCABglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCACglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCADglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCAEglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCBAglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCBBglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCBCglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCBDglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCBEglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCBFglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCBGglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "||"
}

gestoCBHglobal = {
  \padraoglobal
  \tempo 4=60
  \time 4/4
  s1*4
  \bar "|."
}
