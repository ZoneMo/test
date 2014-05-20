package com.tencent.mm.platformtools;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.util.DisplayMetrics;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.bu;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.h;
import java.lang.ref.WeakReference;
import java.util.HashMap;
import java.util.Map;
import junit.framework.Assert;

 enum x
{
  private static DisplayMetrics cGH = null;
  private Map cGD = new HashMap();
  private Map cGE = new HashMap();
  private bu cGF = null;
  private bu cGG = null;

  static
  {
    x[] arrayOfx = new x[1];
    arrayOfx[0] = cGC;
    cGI = arrayOfx;
  }

  private x()
  {
  }

  private void b(s params, Bitmap paramBitmap)
  {
    Assert.assertTrue("picture strategy here must be validity", v.c(params));
    String str = params.Fu();
    if (this.cGE.containsKey(str));
    for (Bitmap localBitmap = (Bitmap)((WeakReference)this.cGE.get(str)).get(); ; localBitmap = null)
    {
      if ((localBitmap == null) || (localBitmap.isRecycled()))
      {
        this.cGE.remove(str);
        this.cGE.put(str, new WeakReference(paramBitmap));
      }
      return;
    }
  }

  private Bitmap d(s params)
  {
    Assert.assertTrue("picture strategy here must be validity", v.c(params));
    String str = params.Fs();
    aa localaa = (aa)this.cGD.get(str);
    if (localaa == null)
      localaa = new aa();
    if (localaa.cGL)
      if (localaa.cGM >= 3)
      {
        if (cj.M(localaa.cGN) < 120L)
        {
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Integer.valueOf(120);
          arrayOfObject2[1] = str;
          com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.MMPictureLogic", "download fail interval less than %d s for %s", arrayOfObject2);
          return null;
        }
        localaa.cGM = 0;
        localaa.cGL = false;
        localaa.cGN = ((int)cj.FC());
        this.cGD.put(str, localaa);
      }
    while (true)
      if (params.Fv())
      {
        Bitmap localBitmap1 = hN(params.Fr());
        if (localBitmap1 != null)
        {
          Bitmap localBitmap2 = a(params, localBitmap1);
          this.cGD.remove(str);
          return localBitmap2;
          localaa.cGM = (1 + localaa.cGM);
          break;
          if (cj.M(localaa.cGN) < 120L)
          {
            Object[] arrayOfObject1 = new Object[2];
            arrayOfObject1[0] = Integer.valueOf(120);
            arrayOfObject1[1] = str;
            com.tencent.mm.sdk.platformtools.aa.e("MicroMsg.MMPictureLogic", "downloading interval less than %d s for %s", arrayOfObject1);
            return null;
          }
          localaa.cGM = (1 + localaa.cGM);
          localaa.cGN = ((int)cj.FC());
          this.cGD.put(str, localaa);
          continue;
        }
        if ((this.cGF == null) || (this.cGF.azH()))
          this.cGF = new bu(1, "readerapp-pic-logic-download", 3);
        this.cGF.c(new y(params));
        return null;
      }
    if ((this.cGG == null) || (this.cGG.azH()))
      this.cGG = new bu(1, "readerapp-pic-logic-reader", 1);
    this.cGG.c(new z(params));
    return null;
  }

  public static Bitmap hN(String paramString)
  {
    if (cGH == null)
      cGH = al.getContext().getResources().getDisplayMetrics();
    DisplayMetrics localDisplayMetrics = cGH;
    return p(paramString, localDisplayMetrics.widthPixels, localDisplayMetrics.heightPixels);
  }

  public static Bitmap p(String paramString, int paramInt1, int paramInt2)
  {
    if (cj.hX(paramString))
    {
      com.tencent.mm.sdk.platformtools.aa.w("MicroMsg.MMPictureLogic", "error input, path is null");
      return null;
    }
    if ((paramInt1 <= 0) || (paramInt2 <= 0))
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      com.tencent.mm.sdk.platformtools.aa.c("MicroMsg.MMPictureLogic", "error input, targetWidth %d, targetHeight %d", arrayOfObject);
      return null;
    }
    return h.w(paramString, paramInt1, paramInt2);
  }

  protected final Bitmap a(s params, Bitmap paramBitmap)
  {
    Assert.assertTrue("picture strategy here must be validity", v.c(params));
    if (paramBitmap != null)
    {
      Bitmap localBitmap = params.a(paramBitmap, t.cGx);
      if ((localBitmap != paramBitmap) && (!paramBitmap.isRecycled()))
        paramBitmap.recycle();
      b(params, localBitmap);
      paramBitmap = localBitmap;
    }
    return paramBitmap;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.x
 * JD-Core Version:    0.6.2
 */