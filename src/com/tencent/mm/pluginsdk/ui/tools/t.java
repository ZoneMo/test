package com.tencent.mm.pluginsdk.ui.tools;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.webkit.MimeTypeMap;
import com.tencent.mm.sdk.platformtools.aa;
import java.io.File;

public final class t
{
  public Context context;
  public String filePath;
  public int fuA = 0;
  public Uri uri;

  public t(Context paramContext, Uri paramUri)
  {
    this.context = paramContext;
    this.uri = paramUri;
    if (paramUri == null)
    {
      aa.e("MicroMsg.UriFileHelper", "initFileTypeAndPath uri == null");
      return;
    }
    if (this.context == null)
    {
      aa.e("MicroMsg.UriFileHelper", "initFileTypeAndPath context == null");
      return;
    }
    MimeTypeMap localMimeTypeMap = MimeTypeMap.getSingleton();
    String str2 = this.context.getContentResolver().getType(paramUri);
    String str3;
    if ((str2 == null) || (str2.length() <= 0))
    {
      if (paramUri.getPath() != null)
      {
        File localFile = new File(paramUri.getPath());
        if (!localFile.exists())
        {
          aa.e("MicroMsg.UriFileHelper", "File is null");
          this.fuA = 0;
          return;
        }
        this.filePath = localFile.getAbsolutePath();
        int i = this.filePath.lastIndexOf(".");
        if ((i == -1) || (i >= -1 + this.filePath.length()))
          this.fuA = 1;
        for (str3 = str2; (str3 == null) || (this.filePath == null); str3 = localMimeTypeMap.getMimeTypeFromExtension(this.filePath.substring(i + 1)))
        {
          this.fuA = 0;
          return;
        }
      }
    }
    else
    {
      if (this.context != null)
        break label234;
      aa.e("MicroMsg.UriFileHelper", "getFilePath context == null");
    }
    while (true)
    {
      this.filePath = str1;
      str3 = str2;
      break;
      label234: Cursor localCursor = this.context.getContentResolver().query(paramUri, null, null, null, null);
      if (localCursor == null)
      {
        aa.e("MicroMsg.UriFileHelper", "getFilePath : fail, cursor is null");
        str1 = null;
      }
      else if ((localCursor.getCount() <= 0) || (!localCursor.moveToFirst()))
      {
        localCursor.close();
        aa.e("MicroMsg.UriFileHelper", "getFilePath : fail, cursor getCount is 0 or moveToFirst fail");
        str1 = null;
      }
      else
      {
        int j = localCursor.getColumnIndex("_data");
        if (j == -1)
        {
          localCursor.close();
          aa.e("MicroMsg.UriFileHelper", "getFilePath : columnIdx is -1, column with columnName = _data does not exist");
          str1 = null;
        }
        else
        {
          str1 = localCursor.getString(j);
          localCursor.close();
        }
      }
    }
    if (str3.contains("image"))
      this.fuA = 3;
    while (true)
    {
      Object[] arrayOfObject = new Object[5];
      arrayOfObject[0] = str3;
      arrayOfObject[1] = this.filePath;
      arrayOfObject[2] = Integer.valueOf(this.fuA);
      arrayOfObject[3] = str3;
      arrayOfObject[4] = paramUri.toString();
      aa.e("MicroMsg.UriFileHelper", "MimeType[%s], filePath = [%s], fileType = [%s], type = [%s], Uri[%s]", arrayOfObject);
      return;
      if (str3.contains("video"))
        this.fuA = 4;
      else if (str3.contains("audio"))
        this.fuA = 5;
      else if (str3.contains("mm_item"))
        this.fuA = 2;
      else
        this.fuA = 1;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.tools.t
 * JD-Core Version:    0.6.2
 */