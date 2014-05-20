package com.tencent.mm.platformtools;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.widget.Toast;
import com.tencent.mm.n;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.m;
import com.tencent.mm.storage.h;

public final class k
{
  public static String Fo()
  {
    return h.cfG.replace(h.cfD, "/sdcard");
  }

  public static boolean a(String paramString, Context paramContext, boolean paramBoolean)
  {
    if ((paramString != null) && (!paramString.equals("")))
    {
      String str = hM("jpg");
      m.aK(paramString, str);
      d(str, paramContext);
      if (paramBoolean)
      {
        int i = n.biN;
        Object[] arrayOfObject = new Object[1];
        arrayOfObject[0] = Fo();
        Toast.makeText(paramContext, paramContext.getString(i, arrayOfObject), 1).show();
      }
      return true;
    }
    return false;
  }

  public static void d(String paramString, Context paramContext)
  {
    paramContext.sendBroadcast(new Intent("android.intent.action.MEDIA_SCANNER_SCAN_FILE", Uri.parse("file://" + paramString)));
    aa.d("Micromsg.ExportImgUtil", "refreshing media scanner on path=%s", new Object[] { paramString });
  }

  public static String hM(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder().append(h.cfG);
    Object[] arrayOfObject = new Object[3];
    arrayOfObject[0] = "mmexport";
    arrayOfObject[1] = Long.valueOf(System.currentTimeMillis());
    arrayOfObject[2] = paramString;
    return String.format("%s%d.%s", arrayOfObject);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.platformtools.k
 * JD-Core Version:    0.6.2
 */