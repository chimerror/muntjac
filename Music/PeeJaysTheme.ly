\language "english"
\version "2.18.2"
\header {
  title = "PeeJay's Theme"
  composer = "Chimerror"
}
\score {
  <<
    \new Staff = "Soprano" {
      \relative g'' {
        \set Staff.instrumentName = #"Trumpet"
        \set Staff.shortInstrumentName = #"T"
        \set Staff.midiInstrument = #"trumpet"
        \key g \major
        \time 4/4
        \tempo 4 = 95
        r1 | r1 |
        r1 | r1 |

        a2 g16 fs16 e16 d16 c16 b16 r8 | b'2 a16 g16 fs16 e16 d16 c16 r8 |
        a'2 g16 fs16 e16 d16 c16 b16 r8 | b'2 a16 g16 fs16 e16 d16 c16 r8 |
        e2 d4. fs8 | e2 d4. fs8 |
        c2 b16 b16 r16 r16 b16 c16 d8 | fs2 e16 e16 r16 r16 e16 fs16 g8 |

        a2 g16 fs16 e16 d16 c16 b16 r8 | b'2 a16 g16 fs16 e16 d16 c16 r8 |
        a'2 g16 fs16 e16 d16 c16 b16 r8 | b'2 a16 g16 fs16 e16 d16 c16 r8 |
        e2 d4. fs8 | e2 d4. fs8 |
        c2 b16 b16 r16 r16 b16 c16 d8 | fs2 e16 e16 r16 r16 e16 fs16 g8 |

        g16 fs16 e16 d16 c16 b16 r8 g'16 fs16 e16 d16 c16 b16 r8 | a'16 g16 fs16 e16 d16 c16 r8 a'16 g16 fs16 e16 d16 c16 r8 |
        g'16 fs16 e16 d16 c16 b16 r8 g'16 fs16 e16 d16 c16 b16 r8 | a'16 g16 fs16 e16 d16 c16 r8 a'16 g16 fs16 e16 d16 c16 r8 |
        d16 d16 r16 r16 d16 e16 fs8 d16 d16 r16 r16 d16 e16 fs8 | d16 d16 r16 r16 d16 e16 fs8 d16 d16 r16 r16 d16 e16 fs8 |
        b,16 b16 r16 r16 b16 c16 d8 b16 b16 r16 r16 b16 c16 d8 | e16 e16 r16 r16 e16 fs16 g8 e16 e16 r16 r16 e16 fs16 g8 |

        a2 g16 fs16 e16 d16 c16 b16 r8 | b'2 a16 g16 fs16 e16 d16 c16 r8 |
        a'2 g16 fs16 e16 d16 c16 b16 r8 | b'2 a16 g16 fs16 e16 d16 c16 r8 |
        e2 d4. fs8 | e2 d4. fs8 |
        c2 b16 b16 r16 r16 b16 c16 d8 | fs2 e16 e16 r16 r16 e16 fs16 g8 |
      }
    }
    \new Staff = "Tenor" {
      \relative g {
        \set Staff.instrumentName = #"Piano"
        \set Staff.shortInstrumentName = #"P"
        \set Staff.midiInstrument = #"acoustic grand"
        \key g \major
        r1 | r1 |
        r1 | r1 |

        <b d>2 <b d>2 | <c e>2 <c e>2 |
        <b d>2 <b d>2 | <c e>2 <c e>2 |
        <fs a>4 <fs a>4 <fs a>4 <fs a>4 | <fs a>4 <fs a>4 <fs a>4 <fs a>4 |
        <d fs>4 <d fs>4 <d fs>4 <d fs>4 | <g, b>4 <g b>4 <g b>4 <g b>4 |

        <b d>2 <b d>2 | <c e>2 <c e>2 |
        <b d>2 <b d>2 | <c e>2 <c e>2 |
        <fs a>4 <fs a>4 <fs a>4 <fs a>4 | <fs a>4 <fs a>4 <fs a>4 <fs a>4 |
        <d fs>4 <d fs>4 <d fs>4 <d fs>4 | <g, b>4 <g b>4 <g b>4 <g b>4 |

        <b d>4 <b d>4 <b d>4 <b d>4 | <c e>4 <c e>4 <c e>4 <c e>4 |
        <b d>4 <b d>4 <b d>4 <b d>4 | <c e>4 <c e>4 <c e>4 <c e>4 |
        <fs a>2 <fs a>2 | <fs a>2 <fs a>2 |
        <d fs>2 <d fs>2 | <g b>2 <g b>2 |

        <b, d>2 <b d>2 | <c e>2 <c e>2 |
        <b d>2 <b d>2 | <c e>2 <c e>2 |
        <fs a>4 <fs a>4 <fs a>4 <fs a>4 | <fs a>4 <fs a>4 <fs a>4 <fs a>4 |
        <d fs>4 <d fs>4 <d fs>4 <d fs>4 | <g, b>4 <g b>4 <g b>4 <g b>4 |
      }
    }
    \new Staff = "bass" {
      \relative g {
        \set Staff.instrumentName = #"Bass"
        \set Staff.shortInstrumentName = #"B"
        \set Staff.midiInstrument = #"electric bass (finger)"
        \key g \major
        \clef bass
        g8 a8. g4 fs8. d8 b8 | a'8 b8. a4 g8. e8 c8 |
        g'8 a8. g4 fs8. d8 b8 | a'8 b8. a4 g8. e8 c8 |

        g'8 a8. g4 fs8. d8 b8 | a'8 b8. a4 g8. e8 c8 |
        g'8 a8. g4 fs8. d8 b8 | a'8 b8. a4 g8. e8 c8 |
        d8 e8 d8 r8 e8 d8 c8 b8 | d8 e8 d8 r8 e8 d8 c8 b8 |
        b8 c8 b8 r8 c8 b8 a8 g8 | e'8 fs8 e8 r8 fs8 e8 d8 c8 |

        g'8 a8. g4 fs8. d8 b8 | a'8 b8. a4 g8. e8 c8 |
        g'8 a8. g4 fs8. d8 b8 | a'8 b8. a4 g8. e8 c8 |
        d8 e8 d8 r8 e8 d8 c8 b8 | d8 e8 d8 r8 e8 d8 c8 b8 |
        b8 c8 b8 r8 c8 b8 a8 g8 | e'8 fs8 e8 r8 fs8 e8 d8 c8 |

        g'8 a8 g8 a8 r8 g8 fs8 e8 | a8 b8 a8 b8 r8 a8 g8 fs8 |
        g8 a8 g8 a8 r8 g8 fs8 e8 | a8 b8 a8 b8 r8 a8 g8 fs8 |
        d8 e8. d4 c8. a8 g8 | d'8 e8. d4 c8. a8 g8 |
        b8 c8. b4 a8. fs8 e8 | e'8 fs8. e4 d8. b8 a8 |

        g'8 a8. g4 fs8. d8 b8 | a'8 b8. a4 g8. e8 c8 |
        g'8 a8. g4 fs8. d8 b8 | a'8 b8. a4 g8. e8 c8 |
        d8 e8 d8 r8 e8 d8 c8 b8 | d8 e8 d8 r8 e8 d8 c8 b8 |
        b8 c8 b8 r8 c8 b8 a8 g8 | e'8 fs8 e8 r8 fs8 e8 d8 c8 |
      }
    }
    \drums {
      r1 | r1 |
      r1 | r1 |

      <bd hh>16 bd16 bd16 bd16 <sn hh>4 <bd hh>4 <bd sn hh>4 | <bd hh>16 bd16 bd16 bd16 <sn hh>4 <bd hh>4 <bd sn hh>4 |
      <bd hh>16 bd16 bd16 bd16 <sn hh>4 <bd hh>4 <bd sn hh>4 | <bd hh>16 bd16 bd16 bd16 <sn hh>4 <bd hh>4 <bd sn hh>4 |
      <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 | <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 |
      <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 | <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 |

      <bd hh>16 bd16 bd16 bd16 <sn hh>4 <bd hh>4 <bd sn hh>4 | <bd hh>16 bd16 bd16 bd16 <sn hh>4 <bd hh>4 <bd sn hh>4 |
      <bd hh>16 bd16 bd16 bd16 <sn hh>4 <bd hh>4 <bd sn hh>4 | <bd hh>16 bd16 bd16 bd16 <sn hh>4 <bd hh>4 <bd sn hh>4 |
      <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 | <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 |
      <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 | <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 |

      <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 | <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 |
      <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 | <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 |
      <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 | <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 |
      <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 | <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 |

      <bd hh>16 bd16 bd16 bd16 <sn hh>4 <bd hh>4 <bd sn hh>4 | <bd hh>16 bd16 bd16 bd16 <sn hh>4 <bd hh>4 <bd sn hh>4 |
      <bd hh>16 bd16 bd16 bd16 <sn hh>4 <bd hh>4 <bd sn hh>4 | <bd hh>16 bd16 bd16 bd16 <sn hh>4 <bd hh>4 <bd sn hh>4 |
      <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 | <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 |
      <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 | <bd hh>4 <sn hh>4 <bd hh>8 bd8 <bd sn hh>4 |
    }
    %\new Staff = "chcords" {
    %  \relative g' {
    %    \set Staff.instrumentName = #"Chords"
    %    \set Staff.shortInstrumentName = #"Ch"
    %    \set Staff.midiInstrument = #"acoustic grand"
    %    \key g \major
    %    \chordmode {
    %      g1:maj9 | a1:m9 |
    %      g1:maj9 | a1:m9 |
    %      d1:9 | d1:9 |
    %      b1:m9 | e1:m9 |
    %    }
    %  }
    %}
  >>
  \layout { }
  \midi { }
}
