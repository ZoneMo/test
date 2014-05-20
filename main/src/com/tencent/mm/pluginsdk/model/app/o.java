package com.tencent.mm.pluginsdk.model.app;

import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import com.tencent.mm.a.c;
import com.tencent.mm.a.f;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.e;
import java.io.File;
import java.io.FileOutputStream;
import java.util.ArrayList;
import java.util.List;

public final class o extends ah
{
  public static final String[] cjC = arrayOfString;
  private String bRt = null;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(k.cfX, "AppInfo");
  }

  public o(af paramaf, String paramString)
  {
    super(paramaf, k.cfX, "AppInfo", null);
    this.bRt = paramString;
    k localk1 = new k();
    localk1.field_appId = "wx4310bbd51be7d979";
    if (!super.c(localk1, new String[0]))
    {
      k localk2 = new k();
      localk2.field_appId = "wx4310bbd51be7d979";
      localk2.field_appName = "weixinfile";
      localk2.field_packageName = "com.tencent.mm.openapi";
      localk2.field_status = -1;
      super.b(localk2);
    }
  }

  private String Z(String paramString, int paramInt)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.AppInfoStorage", "getIconPath : invalid argument");
      return null;
    }
    switch (paramInt)
    {
    default:
      aa.e("MicroMsg.AppInfoStorage", "getIconPath, unknown iconType = " + paramInt);
      return null;
    case 1:
      return this.bRt + f.h(paramString.getBytes()) + ".png";
    case 2:
      return this.bRt + f.h(paramString.getBytes()) + "_wm.png";
    case 3:
    }
    return this.bRt + f.h(paramString.getBytes()) + "_sg.png";
  }

  public static k apU()
  {
    k localk = new k();
    localk.field_appName = "invalid_appname";
    localk.field_packageName = "";
    localk.field_signature = "";
    localk.field_status = 3;
    return localk;
  }

  public final Bitmap a(String paramString, int paramInt, float paramFloat)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.AppInfoStorage", "getIcon : invalid argument");
      return null;
    }
    String str = Z(paramString, paramInt);
    if (!c.as(str))
    {
      aa.e("MicroMsg.AppInfoStorage", "icon does not exist, iconPath = " + str + ", iconType = " + paramInt);
      return null;
    }
    return e.e(str, paramFloat);
  }

  public final List apS()
  {
    aa.d("MicroMsg.AppInfoStorage", "getNullOpenIdList, maxCount = -1");
    ArrayList localArrayList = new ArrayList();
    Cursor localCursor = rawQuery("select appId from AppInfo where openId is NULL ", new String[0]);
    if (localCursor == null)
      aa.e("MicroMsg.AppInfoStorage", "get null cursor");
    do
    {
      return localArrayList;
      int i = localCursor.getCount();
      if (i <= 0)
      {
        aa.w("MicroMsg.AppInfoStorage", "getNullOpenIdList fail, cursor count = " + i);
        localCursor.close();
        return localArrayList;
      }
      if (localCursor.moveToFirst())
        while (!localCursor.isAfterLast())
        {
          int j = localCursor.getColumnIndex("appId");
          if (j >= 0)
          {
            String str = localCursor.getString(j);
            if (!cj.hX(str))
              localArrayList.add(str);
          }
          localCursor.moveToNext();
        }
    }
    while (localCursor == null);
    localCursor.close();
    return localArrayList;
  }

  public final Cursor apT()
  {
    Cursor localCursor = rawQuery("select * from AppInfo where apptype like ',1,'", new String[0]);
    if (localCursor == null)
    {
      aa.e("MicroMsg.AppInfoStorage", "getAppByType : cursor is null");
      localCursor = null;
    }
    return localCursor;
  }

  public final boolean c(String paramString, byte[] paramArrayOfByte, int paramInt)
  {
    if ((paramString == null) || (paramString.length() == 0) || (paramArrayOfByte == null) || (paramArrayOfByte.length == 0))
    {
      aa.e("MicroMsg.AppInfoStorage", "saveIcon, invalid argument");
      return false;
    }
    String str = Z(paramString, paramInt);
    if (str == null)
    {
      aa.e("MicroMsg.AppInfoStorage", "saveIcon fail, iconPath is null");
      return false;
    }
    File localFile = new File(str);
    if (localFile.exists())
      localFile.delete();
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
      localFileOutputStream.write(paramArrayOfByte);
      localFileOutputStream.close();
      th(paramString);
      return true;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.AppInfoStorage", "saveIcon, exception, e = " + localException.getMessage());
    }
    return false;
  }

  public final Cursor d(int[] paramArrayOfInt)
  {
    Cursor localCursor;
    if ((paramArrayOfInt == null) || (paramArrayOfInt.length <= 0))
      localCursor = null;
    do
    {
      return localCursor;
      String str = "select * from AppInfo where ";
      for (int i = 0; i < paramArrayOfInt.length; i++)
      {
        str = str + " status = " + paramArrayOfInt[i];
        if (i < -1 + paramArrayOfInt.length)
          str = str + " or ";
      }
      localCursor = rawQuery(str + " order by status desc, modifyTime asc", new String[0]);
    }
    while (localCursor != null);
    aa.e("MicroMsg.AppInfoStorage", "getAppByStatus : cursor is null");
    return null;
  }

  public final Cursor jZ(int paramInt)
  {
    Cursor localCursor = rawQuery("select * from AppInfo where status = " + paramInt + " order by modifyTime asc", new String[0]);
    if (localCursor == null)
    {
      aa.e("MicroMsg.AppInfoStorage", "getAppByStatus : cursor is null");
      localCursor = null;
    }
    return localCursor;
  }

  public final void k(k paramk)
  {
    if (paramk == null);
    while (paramk.field_status == 5)
      return;
    paramk.field_status = 3;
    a(paramk, new String[0]);
  }

  public final Cursor ka(int paramInt)
  {
    Cursor localCursor = rawQuery("select * from AppInfo where status = " + paramInt + " and (appType is null or appType not like ',1,')", new String[0]);
    if (localCursor == null)
    {
      aa.e("MicroMsg.AppInfoStorage", "getAppByStatusExcludeByType: curosr is null");
      localCursor = null;
    }
    return localCursor;
  }

  public final void l(k paramk)
  {
    if ((paramk == null) || (paramk.field_status != 3))
      return;
    paramk.field_status = 4;
    a(paramk, new String[0]);
  }

  public final boolean p(String paramString, Bitmap paramBitmap)
  {
    if ((paramString == null) || (paramString.length() == 0) || (paramBitmap == null) || (paramBitmap.isRecycled()))
    {
      aa.e("MicroMsg.AppInfoStorage", "saveIcon : invalid argument");
      return false;
    }
    String str = Z(paramString, 1);
    if (str == null)
    {
      aa.e("MicroMsg.AppInfoStorage", "saveIcon fail, iconPath is null");
      return false;
    }
    File localFile = new File(str);
    if (localFile.exists())
      localFile.delete();
    try
    {
      FileOutputStream localFileOutputStream = new FileOutputStream(localFile);
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localFileOutputStream);
      localFileOutputStream.close();
      th(paramString);
      return true;
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.AppInfoStorage", "saveIcon : compress occurs an exception");
    }
    return false;
  }

  public final k qo(String paramString)
  {
    k localk;
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.AppInfoStorage", "appId is null");
      localk = null;
    }
    do
    {
      return localk;
      localk = new k();
      localk.field_appId = paramString;
    }
    while (super.c(localk, new String[0]));
    return null;
  }

  public final boolean qp(String paramString)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.AppInfoStorage", "hasIcon, appId is null");
      return false;
    }
    return c.as(Z(paramString, 1));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.o
 * JD-Core Version:    0.6.2
 */