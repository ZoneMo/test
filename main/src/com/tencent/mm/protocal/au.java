package com.tencent.mm.protocal;

import com.tencent.mm.sdk.platformtools.cj;

public final class au extends p
  implements n
{
  byte[] bMd = null;
  long fyu = -1L;

  public final void ay(byte[] paramArrayOfByte)
  {
    this.bMd = paramArrayOfByte;
  }

  public final void bH(long paramLong)
  {
    this.fyu = paramLong;
  }

  public final int getCmdId()
  {
    return 1000000190;
  }

  public final int wy()
  {
    return 268369922;
  }

  public final byte[] wz()
  {
    byte[] arrayOfByte = new byte[8 + this.bMd.length];
    int i = (int)(cj.FD() - this.fyu);
    arrayOfByte[0] = ((byte)(0xFF & i >> 24));
    arrayOfByte[1] = ((byte)(0xFF & i >> 16));
    arrayOfByte[2] = ((byte)(0xFF & i >> 8));
    arrayOfByte[3] = ((byte)(i & 0xFF));
    arrayOfByte[4] = ((byte)(0xFF & this.bMd.length >> 24));
    arrayOfByte[5] = ((byte)(0xFF & this.bMd.length >> 16));
    arrayOfByte[6] = ((byte)(0xFF & this.bMd.length >> 8));
    arrayOfByte[7] = ((byte)(0xFF & this.bMd.length));
    System.arraycopy(this.bMd, 0, arrayOfByte, 8, this.bMd.length);
    cj.cn(arrayOfByte);
    return arrayOfByte;
  }

  public final boolean xh()
  {
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.protocal.au
 * JD-Core Version:    0.6.2
 */