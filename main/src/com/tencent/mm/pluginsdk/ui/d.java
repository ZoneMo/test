package com.tencent.mm.pluginsdk.ui;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Rect;
import com.tencent.mm.m.p;
import com.tencent.mm.pluginsdk.am;

public final class d extends ac
  implements p
{
  public d(String paramString)
  {
    super(c.aqP(), paramString);
  }

  private void a(Canvas paramCanvas, Bitmap paramBitmap)
  {
    Rect localRect1 = getBounds();
    Rect localRect2;
    if ((this.flv > 1.0F) || (this.flp))
    {
      int i = paramBitmap.getHeight() / 15 / 2;
      int j = paramBitmap.getWidth() / 15 / 2;
      localRect2 = new Rect(j, i, paramBitmap.getWidth() - j, paramBitmap.getHeight() - i);
    }
    while (true)
    {
      paramCanvas.drawBitmap(paramBitmap, localRect2, localRect1, cXp);
      return;
      boolean bool = this.flv < 0.0F;
      localRect2 = null;
      if (bool)
        localRect2 = null;
    }
  }

  public final void draw(Canvas paramCanvas)
  {
    Bitmap localBitmap1 = com.tencent.mm.pluginsdk.h.apv().kk(this.tag);
    if (localBitmap1 != null)
      a(paramCanvas, localBitmap1);
    Bitmap localBitmap2;
    do
    {
      return;
      localBitmap2 = this.dVT.aC(this.tag);
      if (localBitmap2 != null)
      {
        Bitmap localBitmap3 = com.tencent.mm.sdk.platformtools.h.a(localBitmap2, false, localBitmap2.getWidth() >> 1);
        com.tencent.mm.pluginsdk.h.apv().l(this.tag, localBitmap3);
        a(paramCanvas, localBitmap3);
        return;
      }
    }
    while ((localBitmap2 != null) && (!localBitmap2.isRecycled()));
    a(paramCanvas, com.tencent.mm.pluginsdk.h.apv().Rh());
  }

  public final void ei(String paramString)
  {
    super.ei(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.d
 * JD-Core Version:    0.6.2
 */