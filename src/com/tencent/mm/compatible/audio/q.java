package com.tencent.mm.compatible.audio;

import com.tencent.mm.sdk.platformtools.aa;
import java.util.TimerTask;

final class q extends TimerTask
{
  private int cce = 0;
  private int ccf = 2 * o.a(this.ccd);
  private int ccg = o.a(this.ccd);
  byte[] cch = new byte[this.ccf];

  q(o paramo)
  {
  }

  public final void run()
  {
    o.a(this.ccd, System.currentTimeMillis());
    aa.d("MicroMsg.MMPcmRecorder", "Timer RecordThread: calling timer run  @m_dbgTimeInMs:" + o.b(this.ccd) + " DeltaT: " + (o.b(this.ccd) - o.c(this.ccd)) + " #timerCnt:" + this.cce + " $isPause:" + o.d(this.ccd));
    o.b(this.ccd, o.b(this.ccd));
    this.cce = (1 + this.cce);
    while (true)
    {
      synchronized (o.e(this.ccd))
      {
        if ((!o.d(this.ccd)) && (o.f(this.ccd) != null))
        {
          int i = 1;
          int j = (int)(0.8D * o.f(this.ccd).oX());
          if (j < 8 * o.a(this.ccd))
            j = 8 * o.a(this.ccd);
          if (o.f(this.ccd).oY() <= j)
            break label356;
          i = 8;
          break label356;
          if (k < i)
          {
            if (o.f(this.ccd) != null)
              o.a(this.ccd, o.f(this.ccd).d(this.cch, this.ccg));
            long l1 = System.currentTimeMillis();
            if ((o.g(this.ccd) != null) && (o.h(this.ccd) == 0))
              o.g(this.ccd).e(this.cch, this.ccg);
            long l2 = System.currentTimeMillis();
            aa.d("MicroMsg.MMPcmRecorder", "Timer RecordThread: mOnRecDataListener.OnRecPcmDataReady costs " + (l2 - l1) + " ms");
            k++;
            continue;
          }
        }
        return;
      }
      label356: int k = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.q
 * JD-Core Version:    0.6.2
 */