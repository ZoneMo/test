package com.tencent.mm.ui.video;

import android.os.Handler;
import android.os.Message;
import android.widget.ProgressBar;

final class r extends Handler
{
  r(VideoRecorderPreviewUI paramVideoRecorderPreviewUI)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    VideoRecorderPreviewUI.b(this.hsU).setVisibility(8);
    this.hsU.aFd();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.r
 * JD-Core Version:    0.6.2
 */