package com.tencent.mm.ui.video;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ImageButton;

final class af
  implements View.OnClickListener
{
  af(VideoRecorderUI paramVideoRecorderUI)
  {
  }

  public final void onClick(View paramView)
  {
    VideoRecorderUI.o(this.htr).setEnabled(false);
    VideoRecorderUI.p(this.htr).sendEmptyMessageDelayed(0, 3000L);
    VideoRecorderUI.a(this.htr, true);
    VideoRecorderUI.h(this.htr).aPe();
    if ((VideoRecorderUI.h(this.htr).a(this.htr, VideoRecorderUI.q(this.htr)) != 0) || (VideoRecorderUI.h(this.htr).d(VideoRecorderUI.r(this.htr)) != 0))
      VideoRecorderUI.s(this.htr);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.af
 * JD-Core Version:    0.6.2
 */