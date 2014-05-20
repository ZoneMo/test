package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class b extends a
{
  int hyC = 4;
  int hyD = 14;
  int hyE = 1;
  int hyF = 20;
  byte[] hyG = new byte[2];

  public b()
  {
    this.hxC = 1;
  }

  public final Boolean aQy()
  {
    if (this.hyB < 20)
      return Boolean.valueOf(false);
    return Boolean.valueOf(true);
  }

  public final byte[] d(long paramLong, byte[] paramArrayOfByte)
  {
    byte[] arrayOfByte = new byte[this.hyF];
    f.i(arrayOfByte, 0, this.hyE);
    f.j(arrayOfByte, 2, f.aQV());
    f.j(arrayOfByte, 6, (int)paramLong);
    f.b(arrayOfByte, 10, f.aQX());
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 14, paramArrayOfByte.length);
    f.i(arrayOfByte, 14 + paramArrayOfByte.length, 0);
    oW(this.hxC);
    r(arrayOfByte, this.hyF);
    aQx();
    return aQs();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.b
 * JD-Core Version:    0.6.2
 */