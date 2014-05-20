package com.tencent.mm.ui.base;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import android.widget.MediaController;

final class en
  implements MediaPlayer.OnCompletionListener
{
  en(VideoView paramVideoView)
  {
  }

  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (VideoView.f(this.gFu) != null)
      VideoView.f(this.gFu).hide();
    if (VideoView.m(this.gFu) != null)
      VideoView.m(this.gFu).onCompletion(VideoView.e(this.gFu));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.en
 * JD-Core Version:    0.6.2
 */