package com.tencent.mm.pluginsdk.ui.tools.a;

import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.Map;

public final class h
{
  private static final int[] fwb = { -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 36, -1, -1, -1, 37, 38, -1, -1, -1, -1, 39, 40, -1, 41, 42, 43, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 44, -1, -1, -1, -1, -1, -1, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, -1, -1, -1, -1, -1 };

  private static int a(b paramb, j paramj, t paramt, e parame)
  {
    int i = 2147483647;
    int j = -1;
    int k = 0;
    int i17;
    int i16;
    if (k < 8)
    {
      n.a(paramb, paramj, paramt, k, parame);
      int m = m.a(parame);
      int n = 0;
      byte[][] arrayOfByte1 = parame.auZ();
      int i1 = parame.getWidth();
      int i2 = parame.getHeight();
      int i3 = 0;
      while (i3 < i2 - 1)
      {
        int i22 = n;
        for (int i23 = 0; i23 < i1 - 1; i23++)
        {
          int i24 = arrayOfByte1[i3][i23];
          if ((i24 == arrayOfByte1[i3][(i23 + 1)]) && (i24 == arrayOfByte1[(i3 + 1)][i23]) && (i24 == arrayOfByte1[(i3 + 1)][(i23 + 1)]))
            i22++;
        }
        i3++;
        n = i22;
      }
      int i4 = m + n * 3;
      int i5 = 0;
      byte[][] arrayOfByte2 = parame.auZ();
      int i6 = parame.getWidth();
      int i7 = parame.getHeight();
      int i8 = 0;
      while (i8 < i7)
      {
        int i20 = i5;
        for (int i21 = 0; i21 < i6; i21++)
        {
          if ((i21 + 6 < i6) && (arrayOfByte2[i8][i21] == 1) && (arrayOfByte2[i8][(i21 + 1)] == 0) && (arrayOfByte2[i8][(i21 + 2)] == 1) && (arrayOfByte2[i8][(i21 + 3)] == 1) && (arrayOfByte2[i8][(i21 + 4)] == 1) && (arrayOfByte2[i8][(i21 + 5)] == 0) && (arrayOfByte2[i8][(i21 + 6)] == 1) && (((i21 + 10 < i6) && (arrayOfByte2[i8][(i21 + 7)] == 0) && (arrayOfByte2[i8][(i21 + 8)] == 0) && (arrayOfByte2[i8][(i21 + 9)] == 0) && (arrayOfByte2[i8][(i21 + 10)] == 0)) || ((i21 - 4 >= 0) && (arrayOfByte2[i8][(i21 - 1)] == 0) && (arrayOfByte2[i8][(i21 - 2)] == 0) && (arrayOfByte2[i8][(i21 - 3)] == 0) && (arrayOfByte2[i8][(i21 - 4)] == 0))))
            i20 += 40;
          if ((i8 + 6 < i7) && (arrayOfByte2[i8][i21] == 1) && (arrayOfByte2[(i8 + 1)][i21] == 0) && (arrayOfByte2[(i8 + 2)][i21] == 1) && (arrayOfByte2[(i8 + 3)][i21] == 1) && (arrayOfByte2[(i8 + 4)][i21] == 1) && (arrayOfByte2[(i8 + 5)][i21] == 0) && (arrayOfByte2[(i8 + 6)][i21] == 1) && (((i8 + 10 < i7) && (arrayOfByte2[(i8 + 7)][i21] == 0) && (arrayOfByte2[(i8 + 8)][i21] == 0) && (arrayOfByte2[(i8 + 9)][i21] == 0) && (arrayOfByte2[(i8 + 10)][i21] == 0)) || ((i8 - 4 >= 0) && (arrayOfByte2[(i8 - 1)][i21] == 0) && (arrayOfByte2[(i8 - 2)][i21] == 0) && (arrayOfByte2[(i8 - 3)][i21] == 0) && (arrayOfByte2[(i8 - 4)][i21] == 0))))
            i20 += 40;
        }
        i8++;
        i5 = i20;
      }
      int i9 = i4 + i5;
      int i10 = 0;
      byte[][] arrayOfByte3 = parame.auZ();
      int i11 = parame.getWidth();
      int i12 = parame.getHeight();
      int i13 = 0;
      while (i13 < i12)
      {
        byte[] arrayOfByte = arrayOfByte3[i13];
        int i18 = i10;
        for (int i19 = 0; i19 < i11; i19++)
          if (arrayOfByte[i19] == 1)
            i18++;
        i13++;
        i10 = i18;
      }
      int i14 = parame.getHeight() * parame.getWidth();
      int i15 = i9 + 10 * (int)(20.0D * Math.abs(i10 / i14 - 0.5D));
      if (i15 >= i)
        break label850;
      i17 = i15;
      i16 = k;
    }
    while (true)
    {
      k++;
      i = i17;
      j = i16;
      break;
      return j;
      label850: i16 = j;
      i17 = i;
    }
  }

