package com.tencent.mm.plugin.voicereminder.a;

import android.os.Handler;
import com.tencent.mm.modelvoice.az;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;

final class s extends Thread
{
  Handler handler;

  public s(o paramo)
  {
    this.handler = new t(this, paramo);
  }

  public final void run()
  {
    if (o.e(this.ePm) == null)
    {
      aa.e("MicroMsg.VoiceRemindRecorder", "Stop Record Failed recorder == null");
      return;
    }
    synchronized (this.ePm)
    {
      if (!o.e(this.ePm).hk(n.B(o.a(this.ePm), true)))
      {
        o.pn(o.a(this.ePm));
        o.f(this.ePm);
        aa.d("MicroMsg.VoiceRemindRecorder", "Thread Start Record  Error fileName[" + o.a(this.ePm) + "]");
        o.g(this.ePm);
      }
      o.a(this.ePm, au.FE());
      aa.d("MicroMsg.VoiceRemindRecorder", "Thread Started Record fileName[" + o.a(this.ePm) + "] time:" + au.O(o.h(this.ePm)));
      this.handler.sendEmptyMessageDelayed(0, 1L);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.voicereminder.a.s
 * JD-Core Version:    0.6.2
 */