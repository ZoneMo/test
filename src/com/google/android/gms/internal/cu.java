package com.google.android.gms.internal;

import android.graphics.Canvas;
import android.graphics.ColorFilter;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.Callback;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.SystemClock;

public final class cu extends Drawable
  implements Drawable.Callback
{
  private int QA = 0;
  private long QB;
  private int QC;
  private int QD;
  private int QE = 255;
  private int QF;
  private int QG = 0;
  private boolean QH;
  private cx QI;
  private Drawable QJ;
  private Drawable QK;
  private boolean QL;
  private boolean QM;
  private boolean QN;
  private int QO;
  private boolean Qz = true;

  public cu(Drawable paramDrawable1, Drawable paramDrawable2)
  {
    this(null);
    if (paramDrawable1 == null)
      paramDrawable1 = cv.lc();
    this.QJ = paramDrawable1;
    paramDrawable1.setCallback(this);
    cx localcx1 = this.QI;
    localcx1.QS |= paramDrawable1.getChangingConfigurations();
    if (paramDrawable2 == null)
      paramDrawable2 = cv.lc();
    this.QK = paramDrawable2;
    paramDrawable2.setCallback(this);
    cx localcx2 = this.QI;
    localcx2.QS |= paramDrawable2.getChangingConfigurations();
  }

  cu(cx paramcx)
  {
    this.QI = new cx(paramcx);
  }

  private boolean canConstantState()
  {
    if (!this.QL)
      if ((this.QJ.getConstantState() == null) || (this.QK.getConstantState() == null))
        break label44;
    label44: for (boolean bool = true; ; bool = false)
    {
      this.QM = bool;
      this.QL = true;
      return this.QM;
    }
  }

  public final void draw(Canvas paramCanvas)
  {
    int i = 1;
    switch (this.QA)
    {
    default:
    case 1:
    case 2:
    }
    int k;
    boolean bool;
    Drawable localDrawable1;
    Drawable localDrawable2;
    do
      for (int j = i; ; j = 0)
      {
        k = this.QG;
        bool = this.Qz;
        localDrawable1 = this.QJ;
        localDrawable2 = this.QK;
        if (j == 0)
          break;
        if ((!bool) || (k == 0))
          localDrawable1.draw(paramCanvas);
        if (k == this.QE)
        {
          localDrawable2.setAlpha(this.QE);
          localDrawable2.draw(paramCanvas);
        }
        return;
        this.QB = SystemClock.uptimeMillis();
        this.QA = 2;
      }
    while (this.QB < 0L);
    float f1 = (float)(SystemClock.uptimeMillis() - this.QB) / this.QF;
    if (f1 >= 1.0F);
    while (true)
    {
      if (i != 0)
        this.QA = 0;
      float f2 = Math.min(f1, 1.0F);
      this.QG = ((int)(this.QC + f2 * (this.QD - this.QC)));
      break;
      i = 0;
    }
    if (bool)
      localDrawable1.setAlpha(this.QE - k);
    localDrawable1.draw(paramCanvas);
    if (bool)
      localDrawable1.setAlpha(this.QE);
    if (k > 0)
    {
      localDrawable2.setAlpha(k);
      localDrawable2.draw(paramCanvas);
      localDrawable2.setAlpha(this.QE);
    }
    invalidateSelf();
  }

  public final int getChangingConfigurations()
  {
    return super.getChangingConfigurations() | this.QI.QR | this.QI.QS;
  }

  public final Drawable.ConstantState getConstantState()
  {
    if (canConstantState())
    {
      this.QI.QR = getChangingConfigurations();
      return this.QI;
    }
    return null;
  }

  public final int getIntrinsicHeight()
  {
    return Math.max(this.QJ.getIntrinsicHeight(), this.QK.getIntrinsicHeight());
  }

  public final int getIntrinsicWidth()
  {
    return Math.max(this.QJ.getIntrinsicWidth(), this.QK.getIntrinsicWidth());
  }

  public final int getOpacity()
  {
    if (!this.QN)
    {
      this.QO = Drawable.resolveOpacity(this.QJ.getOpacity(), this.QK.getOpacity());
      this.QN = true;
    }
    return this.QO;
  }

  public final void invalidateDrawable(Drawable paramDrawable)
  {
    if (ai.iB())
    {
      Drawable.Callback localCallback = getCallback();
      if (localCallback != null)
        localCallback.invalidateDrawable(this);
    }
  }

  public final Drawable la()
  {
    return this.QK;
  }

  public final void lb()
  {
    this.QC = 0;
    this.QD = this.QE;
    this.QG = 0;
    this.QF = 250;
    this.QA = 1;
    invalidateSelf();
  }

  public final Drawable mutate()
  {
    if ((!this.QH) && (super.mutate() == this))
    {
      if (!canConstantState())
        throw new IllegalStateException("One or more children of this LayerDrawable does not have constant state; this drawable cannot be mutated.");
      this.QJ.mutate();
      this.QK.mutate();
      this.QH = true;
    }
    return this;
  }

  protected final void onBoundsChange(Rect paramRect)
  {
    this.QJ.setBounds(paramRect);
    this.QK.setBounds(paramRect);
  }

  public final void scheduleDrawable(Drawable paramDrawable, Runnable paramRunnable, long paramLong)
  {
    if (ai.iB())
    {
      Drawable.Callback localCallback = getCallback();
      if (localCallback != null)
        localCallback.scheduleDrawable(this, paramRunnable, paramLong);
    }
  }

  public final void setAlpha(int paramInt)
  {
    if (this.QG == this.QE)
      this.QG = paramInt;
    this.QE = paramInt;
    invalidateSelf();
  }

  public final void setColorFilter(ColorFilter paramColorFilter)
  {
    this.QJ.setColorFilter(paramColorFilter);
    this.QK.setColorFilter(paramColorFilter);
  }

  public final void unscheduleDrawable(Drawable paramDrawable, Runnable paramRunnable)
  {
    if (ai.iB())
    {
      Drawable.Callback localCallback = getCallback();
      if (localCallback != null)
        localCallback.unscheduleDrawable(this, paramRunnable);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.cu
 * JD-Core Version:    0.6.2
 */