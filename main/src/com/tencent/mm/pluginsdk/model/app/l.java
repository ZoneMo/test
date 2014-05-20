package com.tencent.mm.pluginsdk.model.app;

import android.content.Context;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Bundle;
import com.tencent.mm.a.f;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.ah;
import com.tencent.mm.sdk.a.a;
import com.tencent.mm.sdk.modelmsg.WXMediaMessage;
import com.tencent.mm.sdk.modelmsg.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.storage.e;
import java.util.ArrayList;
import java.util.List;

public final class l
{
  public static k F(String paramString, boolean paramBoolean)
  {
    k localk = null;
    if ((paramString == null) || (paramString.length() == 0))
      aa.e("MicroMsg.AppInfoLogic", "getAppInfo, appId is null");
    while (true)
    {
      return localk;
      if (com.tencent.mm.pluginsdk.h.app() == null)
      {
        aa.e("MicroMsg.AppInfoLogic", "getISubCorePluginBase() == null");
        return null;
      }
      localk = com.tencent.mm.pluginsdk.h.app().qf(paramString);
      if (paramBoolean)
      {
        if ((localk == null) || (localk.field_appName == null) || (localk.field_appName.length() == 0));
        for (int i = 1; i != 0; i = 0)
        {
          com.tencent.mm.pluginsdk.h.app().qg(paramString);
          return localk;
        }
      }
    }
  }

  public static m a(Context paramContext, String paramString1, WXMediaMessage paramWXMediaMessage, String paramString2)
  {
    aa.d("MicroMsg.AppInfoLogic", "request pkg = " + paramString1 + ", openId = " + paramString2);
    m localm = new m();
    localm.gca = paramWXMediaMessage;
    localm.fhS = f.h(cj.FD().getBytes());
    localm.cOp = paramString2;
    localm.doZ = z.a(paramContext.getSharedPreferences(al.azs(), 0));
    localm.dHm = ((String)be.uz().sr().get(274436));
    Bundle localBundle = new Bundle();
    localm.h(localBundle);
    u.s(localBundle);
    u.t(localBundle);
    com.tencent.mm.sdk.a.b localb = new com.tencent.mm.sdk.a.b();
    localb.gbQ = paramString1;
    localb.gbS = localBundle;
    a.a(paramContext, localb);
    return localm;
  }

  public static String a(Context paramContext, k paramk, String paramString)
  {
    if ((paramContext == null) || (paramk == null));
    label131: label140: label147: 
    while (true)
    {
      return paramString;
      String str1 = aV(paramContext);
      boolean bool = str1.equalsIgnoreCase("zh_CN");
      String str2 = null;
      if (bool)
        str2 = paramk.field_appName;
      if (str1.equalsIgnoreCase("en"))
      {
        if (cj.hX(paramk.field_appName_en))
          str2 = paramk.field_appName;
      }
      else
      {
        if (str1.equalsIgnoreCase("zh_TW"))
        {
          if (!cj.hX(paramk.field_appName_tw))
            break label131;
          str2 = paramk.field_appName;
        }
        label87: if (cj.hX(str2))
          if (!cj.hX(paramk.field_appName_en))
            break label140;
      }
      for (str2 = paramk.field_appName; ; str2 = paramk.field_appName_en)
      {
        if (cj.hX(str2))
          break label147;
        return str2;
        str2 = paramk.field_appName_en;
        break;
        str2 = paramk.field_appName_tw;
        break label87;
      }
    }
  }

  public static boolean aF(String paramString)
  {
    return (paramString != null) && (paramString.trim().length() != 0) && (!paramString.equals("weixinfile")) && (!paramString.equals("invalid_appname"));
  }

  public static boolean aG(String paramString)
  {
    if (cj.hX(paramString))
      return false;
    k localk = F(paramString, false);
    if (localk == null)
    {
      aa.w("MicroMsg.AppInfoLogic", "app is null, appId = " + paramString);
      return false;
    }
    return localk.apQ();
  }

  public static List aS(Context paramContext)
  {
    return d(paramContext, 5);
  }

  public static List aT(Context paramContext)
  {
    return d(paramContext, 1);
  }

  public static List aU(Context paramContext)
  {
    ArrayList localArrayList = new ArrayList();
    if (com.tencent.mm.pluginsdk.h.app() == null)
      aa.e("MicroMsg.AppInfoLogic", "getISubCorePluginBase() == null");
    Cursor localCursor;
    do
    {
      return localArrayList;
      localCursor = com.tencent.mm.pluginsdk.h.app().c(new int[] { 1, 5 });
    }
    while (localCursor == null);
    while (localCursor.moveToNext())
    {
      k localk = new k();
      localk.convertFrom(localCursor);
      if (localk.field_status == 1)
      {
        if (g(paramContext, localk.field_appId))
        {
          if (!cj.hX(localk.field_signature))
            localArrayList.add(localk);
        }
        else
        {
          localk.field_status = 4;
          com.tencent.mm.pluginsdk.h.app().f(localk);
        }
      }
      else if (localk.field_signature != null)
        localArrayList.add(localk);
    }
    localCursor.close();
    return localArrayList;
  }

  private static String aV(Context paramContext)
  {
    String str = z.a(paramContext.getSharedPreferences(al.azs(), 0));
    if ((str == null) || (str.length() == 0) || (str.equalsIgnoreCase("zh_CN")))
      str = "zh_CN";
    return str;
  }

