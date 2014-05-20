package com.tencent.mm.ui.video;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.os.Handler;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import com.tencent.mm.ui.base.VideoView;

final class t
  implements MediaPlayer.OnPreparedListener
{
  t(VideoRecorderPreviewUI paramVideoRecorderPreviewUI)
  {
  }

  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    aa.d("MicroMsg.VideoRecorderPreviewUI", j.qf() + " onPrepared");
    aa.d("MicroMsg.VideoRecorderPreviewUI", j.qf() + " onPrepared");
    VideoRecorderPreviewUI.c(this.hsU).start();
    VideoRecorderPreviewUI.d(this.hsU).sendEmptyMessageDelayed(0, 3000L);
    VideoRecorderPreviewUI.e(this.hsU).bO(100L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.t
 * JD-Core Version:    0.6.2
 */