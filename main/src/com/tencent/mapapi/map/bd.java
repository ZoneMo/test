package com.tencent.mapapi.map;

import android.graphics.Bitmap;
import android.graphics.Point;

final class bd extends ay
{
  public bd(bh parambh, Bitmap paramBitmap)
  {
    super(parambh, paramBitmap);
  }

  protected final Point mL()
  {
    return new Point(2, -5 + (this.Vl.WW.mE() - this.WE.getHeight()));
  }

  public final void me()
  {
    if (this.WE != null)
      this.WE = null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.bd
 * JD-Core Version:    0.6.2
 */