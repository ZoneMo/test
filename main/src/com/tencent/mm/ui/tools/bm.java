package com.tencent.mm.ui.tools;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.TimerTask;

final class bm extends TimerTask
{
  public final void run()
  {
    aa.d("MicroMsg.CropImageView", "in timer task run");
    Message localMessage = new Message();
    if (CropImageView.j(this.hiE))
      localMessage.what = 4659;
    while (true)
    {
      CropImageView.l(this.hiE).sendMessage(localMessage);
      return;
      if (CropImageView.k(this.hiE))
        localMessage.what = 4658;
      else
        localMessage.what = 4660;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.bm
 * JD-Core Version:    0.6.2
 */