package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class r extends a
{
  int hyV = 0;
  int hyW = 0;

  public r()
  {
    this.hxC = 278;
  }

  public final byte[] bz(int paramInt1, int paramInt2)
  {
    int i = 0;
    long[] arrayOfLong = new long[0];
    this.hyV = (10 + 4 * arrayOfLong.length);
    byte[] arrayOfByte = new byte[this.hyV];
    f.h(arrayOfByte, 0, this.hyW);
    f.j(arrayOfByte, 1, paramInt1);
    f.j(arrayOfByte, 5, paramInt2);
    f.h(arrayOfByte, 9, arrayOfLong.length);
    int j = 10;
    while (true)
    {
      if (i >= arrayOfLong.length)
      {
        oW(this.hxC);
        r(arrayOfByte, this.hyV);
        aQx();
        return aQs();
      }
      f.j(arrayOfByte, j, (int)arrayOfLong[i]);
      j += 4;
      i++;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.r
 * JD-Core Version:    0.6.2
 */