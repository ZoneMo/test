package com.tencent.mm.ab;

import android.content.ContentValues;
import android.content.Context;
import android.database.Cursor;
import android.util.DisplayMetrics;
import android.view.Display;
import android.view.WindowManager;
import com.tencent.mm.a.c;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.ai;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.File;
import junit.framework.Assert;

public final class l extends ai
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS packageinfo ( id int  PRIMARY KEY, version int  , name text  , size int  , packname text  , status int  , reserved1 text  , reserved2 text  , reserved3 int  , reserved4 int  ) ", "CREATE TABLE IF NOT EXISTS packageinfo2 ( localId text  PRIMARY KEY , id int  , version int  , name text  , size int  , packname text  , status int  , type int  , reserved1 text  , reserved2 text  , reserved3 int  , reserved4 int  ) " };
  private i cjB;
  private String cvY;

  public l(i parami, String paramString)
  {
    this.cjB = parami;
    this.cvY = paramString;
  }

  public static String H(int paramInt1, int paramInt2)
  {
    return paramInt1 + "_" + paramInt2 + "_thumb.jpg";
  }

  public static String I(int paramInt1, int paramInt2)
  {
    switch (paramInt2)
    {
    case 3:
    case 4:
    case 6:
    case 10:
    case 11:
    default:
      return "";
    case 0:
      return "";
    case 1:
      return paramInt1 + "_session_bg.zip";
    case 2:
      return paramInt1 + "_emoji_art.temp";
    case 8:
      return paramInt1 + "_regiondata.temp";
    case 7:
      return paramInt1 + "_configlist.cfg";
    case 9:
      return "_speex_upload.cfg";
    case 12:
      return "_rcpt_addr";
    case 5:
    }
    return "brand_i18n.apk";
  }

  public static int P(Context paramContext)
  {
    int i = 1;
    DisplayMetrics localDisplayMetrics = new DisplayMetrics();
    ((WindowManager)paramContext.getSystemService("window")).getDefaultDisplay().getMetrics(localDisplayMetrics);
    int j;
    if (localDisplayMetrics.heightPixels > localDisplayMetrics.widthPixels)
    {
      j = i;
      if (localDisplayMetrics.density > 1.0F)
        break label65;
      if (j == 0)
        break label63;
      i = 4;
    }
    label63: label65: 
    while (j == 0)
    {
      return i;
      j = 0;
      break;
      return 2;
    }
    return 3;
  }

  public final Cursor BI()
  {
    return this.cjB.rawQuery("select packageinfo2.localId,packageinfo2.id,packageinfo2.version,packageinfo2.name,packageinfo2.size,packageinfo2.packname,packageinfo2.status,packageinfo2.type,packageinfo2.reserved1,packageinfo2.reserved2,packageinfo2.reserved3,packageinfo2.reserved4 from packageinfo2   where packageinfo2.type=1", null);
  }

  public final String BJ()
  {
    return this.cvY;
  }

  public final k G(int paramInt1, int paramInt2)
  {
    String str = "select packageinfo2.localId,packageinfo2.id,packageinfo2.version,packageinfo2.name,packageinfo2.size,packageinfo2.packname,packageinfo2.status,packageinfo2.type,packageinfo2.reserved1,packageinfo2.reserved2,packageinfo2.reserved3,packageinfo2.reserved4 from packageinfo2   where packageinfo2.id = \"" + cj.hR(String.valueOf(paramInt1)) + "\" and packageinfo2.type = \"" + cj.hR(String.valueOf(paramInt2)) + "\"";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor == null)
      return null;
    boolean bool = localCursor.moveToFirst();
    k localk = null;
    if (bool)
    {
      localk = new k();
      localk.convertFrom(localCursor);
    }
    localCursor.close();
    return localk;
  }

  public final String J(int paramInt1, int paramInt2)
  {
    String str;
    switch (paramInt2)
    {
    default:
      str = "";
    case 0:
    case 1:
      while (true)
      {
        return str;
        return "";
        str = this.cvY + paramInt1 + "_session_bg/";
        try
        {
          File localFile = new File(str);
          if (!localFile.exists())
          {
            localFile.mkdirs();
            return str;
          }
        }
        catch (Exception localException)
        {
          aa.e("MicroMsg.PackageInfoStorage", "can not create dir, dir = " + str);
          return str;
        }
      }
    case 2:
    }
    return "";
  }

  public final String K(int paramInt1, int paramInt2)
  {
    switch (paramInt2)
    {
    default:
      return null;
    case 1:
      return J(paramInt1, 1) + "horizontal_hdpi.jpg";
    case 2:
      return J(paramInt1, 1) + "horizontal_ldpi.jpg";
    case 3:
      return J(paramInt1, 1) + "vertical_hdpi.jpg";
    case 4:
    }
    return J(paramInt1, 1) + "vertical_ldpi.jpg";
  }

  public final void L(int paramInt1, int paramInt2)
  {
    c.deleteFile(this.cvY + I(paramInt1, paramInt2));
    k localk = G(paramInt1, paramInt2);
    if (localk != null)
    {
      localk.setStatus(5);
      r.BM().b(localk);
    }
  }

  public final boolean a(k paramk)
  {
    if (paramk == null);
    ContentValues localContentValues;
    do
    {
      return false;
      paramk.cL(-1);
      localContentValues = paramk.oa();
    }
    while ((int)this.cjB.insert("packageinfo2", "localId", localContentValues) == -1);
    Ei();
    return true;
  }

  public final boolean b(k paramk)
  {
    if (paramk != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      ContentValues localContentValues = paramk.oa();
      if (localContentValues.size() <= 0)
        break;
      i locali = this.cjB;
      String[] arrayOfString = new String[2];
      arrayOfString[0] = paramk.getId();
      arrayOfString[1] = paramk.BH();
      if (locali.update("packageinfo2", localContentValues, "id= ? and type =?", arrayOfString) <= 0)
        break;
      Ei();
      return true;
    }
    Ei();
    return false;
  }

  public final boolean c(k paramk)
  {
    dP(paramk.BH());
    paramk.setStatus(1);
    return b(paramk);
  }

  public final boolean dP(int paramInt)
  {
    String str = "update packageinfo2 set status = 2 where status = 1 and type = " + paramInt + ";";
    boolean bool = this.cjB.aQ("packageinfo2", str);
    Ei();
    return bool;
  }

  public final boolean dQ(int paramInt)
  {
    i locali = this.cjB;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    if (locali.delete("packageinfo2", "type =?", arrayOfString) > 0)
    {
      Ei();
      return true;
    }
    return false;
  }

  public final k[] dR(int paramInt)
  {
    String str = "select packageinfo2.localId,packageinfo2.id,packageinfo2.version,packageinfo2.name,packageinfo2.size,packageinfo2.packname,packageinfo2.status,packageinfo2.type,packageinfo2.reserved1,packageinfo2.reserved2,packageinfo2.reserved3,packageinfo2.reserved4 from packageinfo2   where packageinfo2.type=" + paramInt;
    Cursor localCursor = this.cjB.rawQuery(str, null);
    int i = localCursor.getCount();
    aa.d("MicroMsg.PackageInfoStorage", "getInfoByType : count:" + i + " type:" + paramInt);
    if (i == 0)
    {
      localCursor.close();
      return null;
    }
    k[] arrayOfk = new k[i];
    for (int j = 0; j < i; j++)
    {
      localCursor.moveToPosition(j);
      k localk = new k();
      localk.convertFrom(localCursor);
      arrayOfk[j] = localk;
    }
    localCursor.close();
    return arrayOfk;
  }

  public final String j(String paramString, boolean paramBoolean)
  {
    if (paramBoolean)
      return this.cvY + paramString + "_chatting_bg_vertical.jpg";
    return this.cvY + paramString + "_chatting_bg_horizontal.jpg";
  }

  public final String u(String paramString, int paramInt)
  {
    switch (paramInt)
    {
    default:
      return null;
    case 3:
    case 4:
      return j(paramString, true);
    case 1:
    case 2:
    }
    return j(paramString, false);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ab.l
 * JD-Core Version:    0.6.2
 */