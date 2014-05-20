package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.ai;
import com.tencent.mm.sdk.platformtools.cj;

public final class af extends ai
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS invitefriendopen ( username text  PRIMARY KEY , friendtype int  , updatetime int  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) " };
  private i cjB;

  public af(i parami)
  {
    this.cjB = parami;
  }

  public final boolean a(ae paramae)
  {
    if (fD(paramae.getUsername()))
    {
      paramae.vg();
      ContentValues localContentValues2 = paramae.oa();
      i locali = this.cjB;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = paramae.getUsername();
      if (locali.update("invitefriendopen", localContentValues2, "username=?", arrayOfString) <= 0);
    }
    ContentValues localContentValues1;
    do
    {
      return true;
      return false;
      if (paramae == null)
        break;
      paramae.vg();
      localContentValues1 = paramae.oa();
    }
    while ((int)this.cjB.insert("invitefriendopen", "username", localContentValues1) != -1);
    return false;
  }

  public final boolean fD(String paramString)
  {
    String str = "select invitefriendopen.username,invitefriendopen.friendtype,invitefriendopen.updatetime,invitefriendopen.reserved1,invitefriendopen.reserved2,invitefriendopen.reserved3,invitefriendopen.reserved4 from invitefriendopen   where invitefriendopen.username = \"" + cj.hR(paramString) + "\"";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor.getCount() > 0);
    for (boolean bool = true; ; bool = false)
    {
      localCursor.close();
      return bool;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.af
 * JD-Core Version:    0.6.2
 */