package a.a.a.b.a;

import java.io.InputStream;
import java.util.LinkedList;

public final class a
{
  private byte[] buffer;
  private int eKG;
  private int hwt = 0;
  private int hwu;
  private InputStream hwv;
  private int hww = 0;
  private int hwx = 0;
  private int hwy = 2147483647;
  private int hwz = 67108864;

  private a(byte[] paramArrayOfByte, int paramInt)
  {
    this.buffer = paramArrayOfByte;
    this.eKG = (paramInt + 0);
    this.hwu = 0;
    this.hwv = null;
  }

  private int aQg()
  {
    int i = aQi();
    if (i >= 0);
    int i4;
    do
    {
      return i;
      int j = i & 0x7F;
      int k = aQi();
      if (k >= 0)
        return j | k << 7;
      int m = j | (k & 0x7F) << 7;
      int n = aQi();
      if (n >= 0)
        return m | n << 14;
      int i1 = m | (n & 0x7F) << 14;
      int i2 = aQi();
      if (i2 >= 0)
        return i1 | i2 << 21;
      int i3 = i1 | (i2 & 0x7F) << 21;
      i4 = aQi();
      i = i3 | i4 << 28;
    }
    while (i4 >= 0);
    for (int i5 = 0; ; i5++)
    {
      if (i5 >= 5)
        throw b.aQl();
      if (aQi() >= 0)
        break;
    }
  }

  private byte aQi()
  {
    if (this.hwu == this.eKG)
      eD(true);
    byte[] arrayOfByte = this.buffer;
    int i = this.hwu;
    this.hwu = (i + 1);
    return arrayOfByte[i];
  }

  public static a cw(byte[] paramArrayOfByte)
  {
    return new a(paramArrayOfByte, paramArrayOfByte.length);
  }

  private boolean eD(boolean paramBoolean)
  {
    if (this.hwu < this.eKG)
      throw new IllegalStateException("refillBuffer() called when buffer wasn't empty.");
    if (this.hwx + this.eKG == this.hwy)
    {
      if (paramBoolean)
        throw b.aQj();
      return false;
    }
    this.hwx += this.eKG;
    this.hwu = 0;
    if (this.hwv == null);
    for (int i = -1; ; i = this.hwv.read(this.buffer))
    {
      this.eKG = i;
      if (this.eKG != -1)
        break label117;
      this.eKG = 0;
      if (!paramBoolean)
        break;
      throw b.aQj();
    }
    return false;
    label117: this.eKG += this.hwt;
    int j = this.hwx + this.eKG;
    if (j > this.hwy)
    {
      this.hwt = (j - this.hwy);
      this.eKG -= this.hwt;
    }
    while (true)
    {
      int k = this.hwx + this.eKG + this.hwt;
      if ((k <= this.hwz) && (k >= 0))
        break;
      throw b.aQn();
      this.hwt = 0;
    }
    return true;
  }

  private int[] oO(int paramInt)
  {
    int i = this.buffer[paramInt];
    int j = paramInt + 1;
    if (i >= 0)
      return new int[] { i, j };
    int k = i & 0x7F;
    int m = this.buffer[j];
    int i7;
    int i6;
    if (m >= 0)
    {
      i7 = j + 1;
      i6 = k | m << 7;
    }
    int i5;
    do
    {
      int i2;
      int i3;
      while (true)
      {
        return new int[] { i6, i7 };
        int n = k | (m & 0x7F) << 7;
        int i1 = this.buffer[j];
        if (i1 >= 0)
        {
          i7 = j + 1;
          i6 = n | i1 << 14;
        }
        else
        {
          i2 = n | (i1 & 0x7F) << 14;
          i3 = this.buffer[j];
          if (i3 < 0)
            break;
          i7 = j + 1;
          i6 = i2 | i3 << 21;
        }
      }
      int i4 = i2 | (i3 & 0x7F) << 21;
      i5 = this.buffer[j];
      i6 = i4 | i5 << 28;
      i7 = j + 1;
    }
    while (i5 >= 0);
    for (int i8 = 0; ; i8++)
    {
      if (i8 >= 5)
        throw b.aQl();
      if (this.buffer[i7] >= 0)
        return new int[] { i5, i7 + 1 };
    }
  }

