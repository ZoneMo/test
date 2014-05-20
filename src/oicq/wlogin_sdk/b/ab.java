package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class ab extends a
{
  int hzc = 0;

  public ab()
  {
    this.hxC = 296;
  }

  private static int s(byte[] paramArrayOfByte, int paramInt)
  {
    if (paramArrayOfByte != null)
    {
      if (paramArrayOfByte.length > paramInt)
        return paramInt;
      return paramArrayOfByte.length;
    }
    return 0;
  }

  public final byte[] a(int paramInt1, int paramInt2, int paramInt3, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = s(paramArrayOfByte1, 32);
    int j = s(paramArrayOfByte2, 16);
    this.hzc = (2 + (j + (2 + (i + 11))));
    byte[] arrayOfByte = new byte[this.hzc];
    f.i(arrayOfByte, 0, 0);
    f.h(arrayOfByte, 2, paramInt1);
    f.h(arrayOfByte, 3, paramInt2);
    f.h(arrayOfByte, 4, paramInt3);
    f.j(arrayOfByte, 5, 0);
    f.i(arrayOfByte, 9, i);
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 11, i);
    int k = i + 11;
    f.i(arrayOfByte, k, j);
    int m = k + 2;
    System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, m, j);
    f.i(arrayOfByte, m + j, 0);
    oW(this.hxC);
    r(arrayOfByte, this.hzc);
    aQx();
    return aQs();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.ab
 * JD-Core Version:    0.6.2
 */