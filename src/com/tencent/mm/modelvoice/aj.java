package com.tencent.mm.modelvoice;

import android.os.Handler;
import com.tencent.mm.compatible.g.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class aj extends Thread
{
  Handler handler;

  public aj(af paramaf)
  {
    this.handler = new ak(this, paramaf);
  }

  public final void run()
  {
    if (af.d(this.cCv) == null)
    {
      aa.e("MicroMsg.SceneVoice.Recorder", "Stop Record Failed recorder == null");
      return;
    }
    synchronized (this.cCv)
    {
      if (!af.d(this.cCv).hk(bi.n(af.a(this.cCv), true)))
      {
        bi.hv(af.a(this.cCv));
        af.e(this.cCv);
        aa.d("MicroMsg.SceneVoice.Recorder", "Thread Start Record  Error fileName[" + af.a(this.cCv) + "]");
        af.f(this.cCv);
        af.a(this.cCv, cj.FE());
        aa.d("MicroMsg.SceneVoice.Recorder", "Thread Started Record fileName[" + af.a(this.cCv) + "] time:" + cj.O(af.h(this.cCv)));
        this.handler.sendEmptyMessageDelayed(0, 1L);
        return;
      }
      af.g(this.cCv).requestFocus();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.aj
 * JD-Core Version:    0.6.2
 */