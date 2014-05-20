package com.tencent.mm.plugin.voicereminder.a;

import com.tencent.mm.compatible.g.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;

final class w
  implements Runnable
{
  w(u paramu)
  {
  }

  public final void run()
  {
    long l = System.currentTimeMillis() - u.j(this.ePp);
    aa.d("MicroMsg.VoiceRemindService", "Try Run service runningFlag:" + u.e(this.ePp) + " timeWait:" + l + " sending:" + u.g(this.ePp) + " recving:" + u.f(this.ePp));
    if (u.e(this.ePp))
    {
      if (l < 60000L)
        return;
      aa.e("MicroMsg.VoiceRemindService", "ERR: Try Run service runningFlag:" + u.e(this.ePp) + " timeWait:" + l + ">=MAX_TIME_WAIT sending:" + u.g(this.ePp) + " recving:" + u.f(this.ePp));
    }
    u.k(this.ePp);
    u.b(this.ePp);
    u.a(this.ePp, 3);
    u.a(this.ePp);
    this.ePp.ctI.reset();
    u.l(this.ePp).bO(10L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.w
 * JD-Core Version:    0.6.2
 */