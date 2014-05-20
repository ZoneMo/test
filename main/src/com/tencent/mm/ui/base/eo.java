package com.tencent.mm.ui.base;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import android.widget.MediaController;
import com.tencent.mm.sdk.platformtools.aa;

final class eo
  implements MediaPlayer.OnErrorListener
{
  eo(VideoView paramVideoView)
  {
  }

  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    aa.d("MicroMsg.VideoView", "Error: " + paramInt1 + "," + paramInt2);
    if (VideoView.f(this.gFu) != null)
      VideoView.f(this.gFu).hide();
    if ((VideoView.n(this.gFu) != null) && (VideoView.n(this.gFu).onError(VideoView.e(this.gFu), paramInt1, paramInt2)))
      return true;
    this.gFu.getWindowToken();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.eo
 * JD-Core Version:    0.6.2
 */