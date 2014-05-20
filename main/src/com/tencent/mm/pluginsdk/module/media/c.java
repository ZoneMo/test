package com.tencent.mm.pluginsdk.module.media;

import android.os.Handler;
import com.tencent.mm.sdk.platformtools.aa;

final class c
  implements Runnable
{
  long fiY;
  long fiZ;

  public c(LyricView paramLyricView, long paramLong1, long paramLong2)
  {
    this.fiY = paramLong1;
    this.fiZ = paramLong2;
  }

  public final void run()
  {
    if (this.fiY < this.fiZ)
    {
      this.fiY = (80L + this.fiY);
      this.fja.f(this.fiY, this.fiZ);
      if (LyricView.a(this.fja) != null)
      {
        LyricView.a(this.fja).postDelayed(this, 80L);
        return;
      }
    }
    this.fja.setKeepScreenOn(false);
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Long.valueOf(this.fiZ);
    Handler localHandler = LyricView.a(this.fja);
    boolean bool = false;
    if (localHandler == null)
      bool = true;
    arrayOfObject[1] = Boolean.valueOf(bool);
    aa.e("MicroMsg.LrcView", "auto play job finish length[%d], uiHandler is null[%B]", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.module.media.c
 * JD-Core Version:    0.6.2
 */