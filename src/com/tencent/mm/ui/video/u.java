package com.tencent.mm.ui.video;

import android.os.Handler;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.ProgressBar;

final class u
  implements View.OnClickListener
{
  u(VideoRecorderPreviewUI paramVideoRecorderPreviewUI)
  {
  }

  public final void onClick(View paramView)
  {
    VideoRecorderPreviewUI.d(this.hsU).removeMessages(0);
    if (VideoRecorderPreviewUI.b(this.hsU).getVisibility() == 8)
    {
      VideoRecorderPreviewUI.b(this.hsU).setVisibility(0);
      this.hsU.aFe();
      VideoRecorderPreviewUI.d(this.hsU).sendEmptyMessageDelayed(0, 3000L);
      return;
    }
    this.hsU.aFd();
    VideoRecorderPreviewUI.b(this.hsU).setVisibility(8);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.u
 * JD-Core Version:    0.6.2
 */