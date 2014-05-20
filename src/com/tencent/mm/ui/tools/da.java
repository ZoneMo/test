package com.tencent.mm.ui.tools;

import android.graphics.Matrix;
import com.tencent.mm.ui.base.MultiTouchImageView;

final class da
  implements Runnable
{
  da(cz paramcz)
  {
  }

  public final void run()
  {
    MMGestureGallery.a(this.hla.hkX).getImageMatrix().getValues(cz.a(this.hla));
    float f1 = cz.a(this.hla)[2];
    float f2 = MMGestureGallery.a(this.hla.hkX).getScale() * MMGestureGallery.a(this.hla.hkX).aHH();
    if (f2 < MMGestureGallery.b(this.hla.hkX));
    for (float f3 = MMGestureGallery.b(this.hla.hkX) / 2.0F - f2 / 2.0F; ; f3 = 0.0F)
    {
      float f4 = f3 - f1;
      if (f4 >= 0.0F)
        this.hla.hkY = true;
      while (true)
      {
        MMGestureGallery.a(this.hla.hkX).A(f4, 0.0F);
        return;
        if (Math.abs(f4) <= 5.0F)
          this.hla.hkY = true;
        else
          f4 /= 4.0F;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.da
 * JD-Core Version:    0.6.2
 */