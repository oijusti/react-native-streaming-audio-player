import { NativeModules, NativeEventEmitter } from 'react-native';

const { RNAudioPlayer } = NativeModules;

export default RNAudioPlayer;

const PlayerEvents = new NativeEventEmitter(RNAudioPlayer);

export { PlayerEvents };
