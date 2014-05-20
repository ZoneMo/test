package c;

public abstract class a
{
  private final int height;
  private final int width;

  protected a(int paramInt1, int paramInt2)
  {
    this.width = paramInt1;
    this.height = paramInt2;
  }

  public abstract byte[] aaJ();

  public abstract byte[] c(int paramInt, byte[] paramArrayOfByte);

  public final int getHeight()
  {
    return this.height;
  }

  public final int getWidth()
  {
    return this.width;
  }

  public String toString()
  {
    byte[] arrayOfByte1 = new byte[this.width];
    StringBuilder localStringBuilder = new StringBuilder(this.height * (1 + this.width));
    byte[] arrayOfByte2 = arrayOfByte1;
    int j;
    for (int i = 0; ; i++)
    {
      if (i >= this.height)
        return localStringBuilder.toString();
      arrayOfByte2 = c(i, arrayOfByte2);
      j = 0;
      if (j < this.width)
        break;
      localStringBuilder.append('\n');
    }
    int k = 0xFF & arrayOfByte2[j];
    char c;
    if (k < 64)
      c = '#';
    while (true)
    {
      localStringBuilder.append(c);
      j++;
      break;
      if (k < 128)
        c = '+';
      else if (k < 192)
        c = '.';
      else
        c = ' ';
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     c.a
 * JD-Core Version:    0.6.2
 */