\version "2.10.0"

% cordas

pizz = ^\markup{\italic{pizz.}}
arco = ^\markup{\italic{arco}}
consord = ^\markup{\italic{con sord.}}
senzasord = ^\markup{\italic{senza sord.}}
sultasto = ^\markup{\italic{sul tasto}}
altallone = ^\markup{\italic{al tallone}}
acavalete = ^\markup{\italic{atrás do cavalete}}

% divisi

divisi = ^\markup{\italic{divisi}}
divisithree = ^\markup{\italic{divisi a 3}}
solo = ^\markup{\italic{solo}}
tutti = ^\markup{\italic{tutti}}
uniss = ^\markup{\italic{uniss.}}
ord = ^\markup{\italic{ord.}}

% instrumentos

cfgup = ^\markup{\italic{Contrafagote}}
cfgdown = _\markup{\italic{Contrafagote}}
bassclup = ^\markup{\italic{Clarinete Baixo}}
basscldown = _\markup{\italic{Clarinete Baixo}}
cinglesup = ^\markup{\italic{Corne Inglês}}
cinglesdown = _\markup{\italic{Corne Inglês}}
flautimup = ^\markup{\italic{Flautim}}
flautimdown = _\markup{\italic{Flautim}}
flautab = ^\markup{\italic{Flauta baixo}}
flautag = ^\markup{\italic{Flauta contralto}}
flauta = ^\markup{\italic{Flauta}}

% percussão

tomtons = ^\markup{\italic{Tom-tons}}
caixa = ^\markup{\italic{Caixa-clara}}
bombo = ^\markup{\italic{Bombo}}
ganza = ^\markup{\italic{Ganzá}}
pratosusp = ^\markup{\italic{Prato suspenso}}
chicote = ^\markup{\italic{Chicote}}
crotalus = ^\markup{\italic{Crótalus}}
caxixi = ^\markup{\italic{Caxixi}}
vibrafone = ^\markup{\italic{Vibrafone}}
marimba = ^\markup{\italic{Marimba}}
xilofone = ^\markup{\italic{Xilofone}}
glockenspiel = ^\markup{\italic{Glockenspiel}}
paudechuva = ^\markup{\italic{Pau de Chuva}}
claves = ^\markup{\italic{Claves}}
enxada = ^\markup{\italic{Enxada}}
reco = ^\markup{\italic{Reco}}
maraca = ^\markup{\italic{Maraca}}
woodb = ^\markup{\italic{Wood-block}}
templeb = ^\markup{\italic{Temple-block}}
chocalho = ^\markup{\italic{Chocalho}}
meialua = ^\markup{\italic{Meia lua}}
triang = ^\markup{\italic{Triângulo}}
tamtam = ^\markup{\italic{Tam-tam}}

% lembretes

lcaixa = ^\markup{\italic{(Caixa-clara)}}
lbombo = ^\markup{\italic{(Bombo)}}
ltriang = ^\markup{\italic{(Triângulo)}}

% acessorios

bmacia = ^\markup{\italic{baqueta macia}}
bdura = ^\markup{\italic{baqueta dura}}

gtoa = ^\markup{\italic{G muta in A}}
ftofis = ^\markup{\italic{F muta in F\sharp}}
gtofis = ^\markup{\italic{G muta in F\sharp}}
gtogis = ^\markup{\italic{G muta in G\sharp}}
atogis = ^\markup{\italic{A muta in G\sharp}}
fistoe = ^\markup{\italic{F\sharp muta in E}}
distoe = ^\markup{\italic{D\sharp muta in E}}
etoees = ^\markup{\italic{E muta in E\flat}}
cistodes = ^\markup{\italic{C\sharp muta in D\flat}}
eestof = ^\markup{\italic{E\flat muta in F}}
ftodis = ^\markup{\italic{F muta in D\sharp}}
destocis = ^\markup{\italic{D\flat muta in C\sharp}}
distod = ^\markup{\italic{D\sharp muta in D}}

nonarp = ^\markup{\italic{non arpeggio}}
esteiraon = ^\markup{\column{\italic{Colocar esteira}}}

% outros

highativ = ^\markup{\italic{muita atividade}}
improv = ^\markup{\italic{improvisar com estas notas}}

% caráter

dolce = ^\markup{\italic{dolce}}
deciso = ^\markup{\italic{deciso}}
dramatico = ^\markup{\italic{dramático}}
energico = ^\markup{\italic{enérgico}}
furioso = ^\markup{\italic{furioso}}
piacere = ^\markup{\italic{a piacere}}
sffz = #(make-dynamic-script "sffz")

% andamento

tempoMark = #(define-music-function (parser location markp) (string?)
     #{
       \once \override Score . RehearsalMark #'self-alignment-X = #left
       \once \override Score . RehearsalMark #'no-spacing-rods = ##t
       \mark \markup { \bold $markp }
     #})

%      \relative c'' {
%        \tempo 4=50
%        a4.\mpdolce d8 cis4--\glissando a | b4 bes a2
%        \tempoMark "Poco piu mosso"
%        cis4.\< d8 e4 fis | g8(\! fis)-. e( d)-. cis2
%      }

piumosso = \tempoMark "Poco piu mosso"
menomosso = \tempoMark "Meno mosso"

%% simplificação

st = \staccatissimo