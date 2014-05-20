package com.tencent.mm.m;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.ai;
import com.tencent.mm.sdk.platformtools.cj;

public final class w extends ai
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS hdheadimginfo ( username text  PRIMARY KEY , imgwidth int  , imgheigth int  , imgformat text  , totallen int  , startpos int  , headimgtype int  , reserved1 text  , reserved2 text  , reserved3 int  , reserved4 int  ) " };
  private i cjB;

  public w(i parami)
  {
    this.cjB = parami;
  }

  public final int a(String paramString, v paramv)
  {
    ContentValues localContentValues = paramv.oa();
    return this.cjB.update("hdheadimginfo", localContentValues, "username=?", new String[] { paramString });
  }

  public final boolean a(v paramv)
  {
    if (paramv == null);
    ContentValues localContentValues;
    do
    {
      return false;
      paramv.vg();
      localContentValues = paramv.oa();
    }
    while ((int)this.cjB.insert("hdheadimginfo", "username", localContentValues) == -1);
    return true;
  }

  public final v en(String paramString)
  {
    String str = "select hdheadimginfo.username,hdheadimginfo.imgwidth,hdheadimginfo.imgheigth,hdheadimginfo.imgformat,hdheadimginfo.totallen,hdheadimginfo.startpos,hdheadimginfo.headimgtype,hdheadimginfo.reserved1,hdheadimginfo.reserved2,hdheadimginfo.reserved3,hdheadimginfo.reserved4 from hdheadimginfo   where hdheadimginfo.username = \"" + cj.hR(paramString) + "\"";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor == null)
      return null;
    boolean bool = localCursor.moveToFirst();
    v localv = null;
    if (bool)
    {
      localv = new v();
      localv.convertFrom(localCursor);
    }
    localCursor.close();
    return localv;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.m.w
 * JD-Core Version:    0.6.2
 */