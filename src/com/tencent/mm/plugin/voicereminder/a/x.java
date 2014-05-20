package com.tencent.mm.plugin.voicereminder.a;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.az;

final class x
  implements az
{
  x(u paramu)
  {
  }

  public final boolean ok()
  {
    aa.d("MicroMsg.VoiceRemindService", "onTimerExpired");
    try
    {
      u.h(this.ePp);
      label14: return false;
    }
    catch (Exception localException)
    {
      break label14;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.x
 * JD-Core Version:    0.6.2
 */