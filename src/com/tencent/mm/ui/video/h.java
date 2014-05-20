package com.tencent.mm.ui.video;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.tencent.mm.ui.base.VideoView;

final class h
  implements MediaPlayer.OnErrorListener
{
  h(VideoPlayerUI paramVideoPlayerUI)
  {
  }

  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    VideoPlayerUI.c(this.hsO).stopPlayback();
    com.tencent.mm.ui.base.h.c(this.hsO, 2131166722, 2131165735);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.h
 * JD-Core Version:    0.6.2
 */