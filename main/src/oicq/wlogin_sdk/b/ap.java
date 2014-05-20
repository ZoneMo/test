package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class ap extends a
{
  int hzq = 0;
  int hzr = 0;

  public ap()
  {
    this.hxC = 2;
  }

  public final byte[] f(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    this.hzq = (6 + paramArrayOfByte1.length + paramArrayOfByte2.length);
    byte[] arrayOfByte = new byte[this.hzq];
    f.i(arrayOfByte, 0, this.hzr);
    f.i(arrayOfByte, 2, paramArrayOfByte1.length);
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 4, paramArrayOfByte1.length);
    int i = 4 + paramArrayOfByte1.length;
    f.i(arrayOfByte, i, paramArrayOfByte2.length);
    System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, i + 2, paramArrayOfByte2.length);
    oW(this.hxC);
    r(arrayOfByte, this.hzq);
    aQx();
    return aQs();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.ap
 * JD-Core Version:    0.6.2
 */