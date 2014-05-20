package com.tencent.mm.sdk.platformtools;

import java.nio.ByteBuffer;

public final class y
{
  private ByteBuffer Aq;
  private boolean gdq;

  private int lF(int paramInt)
  {
    if (this.Aq.limit() - this.Aq.position() > paramInt)
      return 0;
    ByteBuffer localByteBuffer = ByteBuffer.allocate(4096 + this.Aq.limit());
    localByteBuffer.put(this.Aq.array(), 0, this.Aq.position());
    this.Aq = localByteBuffer;
    return 0;
  }

  public final boolean azf()
  {
    return this.Aq.limit() - this.Aq.position() <= 1;
  }

  public final int azg()
  {
    this.Aq = ByteBuffer.allocate(4096);
    this.Aq.put((byte)123);
    this.gdq = true;
    return 0;
  }

  public final byte[] azh()
  {
    if (!this.gdq)
      throw new Exception("Buffer For Parse");
    lF(1);
    this.Aq.put((byte)125);
    byte[] arrayOfByte = new byte[this.Aq.position()];
    System.arraycopy(this.Aq.array(), 0, arrayOfByte, 0, arrayOfByte.length);
    return arrayOfByte;
  }

  public final int bN(long paramLong)
  {
    if (!this.gdq)
      throw new Exception("Buffer For Parse");
    lF(8);
    this.Aq.putLong(paramLong);
    return 0;
  }

  public final int cl(byte[] paramArrayOfByte)
  {
    int i;
    if ((paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
      i = -1;
    while (i != 0)
    {
      this.Aq = null;
      return -1;
      if (paramArrayOfByte[0] != 123)
        i = -2;
      else if (paramArrayOfByte[(-1 + paramArrayOfByte.length)] != 125)
        i = -3;
      else
        i = 0;
    }
    this.Aq = ByteBuffer.wrap(paramArrayOfByte);
    this.Aq.position(1);
    this.gdq = false;
    return 0;
  }

  public final int getInt()
  {
    if (this.gdq)
      throw new Exception("Buffer For Build");
    return this.Aq.getInt();
  }

  public final long getLong()
  {
    if (this.gdq)
      throw new Exception("Buffer For Build");
    return this.Aq.getLong();
  }

  public final String getString()
  {
    if (this.gdq)
      throw new Exception("Buffer For Build");
    int i = this.Aq.getShort();
    if (i > 2048)
    {
      this.Aq = null;
      throw new Exception("Buffer String Length Error");
    }
    if (i == 0)
      return "";
    byte[] arrayOfByte = new byte[i];
    this.Aq.get(arrayOfByte, 0, i);
    return new String(arrayOfByte, "UTF-8");
  }

  public final int lG(int paramInt)
  {
    if (!this.gdq)
      throw new Exception("Buffer For Parse");
    lF(4);
    this.Aq.putInt(paramInt);
    return 0;
  }

  public final int sz(String paramString)
  {
    if (!this.gdq)
      throw new Exception("Buffer For Parse");
    byte[] arrayOfByte = null;
    if (paramString != null)
      arrayOfByte = paramString.getBytes();
    if (arrayOfByte == null)
      arrayOfByte = new byte[0];
    if (arrayOfByte.length > 2048)
      throw new Exception("Buffer String Length Error");
    lF(2 + arrayOfByte.length);
    this.Aq.putShort((short)arrayOfByte.length);
    if (arrayOfByte.length > 0)
      this.Aq.put(arrayOfByte);
    return 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.sdk.platformtools.y
 * JD-Core Version:    0.6.2
 */