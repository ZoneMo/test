package com.tencent.mm.a;

public final class i
{
  public static int b(byte[] paramArrayOfByte, int paramInt)
  {
    return (0xFF & paramArrayOfByte[paramInt]) << 24 | (0xFF & paramArrayOfByte[(paramInt + 1)]) << 16 | (0xFF & paramArrayOfByte[(paramInt + 2)]) << 8 | (0xFF & paramArrayOfByte[(paramInt + 3)]) << 0;
  }

  public static byte[] bm(int paramInt)
  {
    int i = 0;
    byte[] arrayOfByte1 = new byte[4];
    for (int j = 0; j < 4; j++)
      arrayOfByte1[j] = ((byte)(0xFF & paramInt >> j * 8));
    int k = arrayOfByte1.length;
    byte[] arrayOfByte2 = new byte[k];
    while (i < k)
    {
      arrayOfByte2[i] = arrayOfByte1[(k - 1 - i)];
      i++;
    }
    return arrayOfByte2;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.a.i
 * JD-Core Version:    0.6.2
 */