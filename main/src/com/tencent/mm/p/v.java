package com.tencent.mm.p;

import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.tencent.mm.a.f;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bu;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.h;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

public final class v
{
  private List cof = new ArrayList();
  private Map cog = new HashMap();
  private Map coh = new HashMap();
  private bu coi = null;

  private Bitmap I(String paramString1, String paramString2)
  {
    if (this.coh.containsKey(paramString1))
    {
      Bitmap localBitmap2 = (Bitmap)((WeakReference)this.coh.get(paramString1)).get();
      if ((localBitmap2 == null) || (localBitmap2.isRecycled()))
      {
        String str2 = u.G(paramString1, paramString2);
        Bitmap localBitmap3 = h.su(eO(paramString1 + str2));
        if (localBitmap3 == null)
        {
          aa.d("MicroMsg.BrandLogic", "not found brand icon local");
          return null;
        }
        f(paramString1, localBitmap3);
      }
    }
    while (true)
    {
      WeakReference localWeakReference = (WeakReference)this.coh.get(paramString1);
      if (localWeakReference == null)
        break;
      return (Bitmap)localWeakReference.get();
      String str1 = u.G(paramString1, paramString2);
      Bitmap localBitmap1 = h.su(eO(paramString1 + str1));
      if (localBitmap1 == null)
      {
        aa.d("MicroMsg.BrandLogic", "not found brand icon local");
        return null;
      }
      f(paramString1, localBitmap1);
    }
    return null;
  }

  private static String eO(String paramString)
  {
    if (be.se())
      return be.uz().sR() + "/brand_" + f.h(paramString.getBytes());
    return "";
  }

  private void f(String paramString, Bitmap paramBitmap)
  {
    Object localObject;
    if (this.coh.containsKey(paramString))
      localObject = (Bitmap)((WeakReference)this.coh.get(paramString)).get();
    while (true)
    {
      if ((localObject == null) || (((Bitmap)localObject).isRecycled()));
      try
      {
        Bitmap localBitmap = Bitmap.createScaledBitmap(paramBitmap, 128, 128, true);
        localObject = localBitmap;
        this.coh.remove(paramString);
        this.coh.put(paramString, new WeakReference(localObject));
        if (localObject == paramBitmap)
        {
          return;
          localObject = null;
        }
      }
      catch (OutOfMemoryError localOutOfMemoryError)
      {
        while (true)
          localObject = paramBitmap;
        paramBitmap.recycle();
      }
    }
  }

  public final int H(String paramString1, String paramString2)
  {
    if ((cj.hX(paramString1)) || (cj.hX(paramString2)))
    {
      aa.e("MicroMsg.BrandLogic", "pushing for brand " + paramString1 + ", url " + paramString2);
      return -1;
    }
    if (cj.M(cj.c((Integer)this.cog.get(paramString1))) < 300L)
    {
      aa.d("MicroMsg.BrandLogic", "downloading interval less than 5 mins for " + paramString1);
      return -1;
    }
    this.cog.put(paramString1, Integer.valueOf((int)cj.FC()));
    if ((this.coi == null) || (this.coi.azH()))
      this.coi = new bu(1, "brand-logic");
    String str = u.G(paramString1, paramString2);
    return this.coi.c(new y(paramString1, str));
  }

  public final void a(w paramw)
  {
    this.cof.add(paramw);
  }

  public final void b(w paramw)
  {
    this.cof.remove(paramw);
  }

  protected final void c(String paramString1, String paramString2, byte[] paramArrayOfByte)
  {
    try
    {
      String str = paramString1 + paramString2;
      Bitmap localBitmap = h.cj(paramArrayOfByte);
      h.a(localBitmap, 100, Bitmap.CompressFormat.PNG, eO(str), false);
      f(paramString1, localBitmap);
      aa.d("MicroMsg.BrandLogic", "update brand icon for  " + paramString1 + ", done");
      this.cog.remove(paramString1);
      for (int i = 0; i < this.cof.size(); i++)
        ((w)this.cof.get(i)).eP(paramString1);
    }
    catch (Exception localException)
    {
    }
  }

  public final void ya()
  {
    this.cof.clear();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.v
 * JD-Core Version:    0.6.2
 */