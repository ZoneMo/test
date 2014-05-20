package com.tencent.mm.pluginsdk.module.media;

import android.os.Handler;
import android.os.Message;
import android.widget.TextView;

final class i extends Handler
{
  i(MusicPlayerUI paramMusicPlayerUI)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    switch (paramMessage.what)
    {
    default:
      return;
    case 65537:
    }
    int i = ((Integer)paramMessage.obj).intValue();
    ((TextView)this.fjQ.findViewById(com.tencent.mm.i.aRD)).setVisibility(i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.module.media.i
 * JD-Core Version:    0.6.2
 */