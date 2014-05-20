package com.tencent.mm.ui.base.preference;

import android.graphics.Bitmap;
import android.widget.ImageView;
import com.tencent.mm.an.a;

public final class j
{
  private Bitmap bitmap = null;
  private int gFT = -1;

  public final void d(ImageView paramImageView)
  {
    if (paramImageView == null);
    do
    {
      return;
      if (this.gFT != -1)
        paramImageView.setImageDrawable(a.k(paramImageView.getContext(), this.gFT));
    }
    while (this.bitmap == null);
    paramImageView.setImageBitmap(this.bitmap);
  }

  public final void setImageResource(int paramInt)
  {
    this.gFT = paramInt;
    this.bitmap = null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.preference.j
 * JD-Core Version:    0.6.2
 */