package com.tencent.mm.w;

import android.graphics.Bitmap;
import com.tencent.mm.cache.b;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.HashMap;

public final class a
{
  private HashMap csV = new HashMap();

  public static Bitmap fP(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.CdnImageService", "get fail, key is null");
      return null;
    }
    return (Bitmap)b.k("local_cdn_img_cache", paramString);
  }

  public static void g(String paramString, Bitmap paramBitmap)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.CdnImageService", "push fail, key is null");
      return;
    }
    b.a("local_cdn_img_cache", paramString, paramBitmap);
  }

  public final void a(String paramString, d paramd)
  {
    if (cj.hX(paramString))
      aa.w("MicroMsg.CdnImageService", "do load fail, url is empty");
    Bitmap localBitmap;
    do
    {
      return;
      localBitmap = fP(paramString);
      if ((localBitmap == null) || (localBitmap.isRecycled()))
        break;
      aa.d("MicroMsg.CdnImageService", "do load ok, url[%s], bitmap exists", new Object[] { paramString });
    }
    while (paramd == null);
    paramd.AC();
    return;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    if (localBitmap == null);
    for (boolean bool = true; ; bool = false)
    {
      arrayOfObject[1] = Boolean.valueOf(bool);
      aa.c("MicroMsg.CdnImageService", "try to download: url[%s], src bitmap is null[%B]", arrayOfObject);
      if (!this.csV.containsKey(paramString))
        break;
      aa.c("MicroMsg.CdnImageService", "contains url[%s]", new Object[] { paramString });
      return;
    }
    this.csV.put(paramString, paramd);
    new c(paramString, this.csV).start();
  }

  public final void fQ(String paramString)
  {
    if (cj.hX(paramString))
    {
      aa.w("MicroMsg.CdnImageService", "stop load fail, url is empty");
      return;
    }
    this.csV.remove(paramString);
  }

  protected final void finalize()
  {
    super.finalize();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.a
 * JD-Core Version:    0.6.2
 */