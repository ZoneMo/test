package com.tencent.mm.booter.cache;

import android.graphics.Bitmap;
import com.tencent.mm.cache.MCacheItem;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;

public final class a extends com.tencent.mm.cache.d
{
  public static a caO;
  private final com.tencent.mm.a.d caP = new com.tencent.mm.a.d(cj.getInt(com.tencent.mm.platformtools.a.a.x(al.getContext(), "BACKGROUND_BITMAP_CACHE_LIMIT"), 2000));

  public static void destroy()
  {
    if (caO == null)
      return;
    caO.caP.clear();
  }

  public static void prepare()
  {
    if (caO == null)
      caO = new a();
  }

  public final void a(String paramString, Bitmap paramBitmap)
  {
    aa.f("MicroMsg.MMCacheImpl", "setting bitmap: %s", new Object[] { paramString });
    this.caP.f(paramString, paramBitmap);
  }

  public final Bitmap bb(String paramString)
  {
    aa.f("MicroMsg.MMCacheImpl", "getting bitmap: %s", new Object[] { paramString });
    return (Bitmap)this.caP.get(paramString);
  }

  public final MCacheItem bc(String paramString)
  {
    aa.f("MicroMsg.MMCacheImpl", "getting cache item: %s", new Object[] { paramString });
    return null;
  }

  public final void bd(String paramString)
  {
    aa.f("MicroMsg.MMCacheImpl", "setting cache item: %s", new Object[] { paramString });
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.booter.cache.a
 * JD-Core Version:    0.6.2
 */