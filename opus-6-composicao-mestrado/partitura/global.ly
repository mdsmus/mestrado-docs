\version "2.11.64"

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
  \once \override Score.MetronomeMark #'extra-offset = #'(-7 . 0)
  \tempo 4=82
  \time 5/4
  s1*5/4*8
  \bar "||"
}

gestoAABglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=82
  s1*5/4*6
}

gestoAACglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=82
  s1*5/4*8
}

gestoAADglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=82
  s1*5/4*6
}

gestoAAEglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=82
  s1*5/4*8
  \bar "||"
}

gestoABAglobal = {
  %% s(5 3 4 1 2 0) distribuido entre os instrunentos expansão de
  %% intervalos.
  \mark \default
  \padraoglobal
  \once \override Score.MetronomeMark #'extra-offset = #'(-4 . 0)
  \tempo 4=66
  s1*5/4*8
}

gestoABBglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=66
  s1*5/4*4
}

gestoABCglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=66
  s1*5/4*8
  \bar "||"
}

gestoBAAglobal = {
  \mark \default
  \padraoglobal
  \once \override Score.MetronomeMark #'extra-offset = #'(0 . 0)
  \tempo 4.=80
  \time 6/8
  s1*6/8*24
}

gestoBABglobal = {
  \mark \default
  \padraoglobal
  s1*6/8*24
}

gestoBACglobal = {
  \mark \default
  \padraoglobal
  s1*6/8*24
  \bar "||"
}

gestoBBAglobal = {
  %% início da fuga (fl+ob)
  %% encerramento gradual da homofonia da seção anterior
  \mark \default
  \padraoglobal
  \once \override Score.MetronomeMark #'extra-offset = #'(-2 . 0)
  \tempo 4=120
  \time 4/4
  s1*11
}

gestoBBBglobal = {
  %% continuação da fuga. entram cl+fg
  %% homofonia anterior encerrada
  \mark \default
  \padraoglobal
  \tempo 4=120
  s1*7
}

gestoBBCglobal = {
  %% continuação da fuga. entram fl+ob+cl+fg
  %% entrada da trompa em ritmo desdobrado com tema da fuga
  \mark \default
  \padraoglobal
  \tempo 4=120
  s1*11
  \bar "||"
}

gestoCAAglobal = {
  %% contorno #s(5 3 4 1 2 0) usado na densidade de CA
  \mark \default
  \padraoglobal
  \once \override Score.MetronomeMark #'extra-offset = #'(-4 . 0)
  \tempo 4=108
  s1*15
}

gestoCABglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=108
  s1*9
}

gestoCACglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=108
  s1*15
  \bar "||"
}

gestoCBAglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=112
  s1*16
}

gestoCBBglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=112
  s1*10
}

gestoCBCglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=112
  s1*16
}

gestoCBDglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=112
  s1*10
}

gestoCBEglobal = {
  \mark \default
  \padraoglobal
  \tempo 4=112
  s1*29
  \bar "|."
}
