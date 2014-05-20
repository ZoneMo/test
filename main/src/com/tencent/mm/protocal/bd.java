package com.tencent.mm.protocal;

import com.tencent.mm.a.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.Locale;

public final class bd extends p
  implements n
{
  private byte[] ciQ;
  private byte[] fyz = new byte[0];
  private int uin = 0;

  public final boolean awI()
  {
    return true;
  }

  public final byte[] awS()
  {
    return this.ciQ;
  }

  public final void az(byte[] paramArrayOfByte)
  {
    this.fyz = paramArrayOfByte;
  }

  public final void bQ(int paramInt)
  {
    this.uin = paramInt;
  }

  public final int getCmdId()
  {
    return 205;
  }

  public final int wy()
  {
    return 0;
  }

  public final byte[] wz()
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(this.uin);
    if (this.fyz == null);
    for (int i = -1; ; i = this.fyz.length)
    {
      arrayOfObject1[1] = Integer.valueOf(i);
      aa.e("MicroMsg.MMSyncCheck", "toProtoBuf dksynccheck uin:%d keybuf:%d", arrayOfObject1);
      if ((this.uin != 0) && (!cj.A(this.fyz)))
        break;
      return new byte[0];
    }
    int j = 0x5601F281 ^ (0x7FFFF & this.uin >> 13 | this.fyz.length << 19);
    int k = 0x5601F281 ^ (0x7FFFF & this.fyz.length >> 13 | this.uin << 19);
    byte[] arrayOfByte1 = new byte[20 + this.fyz.length];
    Object[] arrayOfObject2 = new Object[5];
    arrayOfObject2[0] = Integer.valueOf(this.uin);
    arrayOfObject2[1] = Integer.valueOf(j);
    arrayOfObject2[2] = Integer.valueOf(this.fyz.length);
    arrayOfObject2[3] = Integer.valueOf(k);
    arrayOfObject2[4] = Integer.valueOf(arrayOfByte1.length);
    aa.e("MicroMsg.MMSyncCheck", "dksynccheck uin=[%d/%d], keyBufLen=[%d/%d] outBuf=[%d]", arrayOfObject2);
    arrayOfByte1[0] = ((byte)(0xFF & j >> 24));
    arrayOfByte1[1] = ((byte)(0xFF & j >> 16));
    arrayOfByte1[2] = ((byte)(0xFF & j >> 8));
    arrayOfByte1[3] = ((byte)(j & 0xFF));
    arrayOfByte1[4] = ((byte)(0xFF & k >> 24));
    arrayOfByte1[5] = ((byte)(0xFF & k >> 16));
    arrayOfByte1[6] = ((byte)(0xFF & k >> 8));
    arrayOfByte1[7] = ((byte)(k & 0xFF));
    System.arraycopy(this.fyz, 0, arrayOfByte1, 8, this.fyz.length);
    arrayOfByte1[(-12 + arrayOfByte1.length)] = ((byte)(0xFF & a.fxr >> 24));
    arrayOfByte1[(-11 + arrayOfByte1.length)] = ((byte)(0xFF & a.fxr >> 16));
    arrayOfByte1[(-10 + arrayOfByte1.length)] = ((byte)(0xFF & a.fxr >> 8));
    arrayOfByte1[(-9 + arrayOfByte1.length)] = ((byte)(0xFF & a.fxr));
    String str = Locale.getDefault().toString();
    if (str.length() > 8)
      str.substring(0, 8);
    byte[] arrayOfByte2 = str.getBytes();
    System.arraycopy(arrayOfByte2, 0, arrayOfByte1, -8 + arrayOfByte1.length, arrayOfByte2.length);
    this.ciQ = f.i(arrayOfByte1);
    return arrayOfByte1;
  }

  public final boolean xh()
  {
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.bd
 * JD-Core Version:    0.6.2
 */