musician(sandro, saxophone).
musician(will, guitar).
musician(nick, guitar).
musician(mash, tambourine).
musician(balint, flute).

instrument_genre(guitar, rock).
instrument_genre(saxophone, jazz).
instrument_genre(tambourine, samba).
instrument_genre(flute, classical).

musician_genre(Musician, Genre):- musician(Musician, Instrument), instrument_genre(Instrument, Genre).