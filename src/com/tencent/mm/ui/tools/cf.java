package com.tencent.mm.ui.tools;

import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnPreDrawListener;

final class cf
  implements ViewTreeObserver.OnPreDrawListener
{
  cf(ImageGalleryUI paramImageGalleryUI, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
  }

  public final boolean onPreDraw()
  {
    ImageGalleryUI.a(this.hkn).getViewTreeObserver().removeOnPreDrawListener(this);
    int[] arrayOfInt = new int[2];
    ImageGalleryUI.a(this.hkn).getLocationOnScreen(arrayOfInt);
    this.hkn.hjK = (this.hko - arrayOfInt[0]);
    this.hkn.hjL = (this.hkp - arrayOfInt[1]);
    this.hkn.hjM = (this.hkq / ImageGalleryUI.a(this.hkn).getWidth());
    this.hkn.hjN = (this.hkr / ImageGalleryUI.a(this.hkn).getHeight());
    this.hkn.aNq();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.cf
 * JD-Core Version:    0.6.2
 */