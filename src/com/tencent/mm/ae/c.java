package com.tencent.mm.ae;

import android.graphics.Bitmap;
import com.tencent.mm.a.f;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bu;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.h;
import com.tencent.mm.sdk.platformtools.l;
import java.io.File;

public final class c
{
  private static c cwI;
  private String cwH;
  private bu cwJ = null;

  private c(String paramString)
  {
    this.cwH = paramString;
  }

  public static c BT()
  {
    if (cwI == null)
      cwI = new c(be.uz().sE());
    return cwI;
  }

  public final void a(String paramString1, String paramString2, d paramd)
  {
    if ((!cj.hX(paramString2)) && (!gm(paramString1)))
    {
      if ((this.cwJ == null) || (this.cwJ.azH()))
        this.cwJ = new bu(1, "download-remark-img", 1);
      this.cwJ.c(new e(this, paramString1, paramString2, paramd));
    }
  }

  public final String gl(String paramString)
  {
    if (cj.hX(paramString))
      return null;
    return l.a(this.cwH, "remark_", f.h((paramString + "ZnVjaw==").getBytes()), ".png", 1);
  }

  public final boolean gm(String paramString)
  {
    String str = gl(paramString);
    aa.e("MicroMsg.RemarkImageStorage", "remove remark image: %s, path:%s", new Object[] { paramString, str });
    return new File(str).exists();
  }

  public final Bitmap gn(String paramString)
  {
    Bitmap localBitmap = h.w(gl(paramString), 0, 0);
    int i = 0;
    if (localBitmap != null)
    {
      boolean bool = localBitmap.isRecycled();
      i = 0;
      if (!bool)
        i = 1;
    }
    if (i != 0)
      return localBitmap;
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ae.c
 * JD-Core Version:    0.6.2
 */