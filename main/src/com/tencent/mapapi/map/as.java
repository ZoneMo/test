package com.tencent.mapapi.map;

import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;

final class as
{
  protected Bitmap Wu = null;
  protected Canvas Ww = null;
  protected Bitmap.Config Wx;

  public as(Bitmap.Config paramConfig)
  {
    this.Wx = paramConfig;
  }

  public final void a(at paramat)
  {
    this.Ww.save(1);
    paramat.a(this.Ww);
    this.Ww.restore();
  }

  public final Bitmap mI()
  {
    return this.Wu;
  }

  public final void u(int paramInt1, int paramInt2)
  {
    if (this.Wu != null)
      this.Wu.recycle();
    this.Wu = null;
    this.Ww = null;
    this.Wu = Bitmap.createBitmap(paramInt1, paramInt2, this.Wx);
    this.Ww = new Canvas(this.Wu);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.as
 * JD-Core Version:    0.6.2
 */