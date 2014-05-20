package com.tencent.mm.ui.tools;

import android.graphics.Matrix;
import com.tencent.mm.ui.base.MultiTouchImageView;

final class dc
  implements Runnable
{
  dc(db paramdb)
  {
  }

  public final void run()
  {
    MMGestureGallery.a(this.hlb.hkX).getImageMatrix().getValues(db.a(this.hlb));
    float f1 = MMGestureGallery.a(this.hlb.hkX).getScale() * MMGestureGallery.a(this.hlb.hkX).aHH();
    float f2 = f1 + db.a(this.hlb)[2];
    float f3 = MMGestureGallery.b(this.hlb.hkX);
    if (f1 < MMGestureGallery.b(this.hlb.hkX))
      f3 = MMGestureGallery.b(this.hlb.hkX) / 2.0F + f1 / 2.0F;
    float f4 = f3 - f2;
    if (f4 <= 0.0F)
      this.hlb.hkY = true;
    while (true)
    {
      MMGestureGallery.a(this.hlb.hkX).A(f4, 0.0F);
      return;
      if (Math.abs(f4 / 4.0F) <= 5.0F)
        this.hlb.hkY = true;
      else
        f4 /= 4.0F;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.dc
 * JD-Core Version:    0.6.2
 */