  private byte[] oP(int paramInt)
  {
    if (paramInt < 0)
      throw b.aQk();
    if (paramInt + (this.hwx + this.hwu) > this.hwy)
    {
      oQ(this.hwy - this.hwx - this.hwu);
      throw b.aQj();
    }
    if (paramInt <= this.eKG - this.hwu)
    {
      byte[] arrayOfByte5 = new byte[paramInt];
      System.arraycopy(this.buffer, this.hwu, arrayOfByte5, 0, paramInt);
      this.hwu = (paramInt + this.hwu);
      return arrayOfByte5;
    }
    if (paramInt < 2048)
    {
      byte[] arrayOfByte4 = new byte[paramInt];
      int i6 = this.eKG - this.hwu;
      System.arraycopy(this.buffer, this.hwu, arrayOfByte4, 0, i6);
      this.hwu = this.eKG;
      eD(true);
      while (true)
      {
        if (paramInt - i6 <= this.eKG)
        {
          System.arraycopy(this.buffer, 0, arrayOfByte4, i6, paramInt - i6);
          this.hwu = (paramInt - i6);
          return arrayOfByte4;
        }
        System.arraycopy(this.buffer, 0, arrayOfByte4, i6, this.eKG);
        i6 += this.eKG;
        this.hwu = this.eKG;
        eD(true);
      }
    }
    int i = this.hwu;
    int j = this.eKG;
    this.hwx += this.eKG;
    this.hwu = 0;
    this.eKG = 0;
    int k = paramInt - (j - i);
    LinkedList localLinkedList = new LinkedList();
    int m = k;
    byte[] arrayOfByte2;
    int i4;
    int i5;
    if (m <= 0)
    {
      arrayOfByte2 = new byte[paramInt];
      int i3 = j - i;
      System.arraycopy(this.buffer, i, arrayOfByte2, 0, i3);
      i4 = 0;
      i5 = i3;
    }
    while (true)
    {
      if (i4 >= localLinkedList.size())
      {
        return arrayOfByte2;
        byte[] arrayOfByte1 = new byte[Math.min(m, 2048)];
        int n = 0;
        while (true)
        {
          if (n >= arrayOfByte1.length)
          {
            int i2 = m - arrayOfByte1.length;
            localLinkedList.add(arrayOfByte1);
            m = i2;
            break;
          }
          if (this.hwv == null);
          for (int i1 = -1; i1 == -1; i1 = this.hwv.read(arrayOfByte1, n, arrayOfByte1.length - n))
            throw b.aQj();
          this.hwx = (i1 + this.hwx);
          n += i1;
        }
      }
      byte[] arrayOfByte3 = (byte[])localLinkedList.get(i4);
      System.arraycopy(arrayOfByte3, 0, arrayOfByte2, i5, arrayOfByte3.length);
      i5 += arrayOfByte3.length;
      i4++;
    }
  }

  private void oQ(int paramInt)
  {
    if (paramInt < 0)
      throw b.aQk();
    if (paramInt + (this.hwx + this.hwu) > this.hwy)
    {
      oQ(this.hwy - this.hwx - this.hwu);
      throw b.aQj();
    }
    if (paramInt < this.eKG - this.hwu)
      this.hwu = (paramInt + this.hwu);
    while (true)
    {
      return;
      int i = this.eKG - this.hwu;
      this.hwx = (i + this.hwx);
      this.hwu = 0;
      this.eKG = 0;
      int j = i;
      while (j < paramInt)
      {
        if (this.hwv == null);
        for (int k = -1; k <= 0; k = (int)this.hwv.skip(paramInt - j))
          throw b.aQj();
        j += k;
        this.hwx = (k + this.hwx);
      }
    }
  }

