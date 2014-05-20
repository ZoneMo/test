package com.tencent.mm.ui.widget;

import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Paint.FontMetricsInt;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.text.style.ImageSpan;

public final class a extends ImageSpan
{
  private int huU = 0;

  public a(Drawable paramDrawable)
  {
    super(paramDrawable, 1);
  }

  public final void draw(Canvas paramCanvas, CharSequence paramCharSequence, int paramInt1, int paramInt2, float paramFloat, int paramInt3, int paramInt4, int paramInt5, Paint paramPaint)
  {
    Drawable localDrawable = getDrawable();
    paramCanvas.save();
    int i = paramInt5 - localDrawable.getBounds().bottom + this.huU;
    int j;
    if (this.mVerticalAlignment == 1)
      j = paramCharSequence.length();
    for (int k = 0; ; k++)
      if (k < j)
      {
        if (Character.isLetterOrDigit(paramCharSequence.charAt(k)))
          i -= paramPaint.getFontMetricsInt().descent;
      }
      else
      {
        paramCanvas.translate(paramFloat, i);
        localDrawable.draw(paramCanvas);
        paramCanvas.restore();
        return;
      }
  }

  public final void oG(int paramInt)
  {
    this.huU = paramInt;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.widget.a
 * JD-Core Version:    0.6.2
 */