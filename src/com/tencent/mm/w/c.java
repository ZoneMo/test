package com.tencent.mm.w;

import android.graphics.Bitmap;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.an;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.h;
import java.util.HashMap;

final class c extends Thread
{
  private HashMap csV;
  private String url;

  c(String paramString, HashMap paramHashMap)
  {
    this.url = paramString;
    this.csV = paramHashMap;
  }

  public final void run()
  {
    byte[] arrayOfByte = cj.sX(this.url);
    if (arrayOfByte == null)
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = this.url;
      aa.c("MicroMsg.CdnImageService", "download fail: url[%s] data is null", arrayOfObject3);
      return;
    }
    try
    {
      Bitmap localBitmap2 = h.cj(arrayOfByte);
      localBitmap1 = localBitmap2;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = this.url;
      aa.d("MicroMsg.CdnImageService", "download finish, url[%s], do post job", arrayOfObject2);
      an.i(new b(this.url, localBitmap1, this.csV));
      return;
    }
    catch (Exception localException)
    {
      while (true)
      {
        Object[] arrayOfObject1 = new Object[2];
        arrayOfObject1[0] = this.url;
        arrayOfObject1[1] = localException.getLocalizedMessage();
        aa.c("MicroMsg.CdnImageService", "download fail: url[%s] decode bitmap error[%s]", arrayOfObject1);
        Bitmap localBitmap1 = null;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.w.c
 * JD-Core Version:    0.6.2
 */