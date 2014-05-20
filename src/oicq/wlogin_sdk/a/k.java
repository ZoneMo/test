package oicq.wlogin_sdk.a;

import android.content.Context;
import java.security.SecureRandom;
import oicq.wlogin_sdk.b.g;
import oicq.wlogin_sdk.c.b;
import oicq.wlogin_sdk.sharemem.WloginSigInfo;

public final class k
{
  public static byte[] hxR = new byte[0];
  public long hwZ = 0L;
  public SecureRandom hxG = new SecureRandom();
  public byte[] hxH = oicq.wlogin_sdk.c.f.aQW();
  public byte[] hxI = null;
  public byte[] hxJ = new byte[16];
  public oicq.wlogin_sdk.b.f hxK = new oicq.wlogin_sdk.b.f();
  public g hxL = new g();
  public long hxM = 0L;
  public int hxN = 0;
  public long hxO = -1L;
  public int hxP = 0;
  byte[] hxQ = new byte[0];
  byte[] hxS = new byte[0];
  int hxT = 0;
  byte[] hxU = new byte[0];
  byte[] hxV = new byte[0];
  byte[] hxW = new byte[0];
  byte[] hxX = new byte[0];
  byte[] hxY = new byte[0];
  byte[] hxZ = new byte[0];
  public Context hxo = null;
  int hya = 0;
  int hyb = 0;
  int hyc = 0;
  byte[] hyd = new byte[0];
  b hye = new b();
  byte[] hyf = new byte[0];
  byte[] hyg = new byte[4];
  f hyh = null;

  public static long aQu()
  {
    return System.currentTimeMillis() / 1000L;
  }

  public final int a(long paramLong1, long paramLong2, long paramLong3, long paramLong4, long paramLong5, long paramLong6, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4, byte[] paramArrayOfByte5, byte[] paramArrayOfByte6, byte[] paramArrayOfByte7, byte[] paramArrayOfByte8, byte[] paramArrayOfByte9, byte[] paramArrayOfByte10, byte[] paramArrayOfByte11, byte[] paramArrayOfByte12, byte[] paramArrayOfByte13, byte[] paramArrayOfByte14, byte[] paramArrayOfByte15, byte[] paramArrayOfByte16, byte[][] paramArrayOfByte)
  {
    try
    {
      oicq.wlogin_sdk.c.f.yh("put siginfo:" + paramLong1 + "," + paramLong2 + "," + paramLong3 + "," + paramLong4 + "," + paramLong5 + "," + paramLong6 + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte1) + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte2) + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte3) + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte4) + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte5) + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte6) + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte7) + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte8) + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte9) + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte10) + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte11) + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte12) + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte13) + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte14) + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte15) + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte16));
      Object localObject2;
      if (paramArrayOfByte != null)
        localObject2 = "";
      for (int j = 0; ; j++)
      {
        if (j >= paramArrayOfByte.length)
        {
          oicq.wlogin_sdk.c.f.yh("reserve:" + (String)localObject2);
          int i = this.hyh.a(paramLong1, paramLong2, paramLong3, paramLong4, paramLong5, paramLong6, paramArrayOfByte1, paramArrayOfByte2, paramArrayOfByte3, paramArrayOfByte4, paramArrayOfByte5, paramArrayOfByte6, paramArrayOfByte7, paramArrayOfByte8, paramArrayOfByte9, paramArrayOfByte10, paramArrayOfByte11, paramArrayOfByte12, paramArrayOfByte13, paramArrayOfByte14, paramArrayOfByte15, paramArrayOfByte16, paramArrayOfByte);
          return i;
        }
        String str = localObject2 + "reserve[i]:" + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte[j]);
        localObject2 = str;
      }
    }
    finally
    {
    }
  }

  public final int a(long paramLong1, long paramLong2, long paramLong3, long paramLong4, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    try
    {
      oicq.wlogin_sdk.c.f.tf("put st sig:" + paramLong1 + "," + paramLong2 + "," + paramLong3 + "," + paramLong4 + ",," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte1) + "," + oicq.wlogin_sdk.c.f.cN(paramArrayOfByte2));
      int i = this.hyh.a(paramLong1, paramLong2, paramLong3, paramLong4, paramArrayOfByte1, paramArrayOfByte2);
      return i;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void aQv()
  {
    this.hxK = new oicq.wlogin_sdk.b.f();
  }

  public final void c(Long paramLong)
  {
    try
    {
      this.hyh.c(paramLong);
      return;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final WloginSigInfo cs(long paramLong)
  {
    try
    {
      oicq.wlogin_sdk.c.f.bm("get_siginfo", "uin=" + paramLong + "appid=522017402");
      WloginSigInfo localWloginSigInfo = this.hyh.cs(paramLong);
      if (localWloginSigInfo != null);
      return localWloginSigInfo;
    }
    finally
    {
      localObject = finally;
      throw localObject;
    }
  }

  public final void z(Context paramContext, int paramInt)
  {
    this.hxo = paramContext;
    this.hxP = paramInt;
    this.hyh = new f(paramContext);
    byte[] arrayOfByte = new byte[16];
    this.hxG.nextBytes(arrayOfByte);
    System.arraycopy(arrayOfByte, 0, this.hxJ, 0, arrayOfByte.length);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.a.k
 * JD-Core Version:    0.6.2
 */