package com.tencent.mm.ui.tools;

import android.os.Handler;
import android.os.Message;
import android.view.MotionEvent;
import java.util.TimerTask;

final class bj extends TimerTask
{
  bj(bi parambi, MotionEvent paramMotionEvent)
  {
  }

  public final void run()
  {
    if (CropImageView.z(this.hiG.hiE))
    {
      Message localMessage = new Message();
      localMessage.what = 4661;
      localMessage.obj = this.hiF;
      CropImageView.l(this.hiG.hiE).sendMessage(localMessage);
      CropImageView.c(this.hiG.hiE, false);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.bj
 * JD-Core Version:    0.6.2
 */