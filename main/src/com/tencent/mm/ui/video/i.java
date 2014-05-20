package com.tencent.mm.ui.video;

import android.view.MotionEvent;
import android.view.View;
import android.view.View.OnTouchListener;
import com.tencent.mm.ui.base.VideoView;

final class i
  implements View.OnTouchListener
{
  i(VideoPlayerUI paramVideoPlayerUI)
  {
  }

  public final boolean onTouch(View paramView, MotionEvent paramMotionEvent)
  {
    if (VideoPlayerUI.c(this.hsO).isPlaying())
      VideoPlayerUI.d(this.hsO);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.i
 * JD-Core Version:    0.6.2
 */