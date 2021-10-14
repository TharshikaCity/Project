PImage img;
import processing.sound.*;
SoundFile song1, song2, song3, song4, song5;
boolean isPlaying;
FFT fft;                                 // Fourier transform of the sound signal
int NUM_BANDS = 256;
float baseLine = 600;

void setup()
{
  size(800, 600);
  song1= new SoundFile(this, "kickDrum.wav");
  song2= new SoundFile(this, "mandolin.mp3");
  song3= new SoundFile(this, "hihat.wav");
  song4= new SoundFile(this, "violin.mp3");
  song5= new SoundFile(this, "clarinet.mp3");
  isPlaying = true;
  fft = new FFT(this, NUM_BANDS);
}

void draw()
{
  background(0);
  fill(#B88BE5);
  textSize(20);
  text("Select a number from 1-5 and it will play an instrument below:", (width/2)-230, (height/2)-50);
  text("1.Kick Drum", (width/2)-200, (height/2));
  text("2.Mandolin", (width/2)-200, (height/2)+50);
  text("3.HiHat", (width/2)-200, (height/2)+100);
  text("4.Violin", (width/2)-200, (height/2)+150);
  text("5.Clarinet", (width/2)-200, (height/2)+200);

  if (key == '1')
  {
    //song1.play();
    frameRate(2);
    img = loadImage("download1.jpg"); // -- You'll need to add the image to load here ...
    image(img, (width/2)-100, 0);        // -- draws the image on the canvas at position 0, 0
    strokeWeight(5);
    stroke(255, 128);
    song1.play();
    stroke(142, 187, 82);
    strokeWeight(2);
    fft.input(song1);
    fft.analyze();    // Analyse the current sound being played.

    beginShape();
    for (int i=0; i<fft.spectrum.length*0.4; i=i+1)
    {
      float xPos = map(i, 0, fft.spectrum.length*0.4, 10, width-10);
      float yPos = map(sqrt(fft.spectrum[i]), 0, 1, baseLine, baseLine-height*0.7);
      vertex(xPos, yPos);
    }
    endShape();
    println("key pressed");
    frameRate(2);
    if (key == ' ')  // Toggle pause on or off.
    {
      if (isPlaying)
      {
        song1.pause();
        isPlaying = false;
      } else
      {
        song1.play();
        isPlaying = true;
      }
    }
  }

  if (key == '2')
  {
    frameRate(2);
    fft.input(song2);
    img = loadImage("download2.jpg");    // -- You'll need to add the image to load here ...
    image(img, (width/2)-100, 0);        // -- draws the image on the canvas at position 0, 0
    strokeWeight(5);
    stroke(255, 128);
    song2.play();
    fft.analyze();    // Analyse the current sound being played.

    beginShape();
    for (int i=0; i<fft.spectrum.length*0.4; i=i+1)
    {
      float xPos = map(i, 0, fft.spectrum.length*0.4, 10, width-10);
      float yPos = map(sqrt(fft.spectrum[i]), 0, 1, baseLine, baseLine-height*0.7);
      vertex(xPos, yPos);
    }
    endShape();
    if (key == ' ')  // Toggle pause on or off.
    {
      if (isPlaying)
      {
        song2.pause();
        isPlaying = false;
      } else
      {
        song2.play();
        isPlaying = true;
      }
    }
  }
  if (key == '3')
  {
    frameRate(2);
    fft.input(song3);
    img = loadImage("download3.jpg");    // -- You'll need to add the image to load here ...
    image(img, (width/2)-100, 0);        // -- draws the image on the canvas at position 0, 0
    strokeWeight(5);
    stroke(255, 128);
    song3.play();
    fft.analyze();    // Analyse the current sound being played.

    beginShape();
    for (int i=0; i<fft.spectrum.length*0.4; i=i+1)
    {
      float xPos = map(i, 0, fft.spectrum.length*0.4, 10, width-10);
      float yPos = map(sqrt(fft.spectrum[i]), 0, 1, baseLine, baseLine-height*0.7);
      vertex(xPos, yPos);
    }
    endShape();
    if (key == ' ')  // Toggle pause on or off.
    {
      if (isPlaying)
      {
        song3.pause();
        isPlaying = false;
      } else
      {
        song3.play();
        isPlaying = true;
      }
    }
  }
  if (key == '4')
  {
    frameRate(2);
    fft.input(song4);
    img = loadImage("download4.jpg");    // -- You'll need to add the image to load here ...
    image(img, (width/2)-100, 0);        // -- draws the image on the canvas at position 0, 0
    strokeWeight(5);
    stroke(255, 128);
    song4.play();
    fft.analyze();    // Analyse the current sound being played.

    beginShape();
    for (int i=0; i<fft.spectrum.length*0.4; i=i+1)
    {
      float xPos = map(i, 0, fft.spectrum.length*0.4, 10, width-10);
      float yPos = map(sqrt(fft.spectrum[i]), 0, 1, baseLine, baseLine-height*0.7);
      vertex(xPos, yPos);
    }
    endShape();
    if (key == ' ')  // Toggle pause on or off.
    {
      if (isPlaying)
      {
        song4.pause();
        isPlaying = false;
      } else
      {
        song4.play();
        isPlaying = true;
      }
    }
  }
  if (key == '5')
  {
    frameRate(2);
    fft.input(song5);
    img = loadImage("download5.jpg");    // -- You'll need to add the image to load here ...
    image(img, (width/2)-100, 0);        // -- draws the image on the canvas at position 0, 0
    strokeWeight(5);
    stroke(255, 128);
    song5.play();
    fft.analyze();    // Analyse the current sound being played.

    beginShape();
    for (int i=0; i<fft.spectrum.length*0.4; i=i+1)
    {
      float xPos = map(i, 0, fft.spectrum.length*0.4, 10, width-10);
      float yPos = map(sqrt(fft.spectrum[i]), 0, 1, baseLine, baseLine-height*0.7);
      vertex(xPos, yPos);
    }
    endShape();
    if (key == ' ')  // Toggle pause on or off.
    {
      if (isPlaying)
      {
        song5.pause();
        isPlaying = false;
      } else
      {
        song5.play();
        isPlaying = true;
      }
    }
  }
}
