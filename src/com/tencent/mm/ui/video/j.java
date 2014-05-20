package com.tencent.mm.ui.video;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnPreparedListener;
import android.widget.ImageButton;
import android.widget.TextView;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;

final class j
  implements MediaPlayer.OnPreparedListener
{
  j(VideoPlayerUI paramVideoPlayerUI)
  {
  }

  public final void onPrepared(MediaPlayer paramMediaPlayer)
  {
    aa.d("MicroMsg.VideoPlayerActivity", com.tencent.mm.compatible.g.j.qf() + " onPrepared");
    aa.d("MicroMsg.VideoPlayerActivity", com.tencent.mm.compatible.g.j.qf() + " onPrepared");
    VideoPlayerUI.a(this.hsO);
    VideoPlayerUI.b(this.hsO).setVisibility(8);
    VideoPlayerUI.f(this.hsO).setText(au.eQ(VideoPlayerUI.e(this.hsO)));
    VideoPlayerUI.h(this.hsO).setText(au.K(VideoPlayerUI.g(this.hsO)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.j
 * JD-Core Version:    0.6.2
 */