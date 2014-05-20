package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class i extends a
{
  int hyS = 6;

  public i()
  {
    this.hxC = 263;
  }

  public final byte[] aQB()
  {
    byte[] arrayOfByte = new byte[this.hyS];
    f.i(arrayOfByte, 0, 0);
    f.h(arrayOfByte, 2, 1);
    f.i(arrayOfByte, 3, 102400);
    f.h(arrayOfByte, 5, 1);
    oW(this.hxC);
    r(arrayOfByte, this.hyS);
    aQx();
    return aQs();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.i
 * JD-Core Version:    0.6.2
 */