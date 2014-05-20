package com.tencent.mm.pluginsdk.model.app;

import android.database.Cursor;
import com.tencent.mm.sdk.e.af;
import com.tencent.mm.sdk.e.ah;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.List;

public final class b extends ah
{
  public static final String[] cjC = arrayOfString;
  private af crf;

  static
  {
    String[] arrayOfString = new String[1];
    arrayOfString[0] = ah.a(a.cfX, "appattach");
  }

  public b(af paramaf)
  {
    super(paramaf, a.cfX, "appattach", null);
    this.crf = paramaf;
  }

  public final List AP()
  {
    int i = 0;
    Cursor localCursor = rawQuery("select *  , rowid  from appattach where status = 101", new String[0]);
    if (localCursor == null)
      return null;
    int j = localCursor.getCount();
    aa.d("MicroMsg.AppAttachInfoStorage", "getUnfinishInfo resCount:" + j);
    if (j == 0)
    {
      localCursor.close();
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    while (i < j)
    {
      localCursor.moveToPosition(i);
      a locala = new a();
      locala.convertFrom(localCursor);
      localArrayList.add(locala);
      i++;
    }
    localCursor.close();
    return localArrayList;
  }

  public final void br(long paramLong)
  {
    String str = " update appattach set status = 198 , lastModifyTime = " + cj.FC() + " where rowid = " + paramLong;
    this.crf.aQ("appattach", str);
    Ei();
  }

  public final a bs(long paramLong)
  {
    a locala = new a();
    locala.field_msgInfoId = paramLong;
    if (c(locala, new String[] { "msgInfoId" }))
      return locala;
    return null;
  }

  public final a qk(String paramString)
  {
    a locala = new a();
    locala.field_mediaSvrId = paramString;
    if (c(locala, new String[] { "mediaSvrId" }));
    while (c(locala, new String[] { "mediaId" }))
      return locala;
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.model.app.b
 * JD-Core Version:    0.6.2
 */