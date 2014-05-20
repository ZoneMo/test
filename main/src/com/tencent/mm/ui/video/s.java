package com.tencent.mm.ui.video;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.tencent.mm.n;
import com.tencent.mm.ui.base.VideoView;
import com.tencent.mm.ui.base.h;

final class s
  implements MediaPlayer.OnErrorListener
{
  s(VideoRecorderPreviewUI paramVideoRecorderPreviewUI)
  {
  }

  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    VideoRecorderPreviewUI.c(this.hsU).stopPlayback();
    h.c(this.hsU, n.bEq, n.bEp);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.s
 * JD-Core Version:    0.6.2
 */