  private static b a(b paramb, int paramInt1, int paramInt2, int paramInt3)
  {
    if (paramb.auW() != paramInt2)
      throw new w("Number of bits and data bytes does not match");
    ArrayList localArrayList = new ArrayList(paramInt3);
    int i = 0;
    int j = 0;
    int k = 0;
    int m = 0;
    if (i < paramInt3)
    {
      int[] arrayOfInt1 = new int[1];
      int[] arrayOfInt2 = new int[1];
      if (i >= paramInt3)
        throw new w("Block ID too large");
      int i2 = paramInt1 % paramInt3;
      int i3 = paramInt3 - i2;
      int i4 = paramInt1 / paramInt3;
      int i5 = i4 + 1;
      int i6 = paramInt2 / paramInt3;
      int i7 = i6 + 1;
      int i8 = i4 - i6;
      int i9 = i5 - i7;
      if (i8 != i9)
        throw new w("EC bytes mismatch");
      if (paramInt3 != i3 + i2)
        throw new w("RS blocks mismatch");
      if (paramInt1 != i3 * (i6 + i8) + i2 * (i7 + i9))
        throw new w("Total bytes mismatch");
      if (i < i3)
      {
        arrayOfInt1[0] = i6;
        arrayOfInt2[0] = i8;
      }
      while (true)
      {
        int i10 = arrayOfInt1[0];
        byte[] arrayOfByte3 = new byte[i10];
        paramb.b(j * 8, arrayOfByte3, i10);
        byte[] arrayOfByte4 = k(arrayOfByte3, arrayOfInt2[0]);
        localArrayList.add(new d(arrayOfByte3, arrayOfByte4));
        k = Math.max(k, i10);
        int i11 = Math.max(m, arrayOfByte4.length);
        int i12 = j + arrayOfInt1[0];
        i++;
        j = i12;
        m = i11;
        break;
        arrayOfInt1[0] = i7;
        arrayOfInt2[0] = i9;
      }
    }
    if (paramInt2 != j)
      throw new w("Data bytes does not match offset");
    b localb = new b();
    for (int n = 0; n < k; n++)
    {
      Iterator localIterator2 = localArrayList.iterator();
      while (localIterator2.hasNext())
      {
        byte[] arrayOfByte2 = ((d)localIterator2.next()).auX();
        if (n < arrayOfByte2.length)
          localb.aP(arrayOfByte2[n], 8);
      }
    }
    for (int i1 = 0; i1 < m; i1++)
    {
      Iterator localIterator1 = localArrayList.iterator();
      while (localIterator1.hasNext())
      {
        byte[] arrayOfByte1 = ((d)localIterator1.next()).auY();
        if (i1 < arrayOfByte1.length)
          localb.aP(arrayOfByte1[i1], 8);
      }
    }
    if (paramInt1 != localb.auW())
      throw new w("Interleaving error: " + paramInt1 + " and " + localb.auW() + " differ.");
    return localb;
  }

