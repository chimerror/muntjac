\language "english"
\version "2.18.2"
\header {
  title = "Tay's Theme"
  composer = "Chimerror"
}
\score {
  <<
    \new Staff = "Soprano" {
      \relative c {
        \set Staff.instrumentName = #"E. Guitar"
        \set Staff.shortInstrumentName = #"EG"
        \set Staff.midiInstrument = #"electric guitar (clean)"
        \key c \major
        \time 4/4
        \tempo 4 = 143
        r1 | r1

        e16 e e e e e e e e e e e e e e e | e16 e e e e e e e e e e e e e e e |
        e16 e e e e e gs gs a a a a f f f f | b16 b b b b b ds ds c c c c b b b b |
        b16 b b b b b b b b b b b b b b b | b16 b b b b b b b b b b b b b b b |

        e,16 e e e e e e e e e e e e e e e | e16 e e e e e e e e e e e e e e e |
        e16 e e e e e gs gs a a a a f f f f | b16 b b b b b ds ds c c c c b b b b |
        b16 b b b b b b b b b b b b b b b | b16 b b b b b b b b b b b b b b b |

        c16 c b b b b c c b b b b a a a a | b16 b a a a a b b a a a a gs gs e e |
        c'16 c b b b b c c b b b b a a a a | b16 b a a a a b b a a a a gs gs e e |
        e16 e e e e e e e e e e e e e e e | c'16 c c c c c c c gs gs gs gs f f f f |

        e16 e e e e e e e e e e e e e e e | e16 e e e e e e e e e e e e e e e |
        e16 e e e e e gs gs a a a a f f f f | b16 b b b b b ds ds c c c c b b b b |
        b16 b b b b b b b b b b b b b b b | b16 b b b b b b b b b b b b b b b |

        e,16 e e e e e e e e e e e e e e e | e16 e e e e e e e e e e e e e e e |
        e16 e e e e e gs gs a a a a f f f f | b16 b b b b b ds ds c c c c b b b b |
        b16 b b b b b b b b b b b b b b b | b16 b b b b b b b b b b b b b b b |

        c16 c b b b b c c b b b b a a a a | b16 b a a a a b b a a a a gs gs e e |
        c'16 c b b b b c c b b b b a a a a | b16 b a a a a b b a a a a gs gs e e |
        e16 e e e e e e e e e e e e e e e | c'16 c c c c c c c gs gs gs gs f f f f |

        e16 e e e e e e e e e e e e e e e | e16 e e e e e e e e e e e e e e e |
        e16 e e e e e e e e e e e e e e e | e16 e e e e e e e e e e e e e e e |

        c'1 | r8 ds c ds c4 a4 |
        r8 a8 gs8 a8 f4 f4 | r8 f8 e8 f8 ds4 ds4 |
        r8 ds8 c8 ds8 c4 c4 | e1

        c'1 | r8 ds c ds c4 a4 |
        r8 a8 gs8 a8 f4 f4 | r8 f8 e8 f8 ds4 ds4 |
        r8 ds8 c8 ds8 c4 c4 | e1
      }
    }
    \new Staff = "Bass" {
      \relative c, {
        \set Staff.instrumentName = #"Bass"
        \set Staff.shortInstrumentName = #"B"
        \set Staff.midiInstrument = #"electric bass (finger)"
        \key c \major
        \clef bass
        e2 e | e2 e |

        e2 e | e2 e |
        e2 e | e2 e |
        e2 e | e2 e |

        e2 e | e2 e |
        e2 e | e2 e |
        e2 e | e2 e |

        f2 f | f2 f |
        f2 f | f2 f |
        f2 f | f2 f |

        e2 e | e2 e |
        e2 e | e2 e |
        e2 e | e2 e |

        e2 e | e2 e |
        e2 e | e2 e |
        e2 e | e2 e |

        f2 f | f2 f |
        f2 f | f2 f |
        f2 f | f2 f |

        e2 e | e2 e |
        e2 e | e2 e |

        e2 e | e2 e |
        f2 f | f2 f |
        e2 e | e2 e |

        e2 e | e2 e |
        f2 f | f2 f |
        e2 e | e2 e |
      }
    }
    \drums {
      r1 | r1 |

      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |

      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |

      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |

      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |

      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |

      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |

      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |

      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |

      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
      bd4 sn8 sn8 bd4 sn 4 | bd4 sn8 sn8 bd4 sn 4 |
    }
  >>
  \layout { }
  \midi { }
}
