package com.tencent.mm.ui.video;

import android.os.Handler;
import android.os.Message;
import android.widget.ImageButton;

final class ag extends Handler
{
  ag(VideoRecorderUI paramVideoRecorderUI)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    super.handleMessage(paramMessage);
    VideoRecorderUI.o(this.htr).setEnabled(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.video.ag
 * JD-Core Version:    0.6.2
 */