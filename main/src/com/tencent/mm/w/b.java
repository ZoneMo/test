package com.tencent.mm.w;

import android.graphics.Bitmap;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashMap;

final class b
  implements Runnable
{
  private HashMap csV;
  private Bitmap csW;
  private String url;

  public b(String paramString, Bitmap paramBitmap, HashMap paramHashMap)
  {
    this.url = paramString;
    this.csW = paramBitmap;
    this.csV = paramHashMap;
  }

  public final void run()
  {
    ag.AZ();
    a.g(this.url, this.csW);
    if (this.csV != null)
    {
      d locald = (d)this.csV.remove(this.url);
      if (locald != null)
        locald.AC();
    }
    Object[] arrayOfObject = new Object[1];
    if (this.url == null);
    for (String str = "null"; ; str = this.url)
    {
      arrayOfObject[0] = str;
      aa.d("MicroMsg.CdnImageService", "finish download post job, url[%s]", arrayOfObject);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.b
 * JD-Core Version:    0.6.2
 */