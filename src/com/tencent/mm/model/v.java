package com.tencent.mm.model;

import android.graphics.BitmapFactory;
import android.graphics.BitmapFactory.Options;
import com.tencent.mm.a.c;
import com.tencent.mm.a.j;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.ca;
import com.tencent.mm.storage.cc;
import com.tencent.mm.storage.e;
import com.tencent.mm.storage.i;
import com.tencent.mm.storage.k;

public final class v
{
  public static boolean b(String paramString1, String paramString2, boolean paramBoolean)
  {
    if ((paramString1 == null) || (paramString1.length() == 0))
      aa.e("MicroMsg.ConfigStorageLogic", "canSendRawImage, invalid argument");
    do
    {
      do
        return false;
      while ((paramString2 != null) && (paramString2.length() > 0) && ((i.ty(paramString2)) || (i.tA(paramString2))));
      if (cn(paramString1))
      {
        aa.i("MicroMsg.ConfigStorageLogic", "canSendRawImage : true. isSmallImg");
        return true;
      }
      BitmapFactory.Options localOptions = new BitmapFactory.Options();
      localOptions.inJustDecodeBounds = true;
      BitmapFactory.decodeFile(paramString1, localOptions);
      double d1 = localOptions.outWidth;
      double d2 = localOptions.outHeight;
      if ((d1 / d2 >= 2.5D) || (d2 / d1 >= 2.5D))
      {
        aa.i("MicroMsg.ConfigStorageLogic", "canSendRawImage : true, width height ratio > 2.5");
        return true;
      }
    }
    while (paramBoolean);
    return true;
  }

  public static boolean cm(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return false;
    String str = th();
    if ((str == null) || (str.length() <= 0))
    {
      aa.e("MicroMsg.ConfigStorageLogic", "get userinfo fail");
      return false;
    }
    return str.equals(paramString);
  }

  public static boolean cn(String paramString)
  {
    boolean bool = true;
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.ConfigStorageLogic", "isSmallImg, invalid argument");
      bool = false;
    }
    while (c.ar(paramString) < 65536)
      return bool;
    BitmapFactory.Options localOptions = new BitmapFactory.Options();
    localOptions.inJustDecodeBounds = bool;
    BitmapFactory.decodeFile(paramString, localOptions);
    double d1 = localOptions.outWidth;
    double d2 = localOptions.outHeight;
    if ((d1 < 100.0D) && (d2 < 100.0D))
    {
      aa.i("MicroMsg.ConfigStorageLogic", "isSmallImg : true, width = " + d1 + ", height = " + d2);
      return bool;
    }
    return false;
  }

  public static String getUserBindEmail()
  {
    return cj.hW((String)be.uz().sr().get(5));
  }

  public static boolean tA()
  {
    return (0x80000 & tq()) == 0;
  }

  public static boolean tB()
  {
    return (0x40000 & tq()) == 0;
  }

  public static boolean tC()
  {
    return (0x2000 & tq()) == 0;
  }

  public static boolean tD()
  {
    return (0x10000 & tq()) == 0;
  }

  public static boolean tE()
  {
    String str = (String)be.uz().sr().get(65825);
    if (cj.hX(str))
      return false;
    if (str.equals("0"))
      return false;
    try
    {
      long l = cj.a(Long.valueOf(Long.parseLong(str)));
      if (l == 0L)
        return false;
    }
    catch (Exception localException)
    {
      return false;
    }
    return true;
  }

  public static boolean tF()
  {
    return (0x1 & tq()) == 0;
  }

  public static boolean tG()
  {
    return (0x20000 & tl()) == 0;
  }

  public static int tH()
  {
    return cj.a((Integer)be.uz().sr().get(8201), 22);
  }

  public static int tI()
  {
    return cj.a((Integer)be.uz().sr().get(8208), 8);
  }

  public static i tJ()
  {
    i locali1 = be.uz().su().tO(th());
    if ((locali1 != null) && (locali1.rj() > 0))
      return locali1;
    i locali2 = new i();
    String str1 = (String)be.uz().sr().get(2);
    String str2 = (String)be.uz().sr().get(4);
    locali2.setUsername(str1);
    locali2.bt(str2);
    be.uz().su().B(locali2);
    return be.uz().su().tO(str1);
  }

  public static boolean tK()
  {
    return new j(cj.c((Integer)be.uz().sr().get(9))).longValue() != 0L;
  }

  public static int tg()
  {
    Integer localInteger = (Integer)be.uz().sr().get(9);
    if (localInteger == null)
      return 0;
    return localInteger.intValue();
  }

  public static String th()
  {
    return (String)be.uz().sr().get(2);
  }

  public static String ti()
  {
    return (String)be.uz().sr().get(42);
  }

  public static String tj()
  {
    return (String)be.uz().sr().get(4);
  }

  public static String tk()
  {
    String str = ti();
    if (!cj.hX(str))
      return str;
    return th();
  }

  public static int tl()
  {
    Integer localInteger = (Integer)be.uz().sr().get(7);
    if (localInteger == null)
      return 0;
    return localInteger.intValue();
  }

  public static int tm()
  {
    Integer localInteger = (Integer)be.uz().sr().get(40);
    if (localInteger == null)
      return 0;
    return localInteger.intValue();
  }

  public static boolean tn()
  {
    return (0x2000 & tm()) != 0;
  }

  public static boolean to()
  {
    return (0x4000 & tm()) != 0;
  }

  public static boolean tp()
  {
    return (0x8000 & tm()) != 0;
  }

  public static int tq()
  {
    Integer localInteger = (Integer)be.uz().sr().get(34);
    if (localInteger == null)
      return 0;
    return localInteger.intValue();
  }

  public static boolean tr()
  {
    return (0x40 & tl()) != 0;
  }

  public static boolean ts()
  {
    if ((0x40000 & tl()) != 0);
    for (boolean bool = true; ; bool = false)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(bool);
      aa.e("MicroMsg.ConfigStorageLogic", "isGooglePay: %s", arrayOfObject);
      return bool;
    }
  }

  public static boolean tt()
  {
    return (0x20 & tq()) == 0;
  }

  public static boolean tu()
  {
    return (0x1000 & tl()) != 0;
  }

  public static boolean tv()
  {
    ca localca = be.uz().sz().vB("@t.qq.com");
    return (localca != null) && (localca.aBS());
  }

  public static boolean tw()
  {
    return (0x2 & tq()) == 0;
  }

  public static boolean tx()
  {
    return (0x10 & tq()) == 0;
  }

  public static boolean ty()
  {
    return (0x80 & tq()) == 0;
  }

  public static boolean tz()
  {
    return cj.c((Boolean)be.uz().sr().get(8200));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.v
 * JD-Core Version:    0.6.2
 */