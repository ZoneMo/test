package com.google.android.gms.internal;

import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;

final class cx extends Drawable.ConstantState
{
  int QR;
  int QS;

  cx(cx paramcx)
  {
    if (paramcx != null)
    {
      this.QR = paramcx.QR;
      this.QS = paramcx.QS;
    }
  }

  public final int getChangingConfigurations()
  {
    return this.QR;
  }

  public final Drawable newDrawable()
  {
    return new cu(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cx
 * JD-Core Version:    0.6.2
 */