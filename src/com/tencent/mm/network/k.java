package com.tencent.mm.network;

import java.io.InputStream;

public final class k
{
  private static l cEt;

  public static int a(bd parambd)
  {
    try
    {
      int i = parambd.getResponseCode();
      if (i != 200)
        return -1;
      return 0;
    }
    catch (Exception localException)
    {
    }
    return -3;
  }

  public static bd a(String paramString, m paramm)
  {
    if (paramm == null)
      paramm = new m(paramString);
    bd localbd = new bd(paramm.getURL(), m.a(paramm));
    if (1 == m.a(paramm))
    {
      localbd.setRequestProperty("Host", paramm.getHost());
      localbd.setRequestProperty("X-Online-Host", paramm.getHost());
    }
    return localbd;
  }

  public static void a(l paraml)
  {
    cEt = paraml;
  }

  public static bd hD(String paramString)
  {
    return a(paramString, null);
  }

  public static InputStream o(String paramString, int paramInt1, int paramInt2)
  {
    bd localbd = a(paramString, null);
    if (localbd == null);
    do
    {
      return null;
      localbd.setConnectTimeout(paramInt1);
      localbd.setReadTimeout(paramInt2);
      localbd.setRequestMethod("GET");
    }
    while (a(localbd) != 0);
    return localbd.getInputStream();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.k
 * JD-Core Version:    0.6.2
 */