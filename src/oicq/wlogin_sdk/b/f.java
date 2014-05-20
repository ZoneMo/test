package oicq.wlogin_sdk.b;

public final class f extends a
{
  int hyK = 0;

  public f()
  {
    this.hxC = 260;
  }

  public final byte[] cD(byte[] paramArrayOfByte)
  {
    this.hyK = paramArrayOfByte.length;
    byte[] arrayOfByte = new byte[this.hyK];
    System.arraycopy(paramArrayOfByte, 0, arrayOfByte, 0, paramArrayOfByte.length);
    oW(this.hxC);
    r(arrayOfByte, this.hyK);
    aQx();
    return aQs();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     oicq.wlogin_sdk.b.f
 * JD-Core Version:    0.6.2
 */