package oicq.wlogin_sdk.b;

public final class j extends a
{
  int hyT = 0;

  public j()
  {
    this.hxC = 264;
  }

  public final byte[] cE(byte[] paramArrayOfByte)
  {
    this.hyT = paramArrayOfByte.length;
    byte[] arrayOfByte = new byte[this.hyT];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
    oW(this.hxC);
    r(arrayOfByte, this.hyT);
    aQx();
    return aQs();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.j
 * JD-Core Version:    0.6.2
 */