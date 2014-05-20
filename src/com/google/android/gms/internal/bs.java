package com.google.android.gms.internal;

import android.content.Context;
import android.graphics.Paint;
import android.net.Uri;
import android.view.View.MeasureSpec;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.ImageView;
import android.widget.TextView;

public final class bs extends FrameLayout
{
  private final TextView NA;
  private String[] Ny = null;
  private final ImageView Nz;

  public bs(Context paramContext)
  {
    super(paramContext);
    this.Nz = new ImageView(paramContext);
    addView(this.Nz, new FrameLayout.LayoutParams(-2, -2, 17));
    this.NA = new TextView(paramContext);
    addView(this.NA, new FrameLayout.LayoutParams(-2, -2, 17));
    bringChildToFront(this.NA);
  }

  public final void Q(float paramFloat)
  {
    this.NA.setTextSize(0, paramFloat);
  }

  public final void d(Uri paramUri)
  {
    this.Nz.setImageURI(paramUri);
  }

  public final void jb()
  {
    this.NA.setGravity(17);
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getSize(paramInt1);
    Paint localPaint = new Paint();
    localPaint.setTextSize(this.NA.getTextSize());
    localPaint.setTypeface(this.NA.getTypeface());
    int j;
    int k;
    int m;
    String str;
    label62: int n;
    if (this.Ny != null)
    {
      j = this.Ny.length;
      k = 0;
      m = 0;
      str = null;
      if (k >= j)
        break label132;
      if (this.Ny[k] == null)
        break label168;
      n = (int)localPaint.measureText(this.Ny[k]);
      if ((n > i) || (n < m))
        break label168;
      str = this.Ny[k];
    }
    while (true)
    {
      k++;
      m = n;
      break label62;
      j = 0;
      break;
      label132: if ((str == null) || (!str.equals(this.NA.getText())))
        this.NA.setText(str);
      super.onMeasure(paramInt1, paramInt2);
      return;
      label168: n = m;
    }
  }

  public final void setSingleLine()
  {
    this.NA.setSingleLine();
  }

  public final void setTextColor(int paramInt)
  {
    this.NA.setTextColor(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.bs
 * JD-Core Version:    0.6.2
 */