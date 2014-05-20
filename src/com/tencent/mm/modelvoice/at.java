package com.tencent.mm.modelvoice;

import android.os.Handler;
import com.tencent.mm.compatible.g.a;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

final class at extends Thread
{
  Handler handler;

  public at(ap paramap)
  {
    this.handler = new au(this, paramap);
  }

  public final void run()
  {
    if (ap.e(this.cCB) == null)
    {
      aa.e("MicroMsg.SceneVoice.Recorder", "Stop Record Failed recorder == null");
      return;
    }
    synchronized (this.cCB)
    {
      if (!ap.e(this.cCB).hk(bi.fU(ap.a(this.cCB))))
      {
        bi.hv(ap.a(this.cCB));
        ap.f(this.cCB);
        aa.d("MicroMsg.SceneVoice.Recorder", "Thread Start Record  Error fileName[" + ap.a(this.cCB) + "]");
        ap.g(this.cCB);
        ap.a(this.cCB, cj.FE());
        aa.d("MicroMsg.SceneVoice.Recorder", "Thread Started Record fileName[" + ap.a(this.cCB) + "] time:" + cj.O(ap.i(this.cCB)));
        this.handler.sendEmptyMessageDelayed(0, 1L);
        return;
      }
      ap.h(this.cCB).requestFocus();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.at
 * JD-Core Version:    0.6.2
 */