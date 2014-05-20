package com.tencent.mm.pluginsdk.ui.chat;

import android.os.Handler;
import com.tencent.mm.sdk.platformtools.aa;

final class ax extends Thread
{
  ax(au paramau, Handler paramHandler)
  {
  }

  public final void run()
  {
    if (au.d(this.fqX))
    {
      this.fqY.sendEmptyMessage(0);
      return;
    }
    aa.d("MicroMsg.RecentImageBubble", "check false");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.ax
 * JD-Core Version:    0.6.2
 */