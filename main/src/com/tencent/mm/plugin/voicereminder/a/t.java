package com.tencent.mm.plugin.voicereminder.a;

import android.os.Handler;
import android.os.Message;
import com.tencent.mm.sdk.platformtools.aa;

final class t extends Handler
{
  t(s params, o paramo)
  {
  }

  public final void handleMessage(Message paramMessage)
  {
    if (o.c(this.ePo.ePm) <= 0)
      return;
    StringBuilder localStringBuilder = new StringBuilder("On Part :");
    if (this.ePo.ePm.cCr == null);
    for (boolean bool = true; ; bool = false)
    {
      aa.d("MicroMsg.VoiceRemindRecorder", bool);
      o.d(this.ePo.ePm);
      if (this.ePo.ePm.cCr == null)
        break;
      this.ePo.ePm.cCr.wI();
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.t
 * JD-Core Version:    0.6.2
 */