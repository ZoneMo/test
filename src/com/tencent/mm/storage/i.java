package com.tencent.mm.storage;

import android.database.Cursor;
import com.tencent.mm.e.d;
import com.tencent.mm.sdk.platformtools.cj;

public final class i extends com.tencent.mm.f.a
{
  private CharSequence ggm;

  public i()
  {
  }

  public i(String paramString)
  {
    super(paramString);
  }

  public static int aAq()
  {
    return 16;
  }

  public static int aAr()
  {
    return 8;
  }

  public static String f(Cursor paramCursor)
  {
    return paramCursor.getString(paramCursor.getColumnIndex("username"));
  }

  public static boolean lP(int paramInt)
  {
    return (paramInt & 0x8) > 0;
  }

  public static boolean tA(String paramString)
  {
    if (paramString != null)
      return paramString.endsWith("@qqim");
    return false;
  }

  public static boolean tB(String paramString)
  {
    if (paramString != null)
      return paramString.endsWith("@fb");
    return false;
  }

  public static boolean tC(String paramString)
  {
    boolean bool1 = false;
    if (paramString != null)
      if (!paramString.contains("@bottle:"))
      {
        boolean bool2 = paramString.endsWith("@bottle");
        bool1 = false;
        if (!bool2);
      }
      else
      {
        bool1 = true;
      }
    return bool1;
  }

  public static boolean tD(String paramString)
  {
    if (cj.hX(paramString));
    while (true)
    {
      return false;
      String str = d.qB().qm();
      if (str == null)
        str = "wx_;wxid_;gh_;a0;a1;a2;a3;a4;a5;a6;a7;a8;a9;q0;q1;q2;q3;q4;q5;q6;q7;q8;q9;qq0;qq1;qq2;qq3;qq4;qq5;qq6;qq7;qq8;qq9;f0;f1;f2;f3;f4;f5;f6;f7;f8;f9;F0;F1;F2;F3;F4;F5;F6;F7;F8;F9;";
      String[] arrayOfString = str.split(";");
      for (int i = 0; i < arrayOfString.length; i++)
        if ((arrayOfString[i] != null) && (paramString.startsWith(arrayOfString[i])))
          return true;
    }
  }

  public static String tE(String paramString)
  {
    if (tC(paramString))
    {
      String[] arrayOfString = paramString.split(":");
      if ((arrayOfString == null) || (arrayOfString.length <= 0))
        return paramString;
      return arrayOfString[0];
    }
    if (paramString.contains("@"))
      return "";
    return paramString + "@bottle";
  }

  public static boolean ty(String paramString)
  {
    if (paramString != null)
      return paramString.endsWith("@t.qq.com");
    return false;
  }

  public static boolean tz(String paramString)
  {
    if (paramString != null)
      return paramString.endsWith("@qr");
    return false;
  }

  public final CharSequence aAd()
  {
    return this.ggm;
  }

  public final boolean aAl()
  {
    return (int)cj.FC() - this.bUh > 86400L;
  }

  public final boolean aAp()
  {
    return (0x8 & this.field_verifyFlag) > 0;
  }

  public final String aAs()
  {
    return this.field_encryptUsername;
  }

  public final void aAt()
  {
    String str = this.bUg;
    if (cj.hX(str));
    String[] arrayOfString;
    do
    {
      return;
      arrayOfString = str.split("_");
    }
    while (arrayOfString.length <= 0);
    if (arrayOfString.length > 2)
    {
      if (RegionCodeDecoder.vw(arrayOfString[0]))
      {
        RegionCodeDecoder.aDe();
        super.bA(RegionCodeDecoder.aW(arrayOfString[0], arrayOfString[1]));
      }
      while (true)
      {
        RegionCodeDecoder.aDe();
        super.bB(RegionCodeDecoder.x(arrayOfString[0], arrayOfString[1], arrayOfString[2]));
        return;
        RegionCodeDecoder.aDe();
        super.bA(RegionCodeDecoder.vy(arrayOfString[0]));
      }
    }
    if (arrayOfString.length == 2)
    {
      RegionCodeDecoder.aDe();
      super.bA(RegionCodeDecoder.vy(arrayOfString[0]));
      RegionCodeDecoder.aDe();
      super.bB(RegionCodeDecoder.aW(arrayOfString[0], arrayOfString[1]));
      return;
    }
    RegionCodeDecoder.aDe();
    super.bA(RegionCodeDecoder.vy(arrayOfString[0]));
    super.bB("");
  }

  @Deprecated
  public final void bA(String paramString)
  {
    super.bA(paramString);
  }

  @Deprecated
  public final void bB(String paramString)
  {
    super.bB(paramString);
  }

  public final void bO(String paramString)
  {
    super.bO(paramString);
    aAt();
  }

  public final String getCountryCode()
  {
    String str = this.bUg;
    if (cj.hX(str))
      return "";
    String[] arrayOfString = str.split("_");
    if ((arrayOfString == null) || (arrayOfString.length <= 0))
      return "";
    return cj.hW(arrayOfString[0]);
  }

  public final void o(CharSequence paramCharSequence)
  {
    this.ggm = paramCharSequence;
  }

  public final String rC()
  {
    return super.rC();
  }

  public final String rD()
  {
    return super.rD();
  }

  public final void tF(String paramString)
  {
    this.field_encryptUsername = paramString;
  }

  public final String vA()
  {
    String str = this.bUg;
    if (cj.hX(str))
      return "";
    String[] arrayOfString = str.split("_");
    if ((arrayOfString == null) || (arrayOfString.length < 2))
      return "";
    return cj.hW(arrayOfString[1]);
  }

  public final String vz()
  {
    String str = this.bUg;
    if (cj.hX(str))
      return "";
    String[] arrayOfString = str.split("_");
    if ((arrayOfString == null) || (arrayOfString.length < 3))
      return "";
    return cj.hW(arrayOfString[2]);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.i
 * JD-Core Version:    0.6.2
 */