  public static p a(String paramString, j paramj, Map paramMap)
  {
    int i = 0;
    String str;
    label9: o localo;
    if (paramMap == null)
    {
      str = null;
      if (str == null)
        str = "ISO-8859-1";
      if (!"Shift_JIS".equals(str))
        break label214;
      if (!rm(paramString))
        break label206;
      localo = o.fwK;
    }
    b localb1;
    b localb2;
    while (true)
    {
      localb1 = new b();
      if ((localo == o.fwI) && (!"ISO-8859-1".equals(str)))
      {
        f localf = f.rl(str);
        if (localf != null)
        {
          localb1.aP(o.fwJ.avb(), 4);
          localb1.aP(localf.getValue(), 8);
        }
      }
      localb1.aP(localo.avb(), 4);
      localb2 = new b();
      switch (i.fwc[localo.ordinal()])
      {
      default:
        throw new w("Invalid mode: " + localo);
        str = (String)paramMap.get(g.fvS);
        break label9;
        label206: localo = o.fwI;
        continue;
        label214: int j = 0;
        int k = 0;
        int m = 0;
        if (m < paramString.length())
        {
          int i16 = paramString.charAt(m);
          if ((i16 >= 48) && (i16 <= 57))
            k = 1;
          while (true)
          {
            m++;
            break;
            if (kU(i16) == -1)
              break label278;
            j = 1;
          }
          label278: localo = o.fwI;
        }
        else if (j != 0)
        {
          localo = o.fwG;
        }
        else if (k != 0)
        {
          localo = o.fwF;
        }
        else
        {
          localo = o.fwI;
        }
        break;
      case 1:
      case 2:
      case 3:
      case 4:
      }
    }
    int i13 = paramString.length();
    while (i < i13)
    {
      int i14 = '\0*0' + paramString.charAt(i);
      if (i + 2 < i13)
      {
        int i15 = '\0*0' + paramString.charAt(i + 1);
        localb2.aP('\0*0' + paramString.charAt(i + 2) + (i14 * 100 + i15 * 10), 10);
        i += 3;
      }
      else if (i + 1 < i13)
      {
        localb2.aP('\0*0' + paramString.charAt(i + 1) + i14 * 10, 7);
        i += 2;
      }
      else
      {
        localb2.aP(i14, 4);
        i++;
        continue;
        int i10 = paramString.length();
        while (i < i10)
        {
          int i11 = kU(paramString.charAt(i));
          if (i11 == -1)
            throw new w();
          if (i + 1 < i10)
          {
            int i12 = kU(paramString.charAt(i + 1));
            if (i12 == -1)
              throw new w();
            localb2.aP(i12 + i11 * 45, 11);
            i += 2;
          }
          else
          {
            localb2.aP(i11, 6);
            i++;
            continue;
            try
            {
              byte[] arrayOfByte2 = paramString.getBytes(str);
              int i9 = arrayOfByte2.length;
              while (i < i9)
              {
                localb2.aP(arrayOfByte2[i], 8);
                i++;
              }
            }
            catch (UnsupportedEncodingException localUnsupportedEncodingException2)
            {
              throw new w(localUnsupportedEncodingException2);
            }
          }
        }
      }
    }
    while (true)
    {
      int i7;
      int i8;
      try
      {
        byte[] arrayOfByte1 = paramString.getBytes("Shift_JIS");
        int n = arrayOfByte1.length;
        if (i >= n)
          break label767;
        int i6 = 0xFF & arrayOfByte1[i];
        i7 = 0xFF & arrayOfByte1[(i + 1)] | i6 << 8;
        if ((i7 >= 33088) && (i7 <= 40956))
        {
          i8 = i7 - 33088;
          if (i8 != -1)
            break label738;
          throw new w("Invalid byte sequence");
        }
      }
      catch (UnsupportedEncodingException localUnsupportedEncodingException1)
      {
        throw new w(localUnsupportedEncodingException1);
      }
      if ((i7 >= 57408) && (i7 <= 60351))
      {
        i8 = i7 - 49472;
        continue;
        label738: localb2.aP(192 * (i8 >> 8) + (i8 & 0xFF), 13);
        i += 2;
        continue;
        label767: t localt1 = a(localb1.getSize() + localo.a(t.ld(1)) + localb2.getSize(), paramj);
        t localt2 = a(localb1.getSize() + localo.a(localt1) + localb2.getSize(), paramj);
        b localb3 = new b();
        localb3.a(localb1);
        if (localo == o.fwI);
        int i2;
        for (int i1 = localb2.auW(); ; i1 = paramString.length())
        {
          i2 = localo.a(localt2);
          if (i1 < 1 << i2)
            break;
          throw new w(i1 + " is bigger than " + (-1 + (1 << i2)));
        }
        localb3.aP(i1, i2);
        localb3.a(localb2);
        v localv = localt2.b(paramj);
        int i3 = localt2.avj() - localv.avp();
        a(i3, localb3);
        b localb4 = a(localb3, localt2.avj(), i3, localv.avo());
        p localp = new p();
        localp.a(paramj);
        localp.a(localo);
        localp.b(localt2);
        int i4 = localt2.avk();
        e locale = new e(i4, i4);
        int i5 = a(localb4, paramj, localt2, locale);
        localp.lb(i5);
        n.a(localb4, paramj, localt2, i5, locale);
        localp.b(locale);
        return localp;
      }
      else
      {
        i8 = -1;
      }
    }
  }

