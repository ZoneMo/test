package com.tencent.mm.booter;

import android.media.MediaPlayer;
import com.tencent.mm.model.am;
import com.tencent.mm.sdk.platformtools.az;
import java.util.Iterator;
import java.util.List;

final class l
  implements az
{
  l(k paramk)
  {
  }

  public final boolean ok()
  {
    if ((k.a(this.bZX) != null) && (k.a(this.bZX).isPlaying()))
    {
      synchronized (k.b(this.bZX))
      {
        if (k.a(this.bZX).getCurrentPosition() > 0)
          k.a(this.bZX, k.a(this.bZX).getCurrentPosition());
        Iterator localIterator = k.c(this.bZX).iterator();
        while (localIterator.hasNext())
        {
          am localam = (am)localIterator.next();
          if (localam != null)
            localam.B(k.a(this.bZX).getCurrentPosition(), k.a(this.bZX).getDuration());
        }
      }
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.l
 * JD-Core Version:    0.6.2
 */