#!/usr/bin/env python

import sys
import dbus
import argparse

parser = argparse.ArgumentParser()
parser.add_argument(
    "-f",
    "--format",
    type=str,
    metavar="custom format",
    dest="custom_format",
    default="{artist}: {song}",
)
args = parser.parse_args()


def get_spotify_info():
    try:
        session_bus = dbus.SessionBus()
        spotify_bus = session_bus.get_object(
            "org.mpris.MediaPlayer2.spotify", "/org/mpris/MediaPlayer2"
        )
        spotify_properties = dbus.Interface(
            spotify_bus, "org.freedesktop.DBus.Properties"
        )
        metadata = spotify_properties.Get("org.mpris.MediaPlayer2.Player", "Metadata")

        artist = metadata["xesam:artist"][0]
        song = metadata["xesam:title"]

        return {"artist": artist, "song": song}
    except:
        return None


def main():
    info = get_spotify_info()
    if info is not None:
        print(args.custom_format.format(artist=info["artist"], song=info["song"]))
    else:
        print("")


if __name__ == "__main__":
    main()
