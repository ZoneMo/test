package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class ao extends a
{
  int hzn = 22;
  int hzo = 1;
  int hzp = 1536;

  public ao()
  {
    this.hxC = 24;
  }

  public final byte[] l(int paramInt, long paramLong)
  {
    byte[] arrayOfByte = new byte[this.hzn];
    f.i(arrayOfByte, 0, this.hzo);
    f.j(arrayOfByte, 2, this.hzp);
    f.j(arrayOfByte, 6, 522017402);
    f.j(arrayOfByte, 10, paramInt);
    f.j(arrayOfByte, 14, (int)paramLong);
    f.i(arrayOfByte, 18, 0);
    f.i(arrayOfByte, 20, 0);
    oW(this.hxC);
    r(arrayOfByte, this.hzn);
    aQx();
    return aQs();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.ao
 * JD-Core Version:    0.6.2
 */