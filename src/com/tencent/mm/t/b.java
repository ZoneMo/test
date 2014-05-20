package com.tencent.mm.t;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.ai;
import java.util.ArrayList;
import java.util.List;

public final class b extends ai
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS getcontactinfo ( username text  PRIMARY KEY , inserttime long  , type int  , lastgettime int  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) " };
  private i cjB;

  public b(i parami)
  {
    this.cjB = parami;
  }

  public final List Au()
  {
    Cursor localCursor = this.cjB.rawQuery("select getcontactinfo.username,getcontactinfo.inserttime,getcontactinfo.type,getcontactinfo.lastgettime,getcontactinfo.reserved1,getcontactinfo.reserved2,getcontactinfo.reserved3,getcontactinfo.reserved4 from getcontactinfo  ", null);
    if (localCursor == null)
      return null;
    int i = localCursor.getCount();
    if (i <= 0)
    {
      localCursor.close();
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    for (int j = 0; j < i; j++)
    {
      localCursor.moveToPosition(j);
      a locala = new a();
      locala.convertFrom(localCursor);
      localArrayList.add(locala);
    }
    localCursor.close();
    return localArrayList;
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
    while ((int)this.cjB.replace("getcontactinfo", "username", localContentValues) == -1);
    th(parama.getUsername());
    return true;
  }

  public final boolean fN(String paramString)
  {
    if (this.cjB.delete("getcontactinfo", "username= ?", new String[] { paramString }) > 0)
    {
      th(paramString);
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.t.b
 * JD-Core Version:    0.6.2
 */