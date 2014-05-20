package com.tencent.mm.pluginsdk.ui.tools;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.net.Uri;
import com.tencent.mm.a.c;
import com.tencent.mm.c.a.hb;
import com.tencent.mm.platformtools.k;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.File;

public final class s
{
  private static String filePath = null;

  public static String Fo()
  {
    return k.Fo();
  }

  public static String a(Context paramContext, Intent paramIntent, String paramString)
  {
    if (filePath == null)
      filePath = paramContext.getSharedPreferences("system_config_prefs", 0).getString("camera_file_path", null);
    if ((filePath == null) || (!c.as(filePath)))
      filePath = com.tencent.mm.ui.tools.h.b(paramContext, paramIntent, paramString);
    k.d(filePath, paramContext);
    return filePath;
  }

  public static void a(Activity paramActivity, int paramInt1, int paramInt2, int paramInt3)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("max_select_count", paramInt2);
    localIntent.putExtra("query_source_type", paramInt3);
    localIntent.addFlags(67108864);
    com.tencent.mm.ak.a.a(paramActivity, "gallery", ".ui.GalleryEntryUI", localIntent, paramInt1);
  }

  public static boolean a(Activity paramActivity, String paramString1, String paramString2, int paramInt)
  {
    boolean bool = b(paramActivity, paramString1, paramString2, paramInt);
    if (bool)
    {
      hb localhb = new hb();
      localhb.bQX.bQY = true;
      com.tencent.mm.sdk.b.a.ayH().f(localhb);
    }
    Object[] arrayOfObject = new Object[4];
    arrayOfObject[0] = paramString1;
    arrayOfObject[1] = paramString2;
    arrayOfObject[2] = Integer.valueOf(paramInt);
    arrayOfObject[3] = Boolean.valueOf(bool);
    aa.d("MicroMsg.TakePhotoUtil", "takePhoto(), dir = [%s], filename = [%s], cmd = [%s], result = [%s]", arrayOfObject);
    return bool;
  }

  @TargetApi(8)
  public static String auS()
  {
    return com.tencent.mm.storage.h.cfG;
  }

  private static boolean b(Activity paramActivity, String paramString1, String paramString2, int paramInt)
  {
    filePath = paramString1 + paramString2;
    aa.i("MicroMsg.TakePhotoUtil", "takePhotoFromSys(), filePath = " + filePath);
    String str = filePath;
    SharedPreferences.Editor localEditor = paramActivity.getSharedPreferences("system_config_prefs", 0).edit();
    localEditor.putString("camera_file_path", str);
    localEditor.commit();
    Intent localIntent = new Intent("android.media.action.IMAGE_CAPTURE");
    File localFile = new File(paramString1);
    if (!localFile.exists());
    try
    {
      localFile.mkdirs();
      label118: if (!localFile.exists())
      {
        aa.e("MicroMsg.TakePhotoUtil", "takePhotoFromSys(), dir not exist. " + paramString1);
        return false;
      }
      localIntent.putExtra("output", Uri.fromFile(new File(filePath)));
      try
      {
        paramActivity.startActivityForResult(localIntent, paramInt);
        return true;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
        aa.e("MicroMsg.TakePhotoUtil", "takePhotoFromSys(), " + localActivityNotFoundException.getMessage());
        return false;
      }
    }
    catch (Exception localException)
    {
      break label118;
    }
  }

  public static void d(String paramString, Context paramContext)
  {
    k.d(paramString, paramContext);
  }

  public static boolean e(Activity paramActivity, int paramInt)
  {
    hb localhb = new hb();
    localhb.bQX.bQY = true;
    com.tencent.mm.sdk.b.a.ayH().f(localhb);
    a(paramActivity, paramInt, 1, 0);
    return true;
  }

  public static void f(Activity paramActivity, int paramInt)
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("max_select_count", 1);
    localIntent.putExtra("query_media_type", 2);
    localIntent.putExtra("query_source_type", 0);
    localIntent.addFlags(67108864);
    com.tencent.mm.ak.a.a(paramActivity, "gallery", ".ui.GalleryEntryUI", localIntent, paramInt);
  }

  public static void f(String paramString, Context paramContext)
  {
    k.a(paramString, paramContext, true);
  }

  public static boolean g(Activity paramActivity, int paramInt)
  {
    return h(paramActivity, paramInt);
  }

  private static boolean h(Activity paramActivity, int paramInt)
  {
    Intent localIntent = new Intent("android.intent.action.GET_CONTENT");
    localIntent.setType("video/*");
    try
    {
      paramActivity.startActivityForResult(localIntent, paramInt);
      return true;
    }
    catch (ActivityNotFoundException localActivityNotFoundException)
    {
    }
    return false;
  }

  public static String hM(String paramString)
  {
    return k.hM(paramString);
  }

  public static boolean p(Activity paramActivity)
  {
    hb localhb = new hb();
    localhb.bQX.bQY = true;
    com.tencent.mm.sdk.b.a.ayH().f(localhb);
    a(paramActivity, 2, 1, 5);
    return true;
  }

  public static void q(Activity paramActivity)
  {
    a(paramActivity, 217, 9, 3);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.s
 * JD-Core Version:    0.6.2
 */