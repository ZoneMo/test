package com.tencent.mm.ui.base;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.widget.MediaController;

final class em
  implements MediaPlayer.OnPreparedListener
{
  em(VideoView paramVideoView)
  {
  }

  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    VideoView.c(this.gFu);
    if (VideoView.d(this.gFu) != null)
      VideoView.d(this.gFu).onPrepared(VideoView.e(this.gFu));
    if (VideoView.f(this.gFu) != null)
      VideoView.f(this.gFu).setEnabled(true);
    VideoView.a(this.gFu, paramMediaPlayer.getVideoWidth());
    VideoView.b(this.gFu, paramMediaPlayer.getVideoHeight());
    this.gFu.aHV();
    if ((VideoView.a(this.gFu) != 0) && (VideoView.b(this.gFu) != 0))
    {
      if (VideoView.g(this.gFu))
      {
        VideoView.e(this.gFu).start();
        VideoView.h(this.gFu);
      }
      if ((VideoView.i(this.gFu) == VideoView.a(this.gFu)) && (VideoView.j(this.gFu) == VideoView.b(this.gFu)))
      {
        if (VideoView.k(this.gFu) != 0)
        {
          VideoView.e(this.gFu).seekTo(VideoView.k(this.gFu));
          VideoView.l(this.gFu);
        }
        if (!VideoView.g(this.gFu))
          break label237;
        if (VideoView.f(this.gFu) != null)
          VideoView.f(this.gFu).show();
      }
    }
    label237: 
    do
    {
      do
        return;
      while ((this.gFu.isPlaying()) || ((VideoView.k(this.gFu) == 0) && (this.gFu.getCurrentPosition() <= 0)) || (VideoView.f(this.gFu) == null));
      VideoView.f(this.gFu).show(0);
      return;
      if (VideoView.k(this.gFu) != 0)
      {
        VideoView.e(this.gFu).seekTo(VideoView.k(this.gFu));
        VideoView.l(this.gFu);
      }
    }
    while (!VideoView.g(this.gFu));
    VideoView.e(this.gFu).start();
    VideoView.h(this.gFu);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.em
 * JD-Core Version:    0.6.2
 */