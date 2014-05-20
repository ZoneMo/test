package com.tencent.mm.ui.tools;

import android.os.Handler;

final class cz extends cu
{
  private float[] hkZ = new float[9];

  public cz(MMGestureGallery paramMMGestureGallery)
  {
    super(paramMMGestureGallery);
  }

  public final void play()
  {
    MMGestureGallery.c(this.hkX).post(new da(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.cz
 * JD-Core Version:    0.6.2
 */