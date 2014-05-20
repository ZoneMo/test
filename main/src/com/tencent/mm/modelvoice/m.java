package com.tencent.mm.modelvoice;

import com.tencent.mm.sdk.platformtools.aa;
import java.io.FileOutputStream;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.TimeUnit;

final class m extends Thread
{
  private m(j paramj)
  {
  }

  public final void run()
  {
    while (!j.a(this.cBA))
    {
      boolean bool;
      synchronized (this.cBA)
      {
        bool = j.b(this.cBA);
        aa.d("MicroMsg.MediaRecorder", "ThreadAmr in :" + bool + " cnt :" + j.c(this.cBA).size());
        if (bool)
          if (j.c(this.cBA).isEmpty())
            break;
      }
      k localk;
      try
      {
        localk = (k)j.c(this.cBA).poll(200L, TimeUnit.MILLISECONDS);
        if (localk != null)
          break label171;
        aa.d("MicroMsg.MediaRecorder", "poll byte null file:" + j.d(this.cBA));
        continue;
        localObject = finally;
        throw localObject;
      }
      catch (InterruptedException localInterruptedException)
      {
        aa.d("MicroMsg.MediaRecorder", "ThreadAmr poll null");
      }
      continue;
      label171: j.a(this.cBA, j.c(this.cBA).size());
      if ((j.e(this.cBA) > 10) || (bool))
      {
        aa.w("MicroMsg.MediaRecorder", "speed up amrcodec queue:" + j.e(this.cBA) + " stop:" + bool);
        j.b(this.cBA, 0);
      }
      while (true)
      {
        if ((j.Eh().count >= 10) && (j.Eh().ccM > 240L))
          j.b(this.cBA, 0);
        j.a(this.cBA, localk, j.f(this.cBA));
        break;
        if (j.e(this.cBA) < 9)
          j.b(this.cBA, 1);
      }
    }
    try
    {
      j.g(this.cBA).close();
      if (!j.a(this.cBA))
      {
        j.h(this.cBA);
        MediaRecorder.Eg();
        aa.d("MicroMsg.MediaRecorder", "finish Thread :" + j.d(this.cBA));
      }
      return;
    }
    catch (Exception localException)
    {
      while (true)
        aa.e("MicroMsg.MediaRecorder", "close amr file:" + j.d(this.cBA) + "msg:" + localException.getMessage());
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.m
 * JD-Core Version:    0.6.2
 */