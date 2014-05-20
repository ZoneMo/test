package com.tencent.mm.platformtools;

import android.graphics.Bitmap;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bu;
import com.tencent.mm.sdk.platformtools.bw;

final class z
  implements bw
{
  private s cGK;
  public Bitmap ckx = null;

  public z(s params)
  {
    if (!v.c(params))
      throw new IllegalArgumentException("from sdcard, picture strategy here must be validity");
    this.cGK = params;
  }

  public final boolean ve()
  {
    this.ckx = x.hN(this.cGK.Fr());
    if (this.ckx != null)
      this.ckx = x.cGC.a(this.cGK, this.ckx);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = this.cGK.Fs();
    arrayOfObject[1] = this.cGK.Fr();
    Bitmap localBitmap = this.ckx;
    boolean bool = false;
    if (localBitmap != null)
      bool = true;
    arrayOfObject[2] = Boolean.valueOf(bool);
    aa.f("MicroMsg.MMPictureLogic", "get url[%s] from[%s] result[%B]", arrayOfObject);
    return true;
  }

  public final boolean vf()
  {
    if (this.ckx == null)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = this.cGK.Fs();
      aa.e("MicroMsg.MMPictureLogic", "can not find bitmap on sdCard, url=%s, try to download it", arrayOfObject);
      if ((x.a(x.cGC) == null) || (x.a(x.cGC).azH()))
        x.a(x.cGC, new bu(1, "readerapp-pic-logic-download", 3));
      x.a(x.cGC).c(new y(this.cGK));
      return false;
    }
    x.a(x.cGC, this.cGK.Fs(), this.cGK.Ft(), this.ckx);
    this.ckx = null;
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.z
 * JD-Core Version:    0.6.2
 */