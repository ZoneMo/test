package oicq.wlogin_sdk.a;

import oicq.wlogin_sdk.b.ap;
import oicq.wlogin_sdk.b.f;

public final class i extends g
{
  public i(k paramk)
  {
    this.hxC = 2064;
    this.hxD = 2;
    this.hxF = paramk;
  }

  public final byte[] cC(byte[] paramArrayOfByte)
  {
    int i = this.hxF.hxP;
    byte[] arrayOfByte1 = this.hxF.hxK.aQw();
    byte[] arrayOfByte2 = this.hxF.hxL.aQA();
    f localf = new f();
    ap localap = new ap();
    byte[] arrayOfByte3 = localf.cD(arrayOfByte1);
    byte[] arrayOfByte4 = localap.f(paramArrayOfByte, arrayOfByte2);
    byte[] arrayOfByte5 = new byte[arrayOfByte3.length + arrayOfByte4.length];
    int j;
    if (arrayOfByte1.length > 0)
    {
      System.arraycopy(arrayOfByte3, 0, arrayOfByte5, 0, arrayOfByte3.length);
      j = 0 + arrayOfByte3.length;
    }
    for (int k = 1; ; k = 0)
    {
      System.arraycopy(arrayOfByte4, 0, arrayOfByte5, j, arrayOfByte4.length);
      int m = k + 1;
      byte[] arrayOfByte6 = c(arrayOfByte5, this.hxD, m);
      int n = this.hxx;
      int i1 = this.hxC;
      a(n, i1, this.hxF.hwZ, this.hxz, this.hxA, i, this.hxB, arrayOfByte6);
      return aQs();
      j = 0;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.a.i
 * JD-Core Version:    0.6.2
 */