package oicq.wlogin_sdk.b;

public final class k extends a
{
  int hyU = 0;

  public k()
  {
    this.hxC = 265;
  }

  public final byte[] cF(byte[] paramArrayOfByte)
  {
    this.hyU = paramArrayOfByte.length;
    byte[] arrayOfByte = new byte[this.hyU];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
    oW(this.hxC);
    r(arrayOfByte, this.hyU);
    aQx();
    return aQs();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.k
 * JD-Core Version:    0.6.2
 */