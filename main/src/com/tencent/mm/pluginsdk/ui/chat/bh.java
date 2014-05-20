package com.tencent.mm.pluginsdk.ui.chat;

import android.os.Handler;
import com.tencent.mm.sdk.platformtools.aa;

final class bh extends Thread
{
  bh(bd parambd, String paramString, Handler paramHandler)
  {
  }

  public final void run()
  {
    if (this.frj.ay(this.exj))
    {
      this.fqY.sendEmptyMessage(0);
      return;
    }
    aa.d("MicroMsg.SuggestEmoticonBubble", "check false");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.bh
 * JD-Core Version:    0.6.2
 */