package com.tencent.mm.ui.base;

import android.view.animation.Interpolator;

final class au
  implements Interpolator
{
  private float dWy = 1.3F;

  public final float getInterpolation(float paramFloat)
  {
    float f = paramFloat - 1.0F;
    return 1.0F + f * f * (f * (1.0F + this.dWy) + this.dWy);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.au
 * JD-Core Version:    0.6.2
 */