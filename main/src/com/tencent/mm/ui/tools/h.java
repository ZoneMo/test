package com.tencent.mm.ui.tools;

import android.app.Activity;
import android.content.ContentResolver;
import android.content.Context;
import android.content.Intent;
import android.database.Cursor;
import android.graphics.Bitmap;
import android.graphics.Bitmap.CompressFormat;
import android.net.Uri;
import android.os.Bundle;
import android.text.format.DateFormat;
import com.tencent.mm.a.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;

public final class h
{
  public static String b(Context paramContext, Intent paramIntent, String paramString)
  {
    Object localObject = null;
    if ((paramContext == null) || (paramIntent == null) || (paramString == null))
      aa.e("MicroMsg.AsyncObtainImage", "resolvePhotoFromIntent fail, invalid argument");
    Cursor localCursor;
    while (true)
    {
      return localObject;
      Uri localUri = Uri.parse(paramIntent.toURI());
      localCursor = paramContext.getContentResolver().query(localUri, null, null, null, null);
      if ((localCursor != null) && (localCursor.getCount() > 0))
        try
        {
          boolean bool2 = localUri.toString().startsWith("content://com.google.android.gallery3d");
          localObject = null;
          if (bool2)
          {
            String str2 = r(paramString, com.tencent.mm.sdk.platformtools.h.g(paramIntent.getData()));
            localObject = str2;
          }
          label97: 
          while (localCursor != null)
          {
            localCursor.close();
            return localObject;
            localCursor.moveToFirst();
            localObject = localCursor.getString(localCursor.getColumnIndex("_data"));
            aa.d("MicroMsg.AsyncObtainImage", "photo from resolver, path:" + (String)localObject);
          }
        }
        catch (Exception localException)
        {
          break label97;
        }
    }
    String str1;
    if (paramIntent.getData() != null)
    {
      str1 = paramIntent.getData().getPath();
      boolean bool1 = new File(str1).exists();
      localObject = null;
      if (bool1)
        break label286;
    }
    while (true)
    {
      aa.d("MicroMsg.AsyncObtainImage", "photo file from data, path:" + (String)localObject);
      break;
      if ((paramIntent.getAction() != null) && (paramIntent.getAction().equals("inline-data")))
      {
        localObject = r(paramString, (Bitmap)paramIntent.getExtras().get("data"));
        break;
      }
      if (localCursor != null)
        localCursor.close();
      aa.e("MicroMsg.AsyncObtainImage", "resolve photo from intent failed");
      return null;
      label286: localObject = str1;
    }
  }

  public static void b(Activity paramActivity, Intent paramIntent1, Intent paramIntent2, String paramString, int paramInt)
  {
    if (!paramIntent1.getData().toString().startsWith("content://com.google.android.gallery3d"))
    {
      String str = b(paramActivity, paramIntent1, paramString);
      if (!cj.hX(str))
      {
        paramIntent2.putExtra("CropImage_ImgPath", str);
        paramActivity.startActivityForResult(paramIntent2, paramInt);
      }
      return;
    }
    i locali = new i(paramIntent1, paramActivity, paramString, paramIntent2, paramInt);
    Integer[] arrayOfInteger = new Integer[1];
    arrayOfInteger[0] = Integer.valueOf(0);
    locali.execute(arrayOfInteger);
  }

  public static String r(String paramString, Bitmap paramBitmap)
  {
    try
    {
      String str1 = f.h(DateFormat.format("yyyy-MM-dd-HH-mm-ss", System.currentTimeMillis()).toString().getBytes()) + ".jpg";
      String str2 = paramString + str1;
      File localFile = new File(str2);
      if (!localFile.exists())
        localFile.createNewFile();
      BufferedOutputStream localBufferedOutputStream = new BufferedOutputStream(new FileOutputStream(localFile));
      paramBitmap.compress(Bitmap.CompressFormat.PNG, 100, localBufferedOutputStream);
      localBufferedOutputStream.close();
      aa.d("MicroMsg.AsyncObtainImage", "photo image from data, path:" + str2);
      return str2;
    }
    catch (IOException localIOException)
    {
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.h
 * JD-Core Version:    0.6.2
 */