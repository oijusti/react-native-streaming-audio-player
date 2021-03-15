# react-native-streaming-audio-player [![npm version](https://badge.fury.io/js/react-native-streaming-audio-player.svg)](https://badge.fury.io/js/react-native-streaming-audio-player)

Streaming audio player for iOS + Android

# Features

- Play remote streaming audio source
- Handle audio focus for...
  - incoming and outgoing calls
  - switching application contexts
- Control audio from notification and lock screen (**Android**)
- Control audio from control center and lock screen (**iOS**)
- Control audio from headsets


# Installation
First, install the library from npm:

```
npm install react-native-streaming-audio-player --save
```

Second, link the native dependencies.

```
react-native link react-native-streaming-audio-player
```

# Running a sample app
In the Example directory:
```
cd Examples
npm install
react-native run-ios or run-android
```

# Usage
```javascript
import React, { Component } from 'react';
import {
  View,
  Button,
  StyleSheet,
} from 'react-native';
import Player from 'react-native-streaming-audio-player';

export default class Example extends Component {
  constructor(props) {
    super(props);
    this.state = { currentTime: 0 }
    // this.onUpdatePosition = this.onUpdatePosition.bind(this);
  }

  onPlay() {
    let source = {
      url: "http://19173.live.streamtheworld.com:3690/RADIO_AAC_SC",
      title: "Test Audio",
      artist: "Radio",
      album_art_uri: "https://helpx.adobe.com/content/dam/help/en/stock/how-to/visual-reverse-image-search/jcr_content/main-pars/image/visual-reverse-image-search-v2_intro.jpg",
    };

    Player.play(source.url, {
      title: source.title,
      artist: source.artist,
      album_art_uri: source.album_art_uri,
    });
  }

  onPause() {
    Player.pause();
  }

  render() {
    return (
      <View style={styles.container}>
        <View style={{ flexDirection: 'row', alignSelf: 'stretch', justifyContent: 'space-around' }}>
          <Button
            title='Play'
            onPress={() => this.onPlay()}
            color='red'
          />
          <Button
            title='Pause'
            onPress={() => this.onPause()}
            color='red'
          />
        </View>
      </View>
    );
  }
}

const styles = StyleSheet.create({
  container: {
    flex: 1,
    justifyContent: 'center',
    alignItems: 'center',
  },
});
```

# API and Configuration
Player Control
- play(url: string, metadata: object)
  - metadata.title
  - metadata.artist
  - metadata.album_art_uri
- pause()
- stop()

Callbacks
- onPlaybackStateChanged
- onUpdatePosition

PlaybackState
- NONE
- PLAYING
- BUFFERING
- PAUSED
- STOPPED
- COMPLETED

PlayerAction
- Play
- Pause
- SkipToNext
- SkipToPrevious

# Roadmap
- [ ] Unit tests
- [ ] Clean up

# Contribute

# License
This project is licensed under the MIT License - see the LICENSE file for details
