package com.tencent.mm.b;

public final class b
{
  private static final long bKk = "Micromsg".hashCode();
  int bKl = 0;

  public b(int paramInt)
  {
    this.bKl = paramInt;
  }

  public static b k(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte.length == 8)
    {
      long l = 0L;
      for (int i = 0; ; i++)
      {
        if (i >= paramArrayOfByte.length)
        {
          if (l >> 32 != bKk)
            break;
          return new b((int)l);
        }
        l |= (0xFF & paramArrayOfByte[i]) << i * 8;
      }
    }
    return null;
  }

  public final byte[] getBytes()
  {
    long l = bKk << 32 | this.bKl;
    byte[] arrayOfByte = new byte[8];
    for (int i = 0; ; i++)
    {
      if (i >= 8)
        return arrayOfByte;
      arrayOfByte[i] = ((byte)(int)(0xFF & l >> i * 8));
    }
  }

  public final int nf()
  {
    return 8 + this.bKl;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.b.b
 * JD-Core Version:    0.6.2
 */