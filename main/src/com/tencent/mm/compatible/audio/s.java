package com.tencent.mm.compatible.audio;

import android.media.AudioRecord;
import android.os.Process;
import com.tencent.mm.sdk.platformtools.aa;

final class s extends Thread
{
  s(o paramo)
  {
  }

  public final void run()
  {
    if ((o.m(this.ccd) == 1) || (o.m(this.ccd) == 2))
      Process.setThreadPriority(-19);
    while (true)
    {
      if (o.n(this.ccd))
        synchronized (o.o(this.ccd))
        {
          boolean bool = o.d(this.ccd);
          if (!bool);
        }
      try
      {
        o.o(this.ccd).wait();
        label69: if (o.j(this.ccd) == null)
        {
          o.p(this.ccd);
          continue;
          localObject = finally;
          throw localObject;
        }
        if (o.k(this.ccd))
          o.a(this.ccd, new byte[o.a(this.ccd)]);
        int i = o.j(this.ccd).read(o.l(this.ccd), 0, o.a(this.ccd));
        if (o.a(this.ccd) != i)
          aa.d("MicroMsg.MMPcmRecorder", "read len " + i);
        if (i < o.a(this.ccd))
          aa.d("MicroMsg.MMPcmRecorder", "read too fast? sleep 10 ms");
        try
        {
          Thread.sleep(10L);
          label210: if ((o.l(this.ccd) != null) && (o.g(this.ccd) != null) && (i > 0))
          {
            aa.d("MicroMsg.MMPcmRecorder", "Timer RecordThread: calling audioRecord.read  ret:" + i + ",dataBuffer.length:" + o.l(this.ccd).length);
            if (i > o.l(this.ccd).length)
              i = o.l(this.ccd).length;
            if (o.m(this.ccd) != 1)
              break label507;
            if (o.f(this.ccd) != null)
            {
              o.a(this.ccd, o.f(this.ccd).c(o.l(this.ccd), i));
              if (o.h(this.ccd) == 0)
                break label459;
              aa.d("MicroMsg.MMPcmRecorder", "Timer RecordThread: WriteToBuffer Failed m_ret:" + o.h(this.ccd) + " Current timer Buffer length:" + o.f(this.ccd).oY());
            }
          }
          while (true)
          {
            aa.d("MicroMsg.MMPcmRecorder", "Debug_Q RecordThread read " + i + " bytes data costing " + (System.currentTimeMillis() - o.q(this.ccd)) + " ms from the last call!");
            o.d(this.ccd, System.currentTimeMillis());
            break;
            label459: aa.d("MicroMsg.MMPcmRecorder", "Timer RecordThread: WriteToBuffer OK     m_ret:" + o.h(this.ccd) + " Current timer Buffer length:" + o.f(this.ccd).oY());
            continue;
            label507: if (o.g(this.ccd) != null)
              o.g(this.ccd).e(o.l(this.ccd), i);
          }
        }
        catch (InterruptedException localInterruptedException1)
        {
          break label210;
        }
        return;
      }
      catch (InterruptedException localInterruptedException2)
      {
        break label69;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.s
 * JD-Core Version:    0.6.2
 */