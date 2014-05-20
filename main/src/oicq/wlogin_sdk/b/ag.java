package oicq.wlogin_sdk.b;

import oicq.wlogin_sdk.c.f;

public final class ag extends a
{
  public int hze = 0;

  public ag()
  {
    this.hxC = 312;
  }

  public final int aQO()
  {
    for (int i = 0; ; i++)
    {
      if (i >= this.hze)
        return 0;
      if (f.w(this.hxw, 4 + this.hyA + i * 10) == 266)
        return f.x(this.hxw, 2 + (4 + this.hyA + i * 10));
    }
  }

  public final Boolean aQy()
  {
    if (this.hyB < 4)
      return Boolean.valueOf(false);
    this.hze = f.x(this.hxw, this.hyA);
    if (this.hyB < 4 + 10 * this.hze)
      return Boolean.valueOf(false);
    return Boolean.valueOf(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.ag
 * JD-Core Version:    0.6.2
 */