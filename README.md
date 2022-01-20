# frankfurtoder-rockt.de

Musicians from Frankfurt (Oder), Germany, Europe

## Build process in multi stage build

1. FROM buildbox with git clone the music player repository
2. Install the music player dependencies
3. Override the playlist and assets
4. Build the music player
5. FROM netresearch/node-webserver copy all files to the webserver

