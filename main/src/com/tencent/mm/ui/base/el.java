package com.tencent.mm.ui.base;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnVideoSizeChangedListener;
import com.tencent.mm.sdk.platformtools.aa;

final class el
  implements MediaPlayer.OnVideoSizeChangedListener
{
  el(VideoView paramVideoView)
  {
  }

  public final void onVideoSizeChanged(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    VideoView.a(this.gFu, paramMediaPlayer.getVideoWidth());
    VideoView.b(this.gFu, paramMediaPlayer.getVideoHeight());
    aa.v("MicroMsg.VideoView", "on size change size:( " + VideoView.a(this.gFu) + " , " + VideoView.b(this.gFu) + " )");
    if (VideoView.a(this.gFu) != 0)
      VideoView.b(this.gFu);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.el
 * JD-Core Version:    0.6.2
 */