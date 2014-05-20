package com.tencent.mm.pluginsdk.module.media;

import android.graphics.Canvas;
import android.graphics.Rect;
import android.os.Handler;
import android.view.SurfaceHolder;
import com.tencent.mm.sdk.platformtools.aa;

final class d
  implements Runnable
{
  int fjb = 5;

  private d(LyricView paramLyricView)
  {
  }

  public final void run()
  {
    this.fjb = (-1 + this.fjb);
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(this.fjb);
    aa.d("MicroMsg.LrcView", "auto refresh bg, cur times [%d]", arrayOfObject1);
    if (this.fjb < 0)
      aa.w("MicroMsg.LrcView", "auto refresh bg job finish, try times 0");
    do
    {
      return;
      LyricView.b(this.fja);
      if (LyricView.c(this.fja) != null)
        try
        {
          Canvas localCanvas = this.fja.getHolder().lockCanvas();
          LyricView.a(LyricView.c(this.fja), localCanvas, new Rect());
          LyricView.a(LyricView.d(this.fja), localCanvas);
          this.fja.getHolder().unlockCanvasAndPost(localCanvas);
          aa.w("MicroMsg.LrcView", "auto refresh bg job finish, bgBmp not null");
          return;
        }
        catch (Exception localException)
        {
          while (true)
          {
            Object[] arrayOfObject2 = new Object[1];
            arrayOfObject2[0] = localException.getLocalizedMessage();
            aa.c("MicroMsg.LrcView", "auto refresh bg error: %s", arrayOfObject2);
          }
        }
    }
    while (LyricView.a(this.fja) == null);
    LyricView.a(this.fja).postDelayed(this, 1500L);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.module.media.d
 * JD-Core Version:    0.6.2
 */