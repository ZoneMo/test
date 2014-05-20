package com.tencent.map.location;

public final class a
{
  private static a TM = null;

  public static a lU()
  {
    try
    {
      if (TM == null)
        TM = new a();
      a locala = TM;
      return locala;
    }
    finally
    {
    }
  }

  public final boolean a(String paramString1, String paramString2)
  {
    if (!ac.ak(paramString1));
    while (true)
    {
      return false;
      if (ac.al(paramString2))
      {
        int i = paramString1.length();
        int j = 0;
        int k = 0;
        while (j < i)
        {
          k += ac.g(paramString1.charAt(j));
          j++;
        }
        int m = k ^ i + (i << 7);
        int n = 0x1F & 36 + (10 + m * 9) / 3;
        int i2;
        if (paramString2.charAt(4) != ac.TX.charAt(n))
          i2 = 0;
        int i4;
        while (i2 != 0)
        {
          int i3 = 0;
          i4 = 0;
          while (i3 < 27)
          {
            i4 = 0xFF & i4 >> 8 ^ ac.UV[(0xFF & (i4 ^ ac.g(paramString2.charAt(i3))))];
            i3++;
          }
          int i1 = 0x1F & (11 + m * 5) / 5;
          if (paramString2.charAt(7) != ac.TX.charAt(i1))
          {
            i2 = 0;
          }
          else
          {
            int i8 = 0x1F & (m + 10) / 3 << 3;
            if (paramString2.charAt(12) != ac.TX.charAt(i8))
            {
              i2 = 0;
            }
            else
            {
              int i9 = 0x1F & (19 + m * 3) / 9;
              if (paramString2.charAt(14) != ac.TX.charAt(i9))
              {
                i2 = 0;
              }
              else
              {
                int i10 = 0x1F & (39 + m * 3) / 8;
                if (paramString2.charAt(19) != ac.TX.charAt(i10))
                {
                  i2 = 0;
                }
                else
                {
                  int i11 = 0x1F & (67 + m / 23) / 7;
                  if (paramString2.charAt(21) != ac.TX.charAt(i11))
                  {
                    i2 = 0;
                  }
                  else
                  {
                    int i12 = 0x1F & 7 * (3 + (m + 23) / 6);
                    if (paramString2.charAt(26) != ac.TX.charAt(i12))
                    {
                      i2 = 0;
                    }
                    else
                    {
                      int i13 = 0;
                      int i14 = 0;
                      while (i13 < paramString1.length())
                      {
                        i14 = 0xFF & i14 >> 8 ^ ac.UV[(0xFF & (i14 ^ ac.g(paramString1.charAt(i13))))];
                        i13++;
                      }
                      int i15 = i14 & 0x1F;
                      if (paramString2.charAt(0) != ac.TX.charAt(i15))
                      {
                        i2 = 0;
                      }
                      else
                      {
                        int i16 = 0x1F & i14 >> 5;
                        if (paramString2.charAt(1) != ac.TX.charAt(i16))
                          i2 = 0;
                        else
                          i2 = 1;
                      }
                    }
                  }
                }
              }
            }
          }
        }
        continue;
        int i5 = i4 & 0x1F;
        int i7;
        if (paramString2.charAt(27) != ac.TX.charAt(i5))
          i7 = 0;
        while (i7 != 0)
        {
          return true;
          int i6 = 0x1F & i4 >> 5;
          if (paramString2.charAt(28) != ac.TX.charAt(i6))
            i7 = 0;
          else
            i7 = 1;
        }
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.map.location.a
 * JD-Core Version:    0.6.2
 */