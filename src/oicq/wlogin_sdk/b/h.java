package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.d;
import oicq.wlogin_sdk.c.e;
import oicq.wlogin_sdk.c.f;

public final class h extends a
{
  int hyP = 1;
  int hyQ = 1;
  int hyR = 69;

  public h()
  {
    this.hxC = 262;
    if (f.hzN <= 2)
    {
      this.hyP = 1;
      this.hyR = 69;
      return;
    }
    this.hyP = 2;
    this.hyR = 90;
  }

  public final byte[] a(int paramInt1, long paramLong, byte[] paramArrayOfByte1, byte[] paramArrayOfByte2, byte[] paramArrayOfByte3, byte[] paramArrayOfByte4, int paramInt2, byte[] paramArrayOfByte5)
  {
    if (f.hzN <= 2)
    {
      byte[] arrayOfByte6 = new byte[this.hyR];
      f.i(arrayOfByte6, 0, this.hyP);
      f.j(arrayOfByte6, 2, f.aQV());
      f.j(arrayOfByte6, 6, this.hyQ);
      f.j(arrayOfByte6, 10, 522017402);
      f.j(arrayOfByte6, 14, paramInt1);
      f.a(arrayOfByte6, 18, paramLong);
      System.arraycopy(paramArrayOfByte1, 0, arrayOfByte6, 26, paramArrayOfByte1.length);
      int i3 = 26 + paramArrayOfByte1.length;
      System.arraycopy(paramArrayOfByte2, 0, arrayOfByte6, i3, paramArrayOfByte2.length);
      int i4 = i3 + paramArrayOfByte2.length;
      f.h(arrayOfByte6, i4, 1);
      int i5 = i4 + 1;
      System.arraycopy(paramArrayOfByte3, 0, arrayOfByte6, i5, paramArrayOfByte3.length);
      System.arraycopy(paramArrayOfByte4, 0, arrayOfByte6, i5 + paramArrayOfByte3.length, paramArrayOfByte4.length);
      byte[] arrayOfByte7 = new byte[24];
      System.arraycopy(paramArrayOfByte3, 0, arrayOfByte7, 0, paramArrayOfByte3.length);
      f.a(arrayOfByte7, 16, paramLong);
      byte[] arrayOfByte8 = d.cK(arrayOfByte7);
      byte[] arrayOfByte9 = e.a(arrayOfByte6, arrayOfByte6.length, arrayOfByte8);
      this.hyR = arrayOfByte9.length;
      oW(this.hxC);
      r(arrayOfByte9, this.hyR);
      aQx();
      return aQs();
    }
    byte[] arrayOfByte1 = new byte[this.hyR];
    f.i(arrayOfByte1, 0, this.hyP);
    f.j(arrayOfByte1, 2, f.aQV());
    f.j(arrayOfByte1, 6, this.hyQ);
    f.j(arrayOfByte1, 10, 522017402);
    f.j(arrayOfByte1, 14, paramInt1);
    f.a(arrayOfByte1, 18, paramLong);
    System.arraycopy(paramArrayOfByte1, 0, arrayOfByte1, 26, paramArrayOfByte1.length);
    int i = 26 + paramArrayOfByte1.length;
    System.arraycopy(paramArrayOfByte2, 0, arrayOfByte1, i, paramArrayOfByte2.length);
    int j = i + paramArrayOfByte2.length;
    f.h(arrayOfByte1, j, 1);
    int k = j + 1;
    System.arraycopy(paramArrayOfByte3, 0, arrayOfByte1, k, paramArrayOfByte3.length);
    int m = k + paramArrayOfByte3.length;
    System.arraycopy(paramArrayOfByte4, 0, arrayOfByte1, m, paramArrayOfByte4.length);
    int n = m + paramArrayOfByte4.length;
    f.j(arrayOfByte1, n, 0);
    int i1 = n + 4;
    f.h(arrayOfByte1, i1, paramInt2);
    int i2 = i1 + 1;
    if ((paramArrayOfByte5 == null) || (paramArrayOfByte5.length <= 0))
    {
      byte[] arrayOfByte2 = new byte[16];
      f.j(arrayOfByte2, 0, f.aQV());
      f.j(arrayOfByte2, 4, f.aQV());
      f.j(arrayOfByte2, 8, f.aQV());
      f.j(arrayOfByte2, 12, f.aQV());
    }
    while (true)
    {
      byte[] arrayOfByte3 = new byte[24];
      System.arraycopy(paramArrayOfByte3, 0, arrayOfByte3, 0, paramArrayOfByte3.length);
      f.a(arrayOfByte3, 16, paramLong);
      byte[] arrayOfByte4 = d.cK(arrayOfByte3);
      byte[] arrayOfByte5 = e.a(arrayOfByte1, arrayOfByte1.length, arrayOfByte4);
      this.hyR = arrayOfByte5.length;
      oW(this.hxC);
      r(arrayOfByte5, this.hyR);
      aQx();
      return aQs();
      System.arraycopy(paramArrayOfByte5, 0, arrayOfByte1, i2, paramArrayOfByte5.length);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.h
 * JD-Core Version:    0.6.2
 */