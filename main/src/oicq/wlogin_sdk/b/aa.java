package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class aa extends a
{
  int hza = 0;
  int hzb = 0;

  public aa()
  {
    this.hxC = 293;
  }

  public final byte[] aQL()
  {
    byte[] arrayOfByte = new byte[this.hza];
    System.arraycopy(this.hxw, 2 + this.hyA, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }

  public final byte[] aQM()
  {
    byte[] arrayOfByte = new byte[this.hzb];
    System.arraycopy(this.hxw, 2 + (2 + this.hyA + this.hza), arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }

  public final Boolean aQy()
  {
    if (this.hyB < 2)
      return Boolean.valueOf(false);
    this.hza = f.w(this.hxw, this.hyA);
    if (this.hyB < 2 + (2 + this.hza))
      return Boolean.valueOf(false);
    this.hzb = f.w(this.hxw, 2 + this.hyA + this.hza);
    return Boolean.valueOf(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.aa
 * JD-Core Version:    0.6.2
 */