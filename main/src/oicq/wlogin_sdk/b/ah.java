package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class ah extends a
{
  int hzf = 0;
  int hzg = 0;

  public ah()
  {
    this.hxC = 322;
  }

  public final byte[] cG(byte[] paramArrayOfByte)
  {
    this.hzg = (4 + paramArrayOfByte.length);
    byte[] arrayOfByte = new byte[this.hzg];
    f.i(arrayOfByte, 0, this.hzf);
    f.i(arrayOfByte, 2, paramArrayOfByte.length);
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 4, paramArrayOfByte.length);
    oW(this.hxC);
    r(arrayOfByte, arrayOfByte.length);
    aQx();
    return aQs();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.ah
 * JD-Core Version:    0.6.2
 */