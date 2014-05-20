package com.tencent.mm.modelvoice;

import android.media.AudioTrack;
import android.media.MediaPlayer;
import android.media.MediaPlayer.OnErrorListener;
import com.tencent.mm.compatible.g.a;
import com.tencent.mm.sdk.platformtools.aa;

final class ax
  implements MediaPlayer.OnErrorListener
{
  ax(av paramav)
  {
  }

  public final boolean onError(MediaPlayer paramMediaPlayer, int paramInt1, int paramInt2)
  {
    aa.d("MicroMsg.SpeexPlayer", "onError");
    if (av.a(this.cCW) != null)
      av.a(this.cCW).qc();
    if (av.f(this.cCW) != null)
      av.f(this.cCW).pB();
    try
    {
      av.a(this.cCW, -1);
      if (av.b(this.cCW) != null)
      {
        av.b(this.cCW).stop();
        av.b(this.cCW).release();
        av.c(this.cCW);
      }
    }
    catch (Exception localException)
    {
      try
      {
        av.d(this.cCW);
        while (true)
        {
          label104: return false;
          localException = localException;
          aa.e("MicroMsg.SpeexPlayer", "setErrorListener File[" + av.e(this.cCW) + "] ErrMsg[" + localException.getStackTrace() + "]");
        }
      }
      catch (InterruptedException localInterruptedException)
      {
        break label104;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelvoice.ax
 * JD-Core Version:    0.6.2
 */