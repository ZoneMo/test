package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class al extends a
{
  public int hzk = 0;
  public int hzl = 0;
  public int hzm = 0;

  public al()
  {
    this.hxC = 326;
  }

  public final byte[] aQP()
  {
    byte[] arrayOfByte = new byte[this.hzk];
    System.arraycopy(this.hxw, 6 + this.hyA, arrayOfByte, 0, this.hzk);
    return arrayOfByte;
  }

  public final byte[] aQQ()
  {
    byte[] arrayOfByte = new byte[this.hzl];
    System.arraycopy(this.hxw, 8 + this.hyA + this.hzk, arrayOfByte, 0, this.hzl);
    return arrayOfByte;
  }

  public final byte[] aQR()
  {
    byte[] arrayOfByte = new byte[this.hzm];
    System.arraycopy(this.hxw, 12 + this.hyA + this.hzk + this.hzl, arrayOfByte, 0, this.hzm);
    return arrayOfByte;
  }

  public final Boolean aQy()
  {
    if (this.hyB < 12)
      return Boolean.valueOf(false);
    int i = f.w(this.hxw, 4 + this.hyA);
    if (this.hyB < i + 12)
      return Boolean.valueOf(false);
    this.hzk = i;
    int j = f.w(this.hxw, 6 + this.hyA + this.hzk);
    if (this.hyB < j + (12 + this.hzk))
      return Boolean.valueOf(false);
    this.hzl = j;
    int k = f.w(this.hxw, 10 + this.hyA + this.hzk + this.hzl);
    if (this.hyB < k + (12 + this.hzk + this.hzl))
      return Boolean.valueOf(false);
    this.hzm = k;
    return Boolean.valueOf(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.al
 * JD-Core Version:    0.6.2
 */