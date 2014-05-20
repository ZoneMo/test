package com.tencent.mm.storage;

import android.database.Cursor;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;

public final class ai extends com.tencent.mm.sdk.e.ah
{
  public static final String[] cjC = arrayOfString;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = com.tencent.mm.sdk.e.ah.a(ah.cfX, "FileDownloadInfo");
  }

  public ai(af paramaf)
  {
    super(paramaf, ah.cfX, "FileDownloadInfo", null);
  }

  public final Cursor aBQ()
  {
    return rawQuery("select * from FileDownloadInfo where status=8 or status=2", new String[0]);
  }

  public final ah by(long paramLong)
  {
    ah localah = null;
    if (paramLong < 0L)
      aa.e("MicroMsg.FileDownloadInfoStorage", "download id is not avaiable");
    Cursor localCursor;
    do
    {
      do
      {
        return localah;
        localCursor = rawQuery("select * from FileDownloadInfo where downloadId=" + paramLong, new String[0]);
        localah = null;
      }
      while (localCursor == null);
      boolean bool = localCursor.moveToFirst();
      localah = null;
      if (bool)
      {
        localah = new ah();
        localah.convertFrom(localCursor);
      }
    }
    while (localCursor == null);
    localCursor.close();
    return localah;
  }

  public final ah qv(String paramString)
  {
    ah localah = null;
    if (cj.hX(paramString))
      aa.e("MicroMsg.FileDownloadInfoStorage", "spKey is null");
    Cursor localCursor;
    do
    {
      do
      {
        return localah;
        localCursor = rawQuery("select * from FileDownloadInfo where downloadKey=\"" + paramString + "\" order by downloadId desc", new String[0]);
        localah = null;
      }
      while (localCursor == null);
      boolean bool = localCursor.moveToFirst();
      localah = null;
      if (bool)
      {
        localah = new ah();
        localah.convertFrom(localCursor);
      }
    }
    while (localCursor == null);
    localCursor.close();
    return localah;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.ai
 * JD-Core Version:    0.6.2
 */