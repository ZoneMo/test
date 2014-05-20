package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class c extends a
{
  int hyH = 1;
  int hyI = f.hzN;
  int hyJ = 22;

  public c()
  {
    this.hxC = 256;
  }

  public final byte[] oX(int paramInt)
  {
    byte[] arrayOfByte = new byte[this.hyJ];
    f.i(arrayOfByte, 0, this.hyH);
    f.j(arrayOfByte, 2, this.hyI);
    f.j(arrayOfByte, 6, 522017402);
    f.j(arrayOfByte, 10, 1);
    f.j(arrayOfByte, 14, paramInt);
    f.j(arrayOfByte, 18, 8256);
    oW(this.hxC);
    r(arrayOfByte, this.hyJ);
    aQx();
    return aQs();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.c
 * JD-Core Version:    0.6.2
 */