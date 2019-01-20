\language "english"
\version "2.18.2"
\header {
  title = "Julia's Theme"
  composer = "Chimerror"
}
\score {
  <<
    \new Staff = "Soprano" {
      \relative c''' {
        \set Staff.instrumentName = #"Clarinet"
        \set Staff.shortInstrumentName = #"Cl"
        \set Staff.midiInstrument = #"clarinet"
        \key c \major
        \time 4/4
        \tempo 4 = 48
        r1 | r1
        r1 | r1
        r1 | r1
        r1 | r1

        g8 e8 d8 c8 r8 c8 b8 c8 | r8 b8 a4 r8 a8 c4 |
        e8 c8 b8 a8 r8 a8 g8 a8 | r8 g8 f4 r8 f8 a4 |
        g'8 e8 d8 c8 r8 c8 b8 c8 | r8 b8 a4 r8 a8 c4 |
        g'8 e8 d8 c8 r8 c8 b8 c8 | r8 b8 a4 r8 a8 c4 |

        g'8 e8 d8 c8 r8 c8 b8 c8 | r8 b8 a4 r8 a8 c4 |
        e8 c8 b8 a8 r8 a8 g8 a8 | r8 g8 f4 r8 f8 a4 |
        g'8 e8 d8 c8 r8 c8 b8 c8 | r8 b8 a4 r8 a8 c4 |
        g'8 e8 d8 c8 r8 c8 b8 c8 | r8 b8 a4 r8 a8 c4 |

        g'8 e8 d8 r8 c8 c8 b8 c8 | c4 a8 r8 a4 b8 r8 |
        e8 c8 b8 r8 a8 a8 g8 a8 | a4 f8 r8 f4 g8 r8 |
        g'8 e8 d8 r8 c8 c8 b8 c8 | c4 a8 r8 a4 b8 r8 |
        g'8 e8 d8 r8 c8 c8 b8 c8 | c4 a8 r8 a4 b8 r8 |

        g'8 e8 d8 c8 r8 c8 b8 c8 | r8 b8 a4 r8 a8 c4 |
        e8 c8 b8 a8 r8 a8 g8 a8 | r8 g8 f4 r8 f8 a4 |
        g'8 e8 d8 c8 r8 c8 b8 c8 | r8 b8 a4 r8 a8 c4 |
        g'8 e8 d8 c8 r8 c8 b8 c8 | r8 b8 a4 r8 a8 c4 |
      }
    }
    \new Staff = "Bass" {
      \relative c {
        \set Staff.instrumentName = #"Bass"
        \set Staff.shortInstrumentName = #"B"
        \set Staff.midiInstrument = #"synth bass 1"
        \key c \major
        \clef bass
        d8 d8 d16 g,16 d'8 d8 d8 d16 g,16 d'8 | d8 d8 d16 g,16 d'8 d8 d8 d16 g,16 d'8 |
        e8 e8 e16 a,16 e'8 e8 e8 e16 a,16 e'8 | g,8 g8 g16 c,16 g'8 g8 g8 g16 c,16 g'8 |
        g8 g8 g16 c,16 g'8 g8 g8 g16 c,16 g'8 | a8 a8 a16 d,16 a'8 a8 a8 a16 d,16 a'8 |
        c8 c8 c16 f,16 c'8 c8 c8 c16 f,16 c'8 | c8 c8 c16 f,16 c'8 c8 c8 c16 f,16 c'8 |

        d8 d8 d16 g,16 d'8 d8 d8 d16 g,16 d'8 | d8 d8 d16 g,16 d'8 d8 d8 d16 g,16 d'8 |
        e8 e8 e16 a,16 e'8 e8 e8 e16 a,16 e'8 | g,8 g8 g16 c,16 g'8 g8 g8 g16 c,16 g'8 |
        g8 g8 g16 c,16 g'8 g8 g8 g16 c,16 g'8 | a8 a8 a16 d,16 a'8 a8 a8 a16 d,16 a'8 |
        c8 c8 c16 f,16 c'8 c8 c8 c16 f,16 c'8 | c8 c8 c16 f,16 c'8 c8 c8 c16 f,16 c'8 |

        d8 d8 d16 g,16 d'8 d8 d8 d16 g,16 d'8 | d8 d8 d16 g,16 d'8 d8 d8 d16 g,16 d'8 |
        e8 e8 e16 a,16 e'8 e8 e8 e16 a,16 e'8 | g,8 g8 g16 c,16 g'8 g8 g8 g16 c,16 g'8 |
        g8 g8 g16 c,16 g'8 g8 g8 g16 c,16 g'8 | a8 a8 a16 d,16 a'8 a8 a8 a16 d,16 a'8 |
        c8 c8 c16 f,16 c'8 c8 c8 c16 f,16 c'8 | c8 c8 c16 f,16 c'8 c8 c8 c16 f,16 c'8 |

        d8 g16 d16 d8 d8 d8 g16 d16 d8 d8 | d8 g16 d16 d8 d8 d8 g16 d16 d8 d8 |
        e8 a16 e16 e8 e8 e8 a16 e16 e8 e8 | g8 c16 g16 g8 g8 g8 c16 g16 g8 g8 |
        g,8 c16 g16 g8 g8 g8 c16 g16 g8 g8 | a8 d16 a16 a8 a8 a8 d16 a16 a8 a8 |
        c8 f16 c16 c8 c8 c8 f16 c16 c8 c8 | c8 f16 c16 c8 c8 c8 f16 c16 c8 c8 |

        d8 d8 d16 g,16 d'8 d8 d8 d16 g,16 d'8 | d8 d8 d16 g,16 d'8 d8 d8 d16 g,16 d'8 |
        e8 e8 e16 a,16 e'8 e8 e8 e16 a,16 e'8 | g,8 g8 g16 c,16 g'8 g8 g8 g16 c,16 g'8 |
        g8 g8 g16 c,16 g'8 g8 g8 g16 c,16 g'8 | a8 a8 a16 d,16 a'8 a8 a8 a16 d,16 a'8 |
        c8 c8 c16 f,16 c'8 c8 c8 c16 f,16 c'8 | c8 c8 c16 f,16 c'8 c8 c8 c16 f,16 c'8 |
      }
    }
    \drums {
        r1 | r1
        r1 | r1
        r1 | r1
        r1 | r1

      <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 | <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 |
      <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 | <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 |
      <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 | <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 |
      <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 | <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 |

      <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 | <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 |
      <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 | <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 |
      <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 | <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 |
      <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 | <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 |

      <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 | <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 |
      <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 | <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 |
      <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 | <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 |
      <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 | <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 |

      <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 | <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 |
      <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 | <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 |
      <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 | <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 |
      <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 | <sn bd hh>8 hh8 <sn hh>8 hh8 <sn bd hh>8 <hh bd>8 <sn hh>8 hh8 |
    }
    %\new Staff = "chords" {
    %  \relative c' {
    %    \set Staff.instrumentName = #"Chords"
    %    \set Staff.shortInstrumentName = #"Ch"
    %    \set Staff.midiInstrument = #"acoustic grand"
    %    \key c \major
    %    \chordmode {
    %    d1:m | d1:m |
    %    e1:m | g,1 |
    %    g,1 | a,1:m |
    %    c1 | c1 |
    %    }
    %  }
    %}
  >>
  \layout { }
  \midi { }
}