  private static t a(int paramInt, j paramj)
  {
    for (int i = 1; i <= 40; i++)
    {
      t localt = t.ld(i);
      if (localt.avj() - localt.b(paramj).avp() >= (paramInt + 7) / 8)
        return localt;
    }
    throw new w("Data too big");
  }

  private static void a(int paramInt, b paramb)
  {
    int i = paramInt << 3;
    if (paramb.getSize() > i)
      throw new w("data bits cannot fit in the QR Code" + paramb.getSize() + " > " + i);
    for (int j = 0; (j < 4) && (paramb.getSize() < i); j++)
      paramb.cQ(false);
    int k = 0x7 & paramb.getSize();
    if (k > 0)
      while (k < 8)
      {
        paramb.cQ(false);
        k++;
      }
    int m = paramInt - paramb.auW();
    int n = 0;
    if (n < m)
    {
      if ((n & 0x1) == 0);
      for (int i1 = 236; ; i1 = 17)
      {
        paramb.aP(i1, 8);
        n++;
        break;
      }
    }
    if (paramb.getSize() != i)
      throw new w("Bits size does not equal capacity");
  }

  private static byte[] k(byte[] paramArrayOfByte, int paramInt)
  {
    int i = 0;
    int j = paramArrayOfByte.length;
    int[] arrayOfInt = new int[j + paramInt];
    for (int k = 0; k < j; k++)
      arrayOfInt[k] = (0xFF & paramArrayOfByte[k]);
    new s(k.fwo).b(arrayOfInt, paramInt);
    byte[] arrayOfByte = new byte[paramInt];
    while (i < paramInt)
    {
      arrayOfByte[i] = ((byte)arrayOfInt[(j + i)]);
      i++;
    }
    return arrayOfByte;
  }

  private static int kU(int paramInt)
  {
    if (paramInt < fwb.length)
      return fwb[paramInt];
    return -1;
  }

  private static boolean rm(String paramString)
  {
    try
    {
      byte[] arrayOfByte = paramString.getBytes("Shift_JIS");
      int i = arrayOfByte.length;
      if (i % 2 != 0)
        return false;
      for (int j = 0; ; j += 2)
      {
        if (j >= i)
          break label75;
        int k = 0xFF & arrayOfByte[j];
        if (((k < 129) || (k > 159)) && ((k < 224) || (k > 235)))
          break;
      }
      label75: return true;
    }
    catch (UnsupportedEncodingException localUnsupportedEncodingException)
    {
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.a.h
 * JD-Core Version:    0.6.2
 */