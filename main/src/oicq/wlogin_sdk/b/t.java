package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class t extends a
{
  public int hyX = 0;

  public t()
  {
    this.hxC = 282;
  }

  public final byte[] aQC()
  {
    byte[] arrayOfByte = new byte[2];
    System.arraycopy(this.hxw, this.hyA, arrayOfByte, 0, 2);
    return arrayOfByte;
  }

  public final byte[] aQD()
  {
    byte[] arrayOfByte = new byte[1];
    System.arraycopy(this.hxw, 2 + this.hyA, arrayOfByte, 0, 1);
    return arrayOfByte;
  }

  public final byte[] aQE()
  {
    byte[] arrayOfByte = new byte[1];
    System.arraycopy(this.hxw, 1 + (2 + this.hyA), arrayOfByte, 0, 1);
    return arrayOfByte;
  }

  public final byte[] aQF()
  {
    byte[] arrayOfByte = new byte[this.hyX];
    System.arraycopy(this.hxw, 1 + (1 + (1 + (2 + this.hyA))), arrayOfByte, 0, this.hyX);
    return arrayOfByte;
  }

  public final Boolean aQy()
  {
    if (this.hyB < 5)
      return Boolean.valueOf(false);
    int i = f.v(this.hxw, 1 + (1 + (2 + this.hyA)));
    if (this.hyB < i + 5)
      return Boolean.valueOf(false);
    this.hyX = i;
    return Boolean.valueOf(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.t
 * JD-Core Version:    0.6.2
 */