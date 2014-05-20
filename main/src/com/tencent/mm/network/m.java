package com.tencent.mm.network;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.net.URL;
import java.util.ArrayList;

public final class m
{
  private String cEu = null;
  private int cEv = 0;
  private String ip = "";
  private URL url = null;

  public m(String paramString)
  {
    try
    {
      this.url = new URL(paramString);
      this.cEu = this.url.getHost();
      ArrayList localArrayList = new ArrayList();
      if ((k.EL() == null) || (k.EL().uN() == null))
      {
        Object[] arrayOfObject1 = new Object[2];
        if (k.EL() == null);
        for (Object localObject = "-1"; ; localObject = k.EL().uN())
        {
          arrayOfObject1[0] = localObject;
          arrayOfObject1[1] = cj.azV();
          aa.b("MicroMsg.GprsSetting", "UrlRedirct ERR:AUTOAUTH NULL:%s  [%s]", arrayOfObject1);
          return;
        }
      }
      this.cEv = k.EL().uN().c(this.cEu, localArrayList);
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(this.cEv);
      arrayOfObject2[1] = this.cEu;
      arrayOfObject2[2] = paramString;
      aa.e("MicroMsg.GprsSetting", "[Arth.302] dnsType:%d  host:%s url:%s", arrayOfObject2);
      if (localArrayList.size() <= 0)
      {
        this.cEv = 0;
        return;
      }
      if (1 == this.cEv)
      {
        String str = (String)localArrayList.get((int)(cj.FD() % localArrayList.size()));
        this.ip = str;
        this.url = new URL(paramString.replaceFirst(this.cEu, str));
      }
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final String getHost()
  {
    return this.cEu;
  }

  public final String getIp()
  {
    return this.ip;
  }

  public final int getType()
  {
    return this.cEv;
  }

  public final URL getURL()
  {
    return this.url;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.m
 * JD-Core Version:    0.6.2
 */