  public static Bitmap b(String paramString, int paramInt, float paramFloat)
  {
    if ((paramString == null) || (paramString.length() == 0))
      aa.e("MicroMsg.AppInfoLogic", "getAppIcon, appId is null");
    Bitmap localBitmap1;
    do
    {
      Bitmap localBitmap2;
      do
      {
        do
        {
          do
            return null;
          while (!be.se());
          if (be.uz().isSDCardAvailable())
            break;
        }
        while ((al.getContext() == null) || (al.getContext().getResources() == null));
        switch (paramInt)
        {
        case 2:
        default:
          aa.e("MicroMsg.AppInfoLogic", "getAppIcon, unknown iconType = " + paramInt);
          return null;
        case 1:
        case 3:
        }
        localBitmap2 = BitmapFactory.decodeResource(al.getContext().getResources(), com.tencent.mm.h.aiu);
      }
      while ((localBitmap2 == null) || (localBitmap2.isRecycled()));
      return localBitmap2;
      localBitmap1 = com.tencent.mm.pluginsdk.h.app().a(paramString, paramInt, paramFloat);
      if (localBitmap1 == null)
      {
        aa.w("MicroMsg.AppInfoLogic", "getAppIcon, bm does not exist or has been recycled");
        com.tencent.mm.pluginsdk.h.app().X(paramString, paramInt);
        return null;
      }
    }
    while (localBitmap1.isRecycled());
    return localBitmap1;
  }

  public static boolean b(Context paramContext, k paramk)
  {
    if (paramk == null)
    {
      aa.w("MicroMsg.AppInfoLogic", "app is null");
      return false;
    }
    if ((paramk.field_packageName == null) || (paramk.field_packageName.length() == 0))
    {
      aa.w("MicroMsg.AppInfoLogic", "field_packageName is null");
      return false;
    }
    return u.g(paramContext, paramk.field_packageName);
  }

  public static String c(Context paramContext, k paramk)
  {
    return a(paramContext, paramk, null);
  }

  public static String d(Context paramContext, k paramk)
  {
    if ((paramContext == null) || (paramk == null))
      return null;
    String str = aV(paramContext);
    if (str.equalsIgnoreCase("zh_CN"))
      return paramk.field_appDiscription;
    if (str.equalsIgnoreCase("zh_TW"))
    {
      if (cj.hX(paramk.field_appDiscription_tw))
        return paramk.field_appDiscription;
      return paramk.field_appDiscription_tw;
    }
    if (str.equalsIgnoreCase("en"))
    {
      if (cj.hX(paramk.field_appDiscription_en))
        return paramk.field_appDiscription;
      return paramk.field_appDiscription_en;
    }
    if (cj.hX(paramk.field_appDiscription_en))
      return paramk.field_appDiscription;
    return paramk.field_appDiscription_en;
  }

  private static List d(Context paramContext, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    if (com.tencent.mm.pluginsdk.h.app() == null)
      aa.e("MicroMsg.AppInfoLogic", "getISubCorePluginBase() == null");
    Cursor localCursor;
    do
    {
      return localArrayList;
      localCursor = com.tencent.mm.pluginsdk.h.app().jX(paramInt);
    }
    while (localCursor == null);
    while (localCursor.moveToNext())
    {
      k localk = new k();
      localk.convertFrom(localCursor);
      if (localk.field_status == 1)
      {
        if (g(paramContext, localk.field_appId))
        {
          if (!cj.hX(localk.field_signature))
            localArrayList.add(localk);
        }
        else
        {
          localk.field_status = 4;
          com.tencent.mm.pluginsdk.h.app().f(localk);
        }
      }
      else if (localk.field_signature != null)
        localArrayList.add(localk);
    }
    localCursor.close();
    return localArrayList;
  }

  public static String f(Context paramContext, String paramString)
  {
    return a(paramContext, F(paramString, true), null);
  }

  public static boolean g(Context paramContext, String paramString)
  {
    if ((paramContext == null) || (paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.AppInfoLogic", "isAppInstalled, invalid arguments");
      return false;
    }
    return b(paramContext, F(paramString, true));
  }

  public static boolean i(k paramk)
  {
    if ((paramk == null) || (cj.hX(paramk.field_appId)));
    while ((0x1 & paramk.field_appInfoFlag) <= 0)
      return false;
    return true;
  }

  public static boolean j(k paramk)
  {
    if (paramk == null);
    while ((0x2 & paramk.field_appInfoFlag) == 0)
      return true;
    return false;
  }

  public static boolean ql(String paramString)
  {
    if (cj.hX(paramString));
    k localk;
    do
    {
      return false;
      localk = F(paramString, true);
      if (localk == null)
      {
        aa.w("MicroMsg.AppInfoLogic", "app is null, appId = " + paramString);
        return false;
      }
      if (localk.field_authFlag == 0)
        return true;
    }
    while ((0x2 & localk.field_authFlag) <= 0);
    return true;
  }

  public static boolean qm(String paramString)
  {
    if (cj.hX(paramString));
    k localk;
    do
    {
      return false;
      localk = F(paramString, true);
    }
    while ((localk == null) || (cj.hX(localk.field_appId)) || ((0x8 & localk.field_appInfoFlag) <= 0));
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.l
 * JD-Core Version:    0.6.2
 */