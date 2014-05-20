package com.tencent.mm.network.a;

import com.tencent.mm.sdk.platformtools.s;
import java.net.InetAddress;

public final class f
{
  private InetAddress cGa;
  private int port;
  private int type;

  public f(InetAddress paramInetAddress, int paramInt1, int paramInt2)
  {
    this.cGa = paramInetAddress;
    this.port = paramInt1;
    this.type = paramInt2;
  }

  public static int a(f paramf)
  {
    if (paramf == null);
    while (paramf.cGa == null)
      return 0;
    byte[] arrayOfByte = paramf.cGa.getAddress();
    return 0xFF & arrayOfByte[3] | 0xFF00 & arrayOfByte[2] << 8 | 0xFF0000 & arrayOfByte[1] << 16 | 0xFF000000 & arrayOfByte[0] << 24;
  }

  public static f hG(String paramString)
  {
    if (paramString == null);
    String[] arrayOfString;
    do
    {
      return null;
      arrayOfString = paramString.split(":");
    }
    while ((arrayOfString == null) || (arrayOfString.length != 3));
    try
    {
      f localf = new f(s.sx(arrayOfString[0]), Integer.parseInt(arrayOfString[1]), Integer.parseInt(arrayOfString[2]));
      return localf;
    }
    catch (Exception localException)
    {
    }
    return null;
  }

  public final int Fn()
  {
    return this.port;
  }

  public final String toString()
  {
    String str = "hc";
    if (this.type == 2)
      str = "dns";
    while (true)
    {
      return this.cGa.getHostAddress() + ":" + this.port + "(" + str + ")";
      if (this.type == 3)
        str = "svrdns";
      else if (this.type == 4)
        str = "waphc";
      else if (this.type == 5)
        str = "newdns";
      else if (this.type == 6)
        str = "auth";
      else if (this.type == 7)
        str = "debug";
    }
  }

  public final int type()
  {
    return this.type;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.network.a.f
 * JD-Core Version:    0.6.2
 */