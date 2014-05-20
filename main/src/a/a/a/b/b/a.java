package a.a.a.b.b;

import com.tencent.mm.am.b;
import java.io.UnsupportedEncodingException;

public final class a
{
  private final byte[] buffer;
  private final int clX;
  private int position;

  private a(byte[] paramArrayOfByte, int paramInt)
  {
    this.buffer = paramArrayOfByte;
    this.position = 0;
    this.clX = (paramInt + 0);
  }

  private void cn(long paramLong)
  {
    while (true)
    {
      if ((0xFFFFFF80 & paramLong) == 0L)
      {
        oS((int)paramLong);
        return;
      }
      oS(0x80 | 0x7F & (int)paramLong);
      paramLong >>>= 7;
    }
  }

  public static a cx(byte[] paramArrayOfByte)
  {
    return new a(paramArrayOfByte, paramArrayOfByte.length);
  }

  private void cy(byte[] paramArrayOfByte)
  {
    if (paramArrayOfByte == null);
    int k;
    int m;
    do
    {
      int i;
      do
      {
        return;
        i = paramArrayOfByte.length;
      }
      while (paramArrayOfByte == null);
      if (this.clX - this.position >= i)
      {
        System.arraycopy(paramArrayOfByte, 0, this.buffer, this.position, i);
        this.position = (i + this.position);
        return;
      }
      int j = this.clX - this.position;
      System.arraycopy(paramArrayOfByte, 0, this.buffer, this.position, j);
      k = j + 0;
      m = i - j;
      this.position = this.clX;
    }
    while (m > this.clX);
    System.arraycopy(paramArrayOfByte, k, this.buffer, 0, m);
    this.position = m;
  }

  private void oS(int paramInt)
  {
    int i = (byte)paramInt;
    byte[] arrayOfByte = this.buffer;
    int j = this.position;
    this.position = (j + 1);
    arrayOfByte[j] = i;
  }

  public static int oT(int paramInt)
  {
    return oV(a.a.a.b.a.bt(paramInt, 0));
  }

  public static int oV(int paramInt)
  {
    if ((paramInt & 0xFFFFFF80) == 0)
      return 1;
    if ((paramInt & 0xFFFFC000) == 0)
      return 2;
    if ((0xFFE00000 & paramInt) == 0)
      return 3;
    if ((0xF0000000 & paramInt) == 0)
      return 4;
    return 5;
  }

  public static int z(int paramInt, String paramString)
  {
    if (paramString == null)
      return 0;
    try
    {
      byte[] arrayOfByte = paramString.getBytes("UTF-8");
      int i = oT(paramInt) + oV(arrayOfByte.length);
      int j = arrayOfByte.length;
      return j + i;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    throw new IllegalStateException("UTF-8 not supported.");
  }

  public final void A(int paramInt, String paramString)
  {
    if (paramString == null)
      return;
    bw(paramInt, 2);
    byte[] arrayOfByte = paramString.getBytes("UTF-8");
    oU(arrayOfByte.length);
    cy(arrayOfByte);
  }

  public final void a(int paramInt, double paramDouble)
  {
    bw(paramInt, 1);
    long l = Double.doubleToLongBits(paramDouble);
    oS(0xFF & (int)l);
    oS(0xFF & (int)(l >> 8));
    oS(0xFF & (int)(l >> 16));
    oS(0xFF & (int)(l >> 24));
    oS(0xFF & (int)(l >> 32));
    oS(0xFF & (int)(l >> 40));
    oS(0xFF & (int)(l >> 48));
    oS(0xFF & (int)(l >> 56));
  }

  public final void b(int paramInt, b paramb)
  {
    if (paramb == null)
      return;
    bw(paramInt, 2);
    byte[] arrayOfByte = paramb.toByteArray();
    oU(arrayOfByte.length);
    cy(arrayOfByte);
  }

  public final void bu(int paramInt1, int paramInt2)
  {
    bw(paramInt1, 0);
    if (paramInt2 >= 0)
    {
      oU(paramInt2);
      return;
    }
    cn(paramInt2);
  }

  public final void bv(int paramInt1, int paramInt2)
  {
    bw(paramInt1, 2);
    oU(paramInt2);
  }

  public final void bw(int paramInt1, int paramInt2)
  {
    oU(a.a.a.b.a.bt(paramInt1, paramInt2));
  }

  public final void c(int paramInt, float paramFloat)
  {
    bw(paramInt, 5);
    int i = Float.floatToIntBits(paramFloat);
    oS(i & 0xFF);
    oS(0xFF & i >> 8);
    oS(0xFF & i >> 16);
    oS(0xFF & i >> 24);
  }

  public final void j(int paramInt, long paramLong)
  {
    bw(paramInt, 0);
    cn(paramLong);
  }

  public final void oR(int paramInt)
  {
    oU(paramInt);
  }

  public final void oU(int paramInt)
  {
    while (true)
    {
      if ((paramInt & 0xFFFFFF80) == 0)
      {
        oS(paramInt);
        return;
      }
      oS(0x80 | paramInt & 0x7F);
      paramInt >>>= 7;
    }
  }

  public final void s(int paramInt, boolean paramBoolean)
  {
    bw(paramInt, 0);
    int i = 0;
    if (paramBoolean)
      i = 1;
    oS(i);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     a.a.a.b.b.a
 * JD-Core Version:    0.6.2
 */