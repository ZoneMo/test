package oicq.wlogin_sdk.a;

import oicq.wlogin_sdk.b.f;

public final class j extends g
{
  public j(k paramk)
  {
    this.hxC = 2064;
    this.hxD = 3;
    this.hxF = paramk;
  }

  public final int e(byte[] paramArrayOfByte, int paramInt1, int paramInt2)
  {
    f localf = new f();
    oicq.wlogin_sdk.b.g localg = new oicq.wlogin_sdk.b.g();
    int i = p(paramArrayOfByte, paramInt1 + 2);
    aQt();
    int j = paramInt1 + 5;
    int k;
    switch (i)
    {
    case 3:
    case 4:
    default:
      d(paramArrayOfByte, j, -1 + (this.hxr - j));
      return i;
    case 2:
      k = localf.g(paramArrayOfByte, j, this.hxr - j);
      if (k >= 0)
      {
        this.hxF.hxK = localf;
        k = localg.g(paramArrayOfByte, j, this.hxr - j);
        if (k >= 0)
        {
          this.hxF.hxL = localg;
          return i;
        }
      }
      break;
    case 5:
      d(paramArrayOfByte, j, -1 + (this.hxr - j));
      return i;
    }
    return k;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.a.j
 * JD-Core Version:    0.6.2
 */