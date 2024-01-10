let isPlaying = false;

function toggle_play_pause() {
   const audioPlayer = document.getElementById('audio_player');
   const playButton = document.getElementById('play_button');
   const pauseButton = document.getElementById('pause_button');

   if (isPlaying) {
      audioPlayer.pause();  // Pause the audio
      console.log('Pausing the music');
      playButton.style.display = 'block';
      pauseButton.style.display = 'none';
   } else {
      audioPlayer.play();
      console.log('Playing the music');
      playButton.style.display = 'none';
      pauseButton.style.display = 'block';
   }

   isPlaying = !isPlaying;
}