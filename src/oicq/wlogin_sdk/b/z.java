package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class z extends a
{
  int hyZ = 0;

  public z()
  {
    this.hxC = 292;
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

  public final byte[] a(byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, int paramInt, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4, byte[] paramArrayOfByte5)
  {
    int i = s(paramArrayOfByte1, 16);
    int j = s(paramArrayOfByte2, 16);
    int k = s(paramArrayOfByte3, 16);
    int m = s(paramArrayOfByte4, 32);
    int n = s(paramArrayOfByte5, 16);
    this.hyZ = (n + (2 + (m + (2 + (k + (2 + (2 + (j + (2 + (i + 2))))))))));
    byte[] arrayOfByte = new byte[this.hyZ];
    f.i(arrayOfByte, 0, i);
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte, 2, i);
    int i1 = i + 2;
    f.i(arrayOfByte, i1, j);
    int i2 = i1 + 2;
    System.arraycopy(paramArrayOfByte2, 0, arrayOfByte, i2, j);
    int i3 = i2 + j;
    f.i(arrayOfByte, i3, paramInt);
    int i4 = i3 + 2;
    f.i(arrayOfByte, i4, k);
    int i5 = i4 + 2;
    System.arraycopy(paramArrayOfByte3, 0, arrayOfByte, i5, k);
    int i6 = i5 + k;
    f.i(arrayOfByte, i6, m);
    int i7 = i6 + 2;
    System.arraycopy(paramArrayOfByte4, 0, arrayOfByte, i7, m);
    int i8 = i7 + m;
    f.i(arrayOfByte, i8, n);
    System.arraycopy(paramArrayOfByte5, 0, arrayOfByte, i8 + 2, n);
    oW(this.hxC);
    r(arrayOfByte, this.hyZ);
    aQx();
    return aQs();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.z
 * JD-Core Version:    0.6.2
 */