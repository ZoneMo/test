package com.tencent.mm.plugin.search.model;

import android.database.Cursor;
import com.tencent.mm.ap.i;
import java.util.regex.Pattern;

final class w extends af
{
  private String ehv;
  private int ehw = 0;

  public w(b paramb, String paramString)
  {
    this.ehv = paramString;
  }

  public final boolean execute()
  {
    b.a(this.egV).beginTransaction();
    b.a(this.egV).mI(this.ehv);
    i locali = b.c(this.egV);
    String[] arrayOfString1 = new String[1];
    arrayOfString1[0] = this.ehv;
    Cursor localCursor = locali.rawQuery("SELECT memberlist FROM chatroom WHERE chatroomname=?", arrayOfString1);
    if (localCursor.moveToFirst())
    {
      String[] arrayOfString2 = a.egG.split(localCursor.getString(0));
      b.a(this.egV).a(this.ehv, arrayOfString2);
      this.ehw = arrayOfString2.length;
    }
    localCursor.close();
    b.a(this.egV).commit();
    return true;
  }

  public final String toString()
  {
    return "UpdateChatroomIndex(\"" + this.ehv + "\") [" + this.ehw + "]";
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.w
 * JD-Core Version:    0.6.2
 */