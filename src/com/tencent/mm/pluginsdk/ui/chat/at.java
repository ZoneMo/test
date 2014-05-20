package com.tencent.mm.pluginsdk.ui.chat;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.provider.MediaStore.Images.Media;
import android.provider.MediaStore.Images.Thumbnails;
import com.tencent.mm.a.c;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;

final class at
{
  private ContentResolver cwS;
  protected Context mContext;

  protected at(Context paramContext)
  {
    this.mContext = paramContext;
    this.cwS = this.mContext.getContentResolver();
  }

  private String qO(String paramString)
  {
    if (cj.hX(paramString))
    {
      aa.e("MicroMsg.RecentPhotoTips.ImageQuery", "null or nill imageId");
      return null;
    }
    String str1 = "image_id=\"" + paramString + "\"";
    Cursor localCursor;
    try
    {
      localCursor = this.cwS.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, null, str1, null, null);
      if (localCursor == null)
      {
        aa.e("MicroMsg.RecentPhotoTips.ImageQuery", "get cursor null:" + paramString);
        return null;
      }
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localException.toString();
      aa.b("MicroMsg.RecentPhotoTips.ImageQuery", "query thumb exception e : %s", arrayOfObject);
      return null;
    }
    String str2;
    if (localCursor.moveToFirst())
      do
        str2 = localCursor.getString(localCursor.getColumnIndexOrThrow("_data"));
      while (localCursor.moveToNext());
    while (true)
    {
      localCursor.close();
      return str2;
      str2 = null;
    }
  }

  public final ArrayList atb()
  {
    ArrayList localArrayList = new ArrayList();
    String[] arrayOfString = { "_id", "_data", "date_added" };
    cj.FD();
    Cursor localCursor;
    try
    {
      localCursor = this.cwS.query(MediaStore.Images.Media.EXTERNAL_CONTENT_URI, arrayOfString, null, null, "date_added desc limit 1");
      if (localCursor == null)
        return localArrayList;
    }
    catch (Exception localException)
    {
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = localException.toString();
      aa.b("MicroMsg.RecentPhotoTips.ImageQuery", "query photo exception e : %s", arrayOfObject);
      return null;
    }
    if (localCursor.moveToFirst());
    while (true)
    {
      String str1 = localCursor.getString(localCursor.getColumnIndexOrThrow("_id"));
      String str2 = localCursor.getString(localCursor.getColumnIndexOrThrow("_data"));
      String str3 = localCursor.getString(localCursor.getColumnIndexOrThrow("date_added"));
      String str4 = qO(str1);
      if ((cj.hX(str2)) || (!c.as(str2)))
        aa.e("MicroMsg.RecentPhotoTips.ImageQuery", "file not exist");
      while (!localCursor.moveToNext())
      {
        localCursor.close();
        return localArrayList;
        as localas = new as();
        localas.fqR = Long.parseLong(str1);
        localas.dlU = Long.parseLong(str3);
        if ((!cj.hX(str4)) && (c.as(str4)))
          localas.bOV = str4;
        if ((!cj.hX(str2)) && (c.as(str2)))
          localas.fqS = str2;
        if ((cj.hX(localas.fqS)) && (cj.hX(localas.fqS)))
          aa.e("MicroMsg.RecentPhotoTips.ImageQuery", "thumb file and orignal file both not exist");
        else
          localArrayList.add(localas);
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.chat.at
 * JD-Core Version:    0.6.2
 */