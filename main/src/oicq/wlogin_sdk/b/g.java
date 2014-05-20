package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class g extends a
{
  int hyL = 0;
  int hyM = 0;
  int hyN = 0;
  int hyO = 0;

  public g()
  {
    this.hxC = 261;
  }

  public final byte[] aQA()
  {
    byte[] arrayOfByte = new byte[this.hyM];
    if (this.hyM <= 0)
      return arrayOfByte;
    System.arraycopy(this.hxw, this.hyO, arrayOfByte, 0, this.hyM);
    return arrayOfByte;
  }

  public final Boolean aQy()
  {
    if (this.hyB < 2)
      return Boolean.valueOf(false);
    this.hyM = f.w(this.hxw, this.hyA);
    if (this.hyB < 2 + (2 + this.hyM))
      return Boolean.valueOf(false);
    this.hyL = f.w(this.hxw, 2 + this.hyA + this.hyM);
    if (this.hyB < 2 + (2 + this.hyM) + this.hyL)
      return Boolean.valueOf(false);
    this.hyO = (2 + this.hyA);
    this.hyN = (2 + (2 + this.hyM) + this.hyA);
    return Boolean.valueOf(true);
  }

  public final byte[] aQz()
  {
    byte[] arrayOfByte = new byte[this.hyL];
    if (this.hyL <= 0)
      return arrayOfByte;
    System.arraycopy(this.hxw, this.hyN, arrayOfByte, 0, this.hyL);
    return arrayOfByte;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.g
 * JD-Core Version:    0.6.2
 */