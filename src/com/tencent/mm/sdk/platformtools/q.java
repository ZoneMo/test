package com.tencent.mm.sdk.platformtools;

import android.graphics.Bitmap;

final class q
{
  public int[] gcW;
  public int height;
  public int width;

  public q(o paramo, Bitmap paramBitmap, int paramInt1, int paramInt2)
  {
    if (paramBitmap == null)
      return;
    this.width = paramo.width;
    this.height = paramo.height;
    this.gcW = new int[paramInt1 * paramInt2];
    paramBitmap.getPixels(this.gcW, 0, paramInt1, 0, 0, paramInt1, paramInt2);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.q
 * JD-Core Version:    0.6.2
 */