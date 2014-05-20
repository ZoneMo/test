package com.tencent.mm.p;

import com.tencent.mm.model.ar;
import com.tencent.mm.model.aw;
import com.tencent.mm.model.be;
import com.tencent.mm.network.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.bw;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.ByteArrayOutputStream;
import java.io.InputStream;

final class y
  implements bw
{
  public byte[] ckw = null;
  private final String cok;
  private final String url;

  public y(String paramString1, String paramString2)
  {
    this.cok = paramString1;
    this.url = paramString2;
  }

  public final boolean ve()
  {
    if ((cj.hX(this.cok)) || (cj.hX(this.url)));
    ByteArrayOutputStream localByteArrayOutputStream;
    InputStream localInputStream;
    while (true)
    {
      return false;
      try
      {
        localByteArrayOutputStream = new ByteArrayOutputStream();
        localInputStream = k.o(this.url, 3000, 5000);
        if (localInputStream != null)
        {
          byte[] arrayOfByte = new byte[1024];
          while (true)
          {
            int i = localInputStream.read(arrayOfByte);
            if (i == -1)
              break;
            localByteArrayOutputStream.write(arrayOfByte, 0, i);
          }
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.BrandLogic", "get url:" + this.url + " failed.");
        this.ckw = null;
        return false;
      }
    }
    localInputStream.close();
    this.ckw = localByteArrayOutputStream.toByteArray();
    localByteArrayOutputStream.close();
    return true;
  }

  public final boolean vf()
  {
    if ((cj.hX(this.cok)) || (cj.hX(this.url)))
      aa.e("MicroMsg.BrandLogic", "onPostExecute get brand null");
    do
    {
      return false;
      if (cj.A(this.ckw))
      {
        aa.e("MicroMsg.BrandLogic", "imgBuff null brand:" + this.cok);
        return false;
      }
    }
    while (!be.se());
    ar.ua().C(this.ckw.length, 0);
    ab.yf().c(this.cok, this.url, this.ckw);
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.p.y
 * JD-Core Version:    0.6.2
 */