package android.support.v4.c;

import java.io.Writer;

public final class b extends Writer
{
  private final String ax;
  private StringBuilder cI = new StringBuilder(128);

  public b(String paramString)
  {
    this.ax = paramString;
  }

  private void aa()
  {
    if (this.cI.length() > 0)
    {
      this.cI.toString();
      this.cI.delete(0, this.cI.length());
    }
  }

  public final void close()
  {
    aa();
  }

  public final void flush()
  {
    aa();
  }

  public final void write(char[] paramArrayOfChar, int paramInt1, int paramInt2)
  {
    int i = 0;
    if (i < paramInt2)
    {
      char c = paramArrayOfChar[(paramInt1 + i)];
      if (c == '\n')
        aa();
      while (true)
      {
        i++;
        break;
        this.cI.append(c);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.c.b
 * JD-Core Version:    0.6.2
 */