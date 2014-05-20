package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class am extends a
{
  public am()
  {
    this.hxC = 327;
  }

  private static int cI(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte != null)
    {
      if (paramArrayOfByte.length > 32)
        return 32;
      return paramArrayOfByte.length;
    }
    return 0;
  }

  public final byte[] e(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2)
  {
    int i = cI(paramArrayOfByte1);
    int j = cI(paramArrayOfByte2);
    byte[] arrayOfByte = new byte[j + (2 + (i + 6))];
    f.b(arrayOfByte, 0, 522017402L);
    f.i(arrayOfByte, 4, i);
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 6, i);
    int k = i + 6;
    f.i(arrayOfByte, k, j);
    System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, k + 2, j);
    oW(this.hxC);
    r(arrayOfByte, arrayOfByte.length);
    aQx();
    return aQs();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.am
 * JD-Core Version:    0.6.2
 */