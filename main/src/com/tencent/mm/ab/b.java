package com.tencent.mm.ab;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.ai;
import com.tencent.mm.sdk.platformtools.cj;
import junit.framework.Assert;

public final class b extends ai
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS chattingbginfo ( username text  PRIMARY KEY , bgflag int  , path text  , reserved1 text  , reserved2 text  , reserved3 int  , reserved4 int  ) " };
  private i cjB;

  public b(i parami)
  {
    this.cjB = parami;
  }

  public final Cursor BD()
  {
    return this.cjB.rawQuery("select chattingbginfo.username,chattingbginfo.bgflag,chattingbginfo.path,chattingbginfo.reserved1,chattingbginfo.reserved2,chattingbginfo.reserved3,chattingbginfo.reserved4 from chattingbginfo  ", null);
  }

  public final boolean a(a parama)
  {
    if (parama == null);
    ContentValues localContentValues;
    do
    {
      return false;
      parama.vg();
      localContentValues = parama.oa();
    }
    while ((int)this.cjB.insert("chattingbginfo", "username", localContentValues) == -1);
    th(parama.getUsername());
    return true;
  }

  public final boolean b(a parama)
  {
    if (parama != null);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      ContentValues localContentValues = parama.oa();
      if (localContentValues.size() <= 0)
        break;
      i locali = this.cjB;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = parama.getUsername();
      if (locali.update("chattingbginfo", localContentValues, "username= ?", arrayOfString) <= 0)
        break;
      th(parama.getUsername());
      return true;
    }
    return false;
  }

  public final a gc(String paramString)
  {
    String str = "select chattingbginfo.username,chattingbginfo.bgflag,chattingbginfo.path,chattingbginfo.reserved1,chattingbginfo.reserved2,chattingbginfo.reserved3,chattingbginfo.reserved4 from chattingbginfo   where chattingbginfo.username = \"" + cj.hR(paramString) + "\"";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor == null)
      return null;
    boolean bool = localCursor.moveToFirst();
    a locala = null;
    if (bool)
    {
      locala = new a();
      locala.convertFrom(localCursor);
    }
    localCursor.close();
    return locala;
  }

  public final boolean zh()
  {
    return this.cjB.delete("chattingbginfo", null, null) > 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ab.b
 * JD-Core Version:    0.6.2
 */