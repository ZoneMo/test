package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class ac extends a
{
  public int hzd = 0;

  public ac()
  {
    this.hxC = 306;
  }

  public final byte[] aQN()
  {
    byte[] arrayOfByte = new byte[this.hzd];
    System.arraycopy(this.hxw, 2 + this.hyA, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }

  public final Boolean aQy()
  {
    if (this.hyB < 2)
      return Boolean.valueOf(false);
    this.hzd = f.w(this.hxw, this.hyA);
    if (2 + this.hzd > this.hyB)
      return Boolean.valueOf(false);
    return Boolean.valueOf(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.ac
 * JD-Core Version:    0.6.2
 */