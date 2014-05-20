package com.tencent.mm.modelvoice;

import android.media.AudioTrack;
import android.media.MediaPlayer.OnCompletionListener;
import android.media.MediaPlayer.OnErrorListener;
import android.os.Process;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.qqpinyin.voicerecoapi.a;
import java.io.FileInputStream;
import java.io.IOException;

final class ay extends Thread
{
  ay(av paramav)
  {
  }

  public final void run()
  {
    byte[] arrayOfByte;
    try
    {
      Process.setThreadPriority(-16);
      av.a(this.cCW, new FileInputStream(av.e(this.cCW)));
      while (true)
      {
        if ((av.g(this.cCW) != 1) && (av.g(this.cCW) != 2))
          break label600;
        av.b(this.cCW, av.i(this.cCW).read(av.h(this.cCW)));
        if (av.j(this.cCW) == -1)
          break label544;
        arrayOfByte = av.k(this.cCW).n(av.h(this.cCW), av.j(this.cCW));
        if ((arrayOfByte != null) && (arrayOfByte.length != 0))
          break;
        av.a(this.cCW, 0);
      }
    }
    catch (Exception localException1)
    {
      if (av.p(this.cCW) != null)
        av.p(this.cCW).onError(null, 0, 0);
      av.a(this.cCW, 0);
    }
    while (true)
    {
      if (av.i(this.cCW) != null);
      try
      {
        av.i(this.cCW).close();
        av.a(this.cCW, null);
        int i = av.k(this.cCW).aPN();
        if (av.q(this.cCW) != null)
          av.q(this.cCW).wE();
        if (av.r(this.cCW) != null)
          av.r(this.cCW).onCompletion(null);
        if (i != 0)
          aa.e("MicroMsg.SpeexPlayer", "res: " + i);
        return;
        int j = arrayOfByte.length;
        int k = 0;
        while ((j >= av.l(this.cCW)) && (av.g(this.cCW) == 1))
          if (av.m(this.cCW))
          {
            Thread.sleep(20L);
          }
          else if ((av.b(this.cCW) != null) && (!av.m(this.cCW)))
          {
            av.b(this.cCW).write(arrayOfByte, k, av.l(this.cCW));
            k += av.l(this.cCW);
            j -= av.l(this.cCW);
          }
        if ((j < av.l(this.cCW)) && (j > 0) && (av.b(this.cCW) != null))
          av.b(this.cCW).write(arrayOfByte, k, j);
        label444: if (av.g(this.cCW) != 2);
      }
      catch (IOException localIOException)
      {
        try
        {
          label491: synchronized (av.n(this.cCW))
          {
            aa.v("MicroMsg.SpeexPlayer", "before mOk.notify");
            av.n(this.cCW).notify();
            aa.v("MicroMsg.SpeexPlayer", "after mOk.notify");
          }
          try
          {
            label530: synchronized (av.o(this.cCW))
            {
              aa.v("MicroMsg.SpeexPlayer", "before mpause.wait");
              av.o(this.cCW).wait();
              aa.v("MicroMsg.SpeexPlayer", "after mpause.wait");
            }
            label544: av.a(this.cCW, 0);
            break label444;
            localObject2 = finally;
            throw localObject2;
            try
            {
              label586: synchronized (av.n(this.cCW))
              {
                av.n(this.cCW).notify();
              }
              label600: if (av.g(this.cCW) == 3)
                continue;
              Thread.sleep(1000L);
              continue;
              localIOException = localIOException;
            }
            catch (Exception localException2)
            {
              break label586;
            }
          }
          catch (Exception localException4)
          {
            break label530;
          }
        }
        catch (Exception localException3)
        {
          break label491;
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.ay
 * JD-Core Version:    0.6.2
 */