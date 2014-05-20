package com.tencent.mm.booter;

import android.media.MediaPlayer;
import android.media.MediaPlayer.OnCompletionListener;
import com.tencent.mm.model.am;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;
import java.util.Iterator;
import java.util.List;

final class n
  implements MediaPlayer.OnCompletionListener
{
  n(k paramk)
  {
  }

  public final void onCompletion(MediaPlayer paramMediaPlayer)
  {
    if (k.a(this.bZX) == null);
    do
    {
      return;
      Object[] arrayOfObject1 = new Object[1];
      arrayOfObject1[0] = Integer.valueOf(k.l(this.bZX));
      aa.d("MicroMsg.DownloadPlayer", "completed currentPoint: %d", arrayOfObject1);
      k.a(this.bZX).release();
      k.m(this.bZX);
      if (k.n(this.bZX) == null)
      {
        this.bZX.oG();
        k.d(this.bZX).azn();
      }
      synchronized (k.b(this.bZX))
      {
        Iterator localIterator = k.c(this.bZX).iterator();
        while (localIterator.hasNext())
        {
          am localam = (am)localIterator.next();
          if ((localam != null) && (k.n(this.bZX) == null))
          {
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = localam.toString();
            aa.e("MicroMsg.DownloadPlayer", "on finish call back: %s", arrayOfObject2);
            localam.onFinish();
          }
        }
      }
      k.o(this.bZX);
    }
    while ((!k.p(this.bZX)) || (k.n(this.bZX) != null));
    aa.d("MicroMsg.DownloadPlayer", "NEXT MUSIC PLAY.");
    this.bZX.oI();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.n
 * JD-Core Version:    0.6.2
 */