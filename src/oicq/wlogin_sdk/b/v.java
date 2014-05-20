package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class v extends a
{
  int hyY = 0;

  public v()
  {
    this.hxC = 285;
  }

  public final long aQG()
  {
    return 0xFFFFFFFF & f.x(this.hxw, this.hyA);
  }

  public final byte[] aQH()
  {
    byte[] arrayOfByte = new byte[16];
    System.arraycopy(this.hxw, 4 + this.hyA, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }

  public final byte[] aQI()
  {
    byte[] arrayOfByte = new byte[this.hyY];
    System.arraycopy(this.hxw, 2 + (16 + (4 + this.hyA)), arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }

  public final Boolean aQy()
  {
    if (this.hyB < 22)
      return Boolean.valueOf(false);
    this.hyY = f.w(this.hxw, 16 + (4 + this.hyA));
    this.hyY = (0xFFFF & this.hyY);
    if (this.hyB < 22 + this.hyY)
      return Boolean.valueOf(false);
    return Boolean.valueOf(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.v
 * JD-Core Version:    0.6.2
 */