  public final int aQb()
  {
    if ((this.hwu == this.eKG) && (!eD(false)))
    {
      this.hww = 0;
      return 0;
    }
    this.hww = aQg();
    if (this.hww == 0)
      throw b.aQm();
    return this.hww;
  }

  public final int aQc()
  {
    return aQg();
  }

  public final LinkedList aQd()
  {
    LinkedList localLinkedList = new LinkedList();
    while (true)
    {
      if (this.hwu >= this.eKG)
        return localLinkedList;
      localLinkedList.add(Integer.valueOf(aQg()));
    }
  }

  public final boolean aQe()
  {
    return aQg() != 0;
  }

  public final com.tencent.mm.am.b aQf()
  {
    int i = aQg();
    if ((i < this.eKG - this.hwu) && (i > 0))
    {
      com.tencent.mm.am.b localb = com.tencent.mm.am.b.b(this.buffer, this.hwu, i);
      this.hwu = (i + this.hwu);
      return localb;
    }
    return com.tencent.mm.am.b.au(oP(i));
  }

  public final long aQh()
  {
    int i = 0;
    long l = 0L;
    while (true)
    {
      if (i >= 64)
        throw b.aQl();
      int j = aQi();
      l |= (j & 0x7F) << i;
      if ((j & 0x80) == 0)
        return l;
      i += 7;
    }
  }

  public final LinkedList oL(int paramInt)
  {
    LinkedList localLinkedList = new LinkedList();
    int i = aQg();
    byte[] arrayOfByte1 = new byte[i];
    System.arraycopy(this.buffer, this.hwu, arrayOfByte1, 0, i);
    localLinkedList.add(arrayOfByte1);
    this.hwu = (i + this.hwu);
    int j = this.hwu;
    if (this.hwu == this.eKG)
      return localLinkedList;
    int[] arrayOfInt = oO(j);
    for (int k = arrayOfInt[0]; ; k = arrayOfInt[0])
    {
      if (a.a.a.b.a.oN(k) != paramInt);
      do
      {
        return localLinkedList;
        this.hwu = arrayOfInt[1];
        int m = aQg();
        byte[] arrayOfByte2 = new byte[m];
        System.arraycopy(this.buffer, this.hwu, arrayOfByte2, 0, m);
        localLinkedList.add(arrayOfByte2);
        this.hwu = (m + this.hwu);
      }
      while (this.hwu == this.eKG);
      arrayOfInt = oO(this.hwu);
    }
  }

  public final double readDouble()
  {
    int i = aQi();
    int j = aQi();
    int k = aQi();
    int m = aQi();
    int n = aQi();
    int i1 = aQi();
    int i2 = aQi();
    int i3 = aQi();
    return Double.longBitsToDouble(0xFF & i | (0xFF & j) << 8 | (0xFF & k) << 16 | (0xFF & m) << 24 | (0xFF & n) << 32 | (0xFF & i1) << 40 | (0xFF & i2) << 48 | (0xFF & i3) << 56);
  }

  public final float readFloat()
  {
    int i = aQi();
    int j = aQi();
    int k = aQi();
    int m = aQi();
    return Float.intBitsToFloat(i & 0xFF | (j & 0xFF) << 8 | (k & 0xFF) << 16 | (m & 0xFF) << 24);
  }

  public final String readString()
  {
    int i = aQg();
    if ((i < this.eKG - this.hwu) && (i > 0))
    {
      String str = new String(this.buffer, this.hwu, i, "UTF-8");
      this.hwu = (i + this.hwu);
      return str;
    }
    return new String(oP(i), "UTF-8");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     a.a.a.b.a.a
 * JD-Core Version:    0.6.2
 */