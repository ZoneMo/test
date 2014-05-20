package com.tencent.mm.protocal;

import android.annotation.TargetApi;
import android.os.Build.VERSION;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.nio.charset.Charset;

public final class be extends q
  implements o
{
  private String bRv = null;
  private byte[] ciQ = null;
  private long fyA = 7L;
  private byte[] fyB;

  public final void aA(byte[] paramArrayOfByte)
  {
    this.ciQ = paramArrayOfByte;
  }

  public final boolean awI()
  {
    return true;
  }

  public final long awT()
  {
    return this.fyA;
  }

  @TargetApi(9)
  public final String awU()
  {
    if (this.ciQ == null)
      return "";
    byte[] arrayOfByte;
    if (this.bRv == null)
    {
      arrayOfByte = MMProtocalJni.aesDecrypt(this.fyB, this.ciQ);
      if (cj.A(arrayOfByte))
        return "";
      if (Build.VERSION.SDK_INT < 9)
        break label69;
    }
    label69: for (this.bRv = new String(arrayOfByte, Charset.forName("UTF-8")); ; this.bRv = new String(arrayOfByte))
      return this.bRv;
  }

  public final int getCmdId()
  {
    return 1000000205;
  }

  public final int s(byte[] paramArrayOfByte)
  {
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length < 12))
    {
      StringBuilder localStringBuilder = new StringBuilder("dksynccheck err resp buf:");
      if (paramArrayOfByte == null);
      for (int i = -1; ; i = paramArrayOfByte.length)
      {
        aa.e("MicroMsg.MMSyncCheck", i);
        return -1;
      }
    }
    this.fyA = (0xFF & paramArrayOfByte[3] | (0xFF & paramArrayOfByte[2]) << 8 | (0xFF & paramArrayOfByte[1]) << 16 | (0xFF & paramArrayOfByte[0]) << 24);
    int j = 0xFF & paramArrayOfByte[7] | (0xFF & paramArrayOfByte[6]) << 8 | (0xFF & paramArrayOfByte[5]) << 16 | (0xFF & paramArrayOfByte[4]) << 24;
    int k = 0xFF & paramArrayOfByte[11] | (0xFF & paramArrayOfByte[10]) << 8 | (0xFF & paramArrayOfByte[9]) << 16 | (0xFF & paramArrayOfByte[8]) << 24;
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = Long.valueOf(this.fyA);
    arrayOfObject1[1] = Integer.valueOf(j);
    arrayOfObject1[2] = Integer.valueOf(k);
    aa.e("MicroMsg.MMSyncCheck", " fromProtoBuf oreh synccheck resp selector:%d, redCode:%d, keyLen:%d", arrayOfObject1);
    if (j != -3002)
    {
      this.bRv = "";
      return j;
    }
    if ((k != -12 + paramArrayOfByte.length) && (k != -16 + (-12 + paramArrayOfByte.length)))
    {
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = Integer.valueOf(k);
      arrayOfObject2[1] = Integer.valueOf(paramArrayOfByte.length);
      aa.b("MicroMsg.MMSyncCheck", " the key len is invalid keyLen:%d, bufLen:%d", arrayOfObject2);
      return -1;
    }
    if (k == -16 + (-12 + paramArrayOfByte.length))
    {
      this.ciQ = new byte[16];
      System.arraycopy(paramArrayOfByte, -16 + paramArrayOfByte.length, this.ciQ, 0, 16);
    }
    this.fyB = new byte[k];
    System.arraycopy(paramArrayOfByte, 12, this.fyB, 0, k);
    return j;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.be
 * JD-Core Version:    0.6.2
 */