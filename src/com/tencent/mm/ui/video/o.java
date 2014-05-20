package com.tencent.mm.ui.video;

import android.widget.TextView;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;
import com.tencent.mm.ui.base.VideoView;

final class o
  implements az
{
  o(VideoPlayerUI paramVideoPlayerUI)
  {
  }

  public final boolean ok()
  {
    aa.v("MicroMsg.VideoPlayerActivity", "video time left:" + au.eQ(VideoPlayerUI.c(this.hsO).aHX() / 1000));
    int i = VideoPlayerUI.c(this.hsO).aHX() / 1000;
    if (i > VideoPlayerUI.e(this.hsO))
      i = VideoPlayerUI.e(this.hsO);
    VideoPlayerUI.n(this.hsO).setText(au.eQ(i));
    return VideoPlayerUI.c(this.hsO).aHX() >= 1000;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.o
 * JD-Core Version:    0.6.2
 */