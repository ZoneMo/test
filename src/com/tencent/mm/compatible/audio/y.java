package com.tencent.mm.compatible.audio;

import com.tencent.mm.sdk.platformtools.aa;
import java.io.FileOutputStream;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;

final class y extends Thread
{
  private y(v paramv)
  {
  }

  public final void run()
  {
    while (!v.a(this.ccN))
    {
      boolean bool;
      synchronized (this.ccN)
      {
        bool = v.b(this.ccN);
        aa.d("MicroMsg.SimpleMediaRecorder", "ThreadAmr in :" + bool + " cnt :" + v.c(this.ccN).size());
        if (bool)
          if (v.c(this.ccN).isEmpty())
            break;
      }
      w localw;
      try
      {
        localw = (w)v.c(this.ccN).poll(200L, TimeUnit.MILLISECONDS);
        if (localw != null)
          break label167;
        aa.d("MicroMsg.SimpleMediaRecorder", "poll byte null file:" + v.d(this.ccN));
        continue;
        localObject = finally;
        throw localObject;
      }
      catch (InterruptedException localInterruptedException)
      {
        aa.d("MicroMsg.SimpleMediaRecorder", "ThreadAmr poll null");
      }
      continue;
      label167: v.a(this.ccN, v.c(this.ccN).size());
      if ((v.e(this.ccN) > 10) || (bool))
      {
        aa.w("MicroMsg.SimpleMediaRecorder", "speed up amrcodec queue:" + v.e(this.ccN) + " stop:" + bool);
        v.b(this.ccN, 0);
      }
      while (true)
      {
        if ((v.pA().count >= 10) && (v.pA().ccM > 240L))
          v.b(this.ccN, 0);
        v.a(this.ccN, localw, v.f(this.ccN));
        break;
        if (v.e(this.ccN) < 9)
          v.b(this.ccN, 1);
      }
    }
    try
    {
      v.g(this.ccN).close();
      if (!v.a(this.ccN))
      {
        SimpleMediaRecorder.py();
        aa.d("MicroMsg.SimpleMediaRecorder", "finish Thread :" + v.d(this.ccN));
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        aa.e("MicroMsg.SimpleMediaRecorder", "close amr file:" + v.d(this.ccN) + "msg:" + localException.getMessage());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.compatible.audio.y
 * JD-Core Version:    0.6.2
 */