package com.tencent.mm.modelcdntran;

import android.net.wifi.WifiInfo;
import com.tencent.mm.a.c;
import com.tencent.mm.model.be;
import com.tencent.mm.n.a;
import com.tencent.mm.n.x;
import com.tencent.mm.network.ab;
import com.tencent.mm.network.aj;
import com.tencent.mm.network.r;
import com.tencent.mm.protocal.a.bz;
import com.tencent.mm.protocal.a.ic;
import com.tencent.mm.protocal.a.id;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.ba;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.IOException;
import java.nio.ByteBuffer;

public final class i extends x
  implements ab
{
  public static long cpA = 0L;
  public static long cpB = 0L;
  public static long cpC = 0L;
  public static long cpz = 0L;
  private com.tencent.mm.n.m cjh;
  private final a cke;
  public long startTime = 0L;

  public i()
  {
    com.tencent.mm.n.b localb = new com.tencent.mm.n.b();
    localb.a(new ic());
    localb.b(new id());
    localb.es("/cgi-bin/micromsg-bin/getcdndns");
    localb.cN(379);
    localb.cO(0);
    localb.cP(0);
    this.cke = localb.wx();
    ((ic)this.cke.wr()).fKs = "";
  }

  private static String yu()
  {
    if (!ba.bk(al.getContext()))
      return null;
    WifiInfo localWifiInfo;
    if (ba.bt(al.getContext()))
    {
      localWifiInfo = ba.bu(al.getContext());
      if (localWifiInfo == null)
        return null;
    }
    for (String str1 = "wifi_" + localWifiInfo.getSSID(); ; str1 = "mobile_" + ba.bl(al.getContext()) + "_" + ba.bm(al.getContext()))
    {
      aa.e("MicroMsg.NetSceneGetCDNDns", "cdntra getCurCacheFullPath file:%s", new Object[] { str1 });
      if ((str1 != null) && (str1.length() >= 2))
        break;
      return null;
    }
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(str1.hashCode());
    String str2 = String.format("%x", arrayOfObject);
    StringBuilder localStringBuilder = new StringBuilder();
    j.yw();
    return j.yx() + str2;
  }

  private static bz yv()
  {
    String str = yu();
    if (cj.hX(str))
      return null;
    byte[] arrayOfByte1 = c.h(str, 0, -1);
    if (cj.A(arrayOfByte1))
    {
      aa.b("MicroMsg.NetSceneGetCDNDns", "cdntra getFromCache  read file failed:%s", new Object[] { str });
      return null;
    }
    ByteBuffer localByteBuffer;
    try
    {
      localByteBuffer = ByteBuffer.wrap(arrayOfByte1);
      long l = localByteBuffer.getLong();
      if (cj.FC() - l > 3600L)
      {
        aa.c("MicroMsg.NetSceneGetCDNDns", "cdntra getFromCache  file is timeout remove it :%s", new Object[] { str });
        c.deleteFile(str);
        return null;
      }
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = str;
      arrayOfObject[1] = localException.getMessage();
      aa.c("MicroMsg.NetSceneGetCDNDns", "parse from file failed :%s  e:%s", arrayOfObject);
      return null;
    }
    byte[] arrayOfByte2 = new byte[-8 + arrayOfByte1.length];
    localByteBuffer.get(arrayOfByte2);
    bz localbz = new bz().aK(arrayOfByte2);
    return localbz;
  }

  public final int a(r paramr, com.tencent.mm.n.m paramm)
  {
    this.cjh = paramm;
    int i = be.uz().sd();
    if (i == 0)
    {
      aa.e("MicroMsg.NetSceneGetCDNDns", "has not set uin.");
      return -1;
    }
    if (cpz != i)
    {
      cpz = i;
      cpA = 0L;
      cpB = 0L;
      cpC = 0L;
    }
    bz localbz = yv();
    if (localbz != null)
    {
      boolean bool = j.yz().a(localbz);
      Object[] arrayOfObject4 = new Object[1];
      arrayOfObject4[0] = Boolean.valueOf(bool);
      aa.d("MicroMsg.NetSceneGetCDNDns", "cdntra getfromcache succ , setCDNDnsInfo :%b ", arrayOfObject4);
      if (bool)
        return -1;
    }
    long l = cj.FC();
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Long.valueOf(l - cpA);
    arrayOfObject1[1] = Long.valueOf(l - cpB);
    arrayOfObject1[2] = Long.valueOf(cpC);
    aa.e("MicroMsg.NetSceneGetCDNDns", "cdntra doscene Sec:%d Hour[%d,%d]", arrayOfObject1);
    if ((l > cpA) && (l - cpA < 10L))
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Long.valueOf(l - cpA);
      aa.c("MicroMsg.NetSceneGetCDNDns", "Last get dns at %d ago . ignore!", arrayOfObject3);
      return -1;
    }
    if ((l > cpB) && (l - cpB < 3600L) && (cpC >= 90L))
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(l - cpB);
      aa.c("MicroMsg.NetSceneGetCDNDns", "in 1 hour , get dns more than 90  (%d). ignore!", arrayOfObject2);
      return -1;
    }
    cpA = l;
    if ((l < cpB) || (l - cpC > 3600L))
      cpB = l;
    for (cpC = 0L; ; cpC = 1L + cpC)
    {
      this.startTime = l;
      return a(paramr, this.cke, this);
    }
  }

  public final void a(int paramInt1, int paramInt2, int paramInt3, String paramString, aj paramaj, byte[] paramArrayOfByte)
  {
    aa.d("MicroMsg.NetSceneGetCDNDns", "onGYNetEnd errtype:" + paramInt2 + " errcode:" + paramInt3);
    id localid = (id)((a)paramaj).ws();
    if ((paramInt2 != 0) || (paramInt3 != 0) || (localid.fKt == null))
    {
      com.tencent.mm.plugin.d.c.m localm = com.tencent.mm.plugin.d.c.m.dZN;
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = Integer.valueOf(h.cpy);
      arrayOfObject1[1] = Integer.valueOf(0);
      arrayOfObject1[2] = Long.valueOf(this.startTime);
      localm.d(10769, arrayOfObject1);
      Object[] arrayOfObject2 = new Object[3];
      arrayOfObject2[0] = Integer.valueOf(paramInt2);
      arrayOfObject2[1] = Integer.valueOf(paramInt3);
      if (localid.fKt == null);
      for (boolean bool = true; ; bool = false)
      {
        arrayOfObject2[2] = Boolean.valueOf(bool);
        aa.c("MicroMsg.NetSceneGetCDNDns", "onGYNetEnd: [%d ,%d]  info is null :%b", arrayOfObject2);
        this.cjh.a(paramInt2, paramInt3, paramString, this);
        return;
      }
    }
    if (!j.yz().a(localid.fKt))
    {
      aa.e("MicroMsg.NetSceneGetCDNDns", "onGYNetEnd setCDNDnsInfo failed ");
      this.cjh.a(paramInt2, paramInt3, paramString, this);
      return;
    }
    try
    {
      byte[] arrayOfByte2 = localid.fKt.toByteArray();
      arrayOfByte1 = arrayOfByte2;
      if (cj.A(arrayOfByte1))
      {
        aa.w("MicroMsg.NetSceneGetCDNDns", "saveToCache failed infoBuf is null");
        this.cjh.a(paramInt2, paramInt3, paramString, this);
        return;
      }
    }
    catch (IOException localIOException)
    {
      while (true)
      {
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = localIOException.getMessage();
        aa.c("MicroMsg.NetSceneGetCDNDns", "onGYNetEnd getDnsInfo toByteArray failed: %s", arrayOfObject3);
        byte[] arrayOfByte1 = null;
        continue;
        String str = yu();
        if (!cj.hX(str))
          try
          {
            ByteBuffer localByteBuffer = ByteBuffer.allocate(8 + arrayOfByte1.length);
            localByteBuffer.putLong(cj.FC());
            localByteBuffer.put(arrayOfByte1);
            c.a(str, localByteBuffer.array(), localByteBuffer.array().length);
          }
          catch (Exception localException)
          {
            Object[] arrayOfObject4 = new Object[2];
            arrayOfObject4[0] = str;
            arrayOfObject4[1] = localException.getMessage();
            aa.c("MicroMsg.NetSceneGetCDNDns", "saveToCache failed path:%s e:%s", arrayOfObject4);
          }
      }
    }
  }

  public final int getType()
  {
    return 379;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelcdntran.i
 * JD-Core Version:    0.6.2
 */