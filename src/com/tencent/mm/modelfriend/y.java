package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.ai;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ch;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.List;

public final class y extends ai
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS friend_ext ( username text  PRIMARY KEY , sex int  , personalcard int  , province text  , city text  , signature text  , reserved1 text  , reserved2 text  , reserved3 text  , reserved4 text  , reserved5 int  , reserved6 int  , reserved7 int  , reserved8 int  ) " };
  private i cjB;

  public y(i parami)
  {
    this.cjB = parami;
  }

  public final boolean a(x paramx)
  {
    boolean bool1 = true;
    String str1 = paramx.getUsername();
    String str2 = "select friend_ext.username,friend_ext.sex,friend_ext.personalcard,friend_ext.province,friend_ext.city,friend_ext.signature from friend_ext   where friend_ext.username = \"" + cj.hR(str1) + "\"";
    Cursor localCursor = this.cjB.rawQuery(str2, null);
    boolean bool2;
    ContentValues localContentValues2;
    i locali;
    String[] arrayOfString;
    if (localCursor.getCount() > 0)
    {
      bool2 = bool1;
      localCursor.close();
      if (!bool2)
        break label143;
      if (paramx == null)
        break label138;
      localContentValues2 = paramx.oa();
      if (localContentValues2.size() <= 0)
        break label180;
      locali = this.cjB;
      arrayOfString = new String[bool1];
      arrayOfString[0] = "username";
    }
    label138: label143: label180: for (int i = locali.update("friend_ext", localContentValues2, "username=?", arrayOfString); ; i = 0)
    {
      if (i > 0);
      while (true)
      {
        Ei();
        return bool1;
        bool2 = false;
        break;
        bool1 = false;
        continue;
        if (paramx != null)
        {
          paramx.vg();
          ContentValues localContentValues1 = paramx.oa();
          if ((int)this.cjB.insert("friend_ext", "username", localContentValues1) != -1);
        }
        else
        {
          bool1 = false;
        }
      }
    }
  }

  public final x fA(String paramString)
  {
    String str = "select friend_ext.username,friend_ext.sex,friend_ext.personalcard,friend_ext.province,friend_ext.city,friend_ext.signature from friend_ext   where friend_ext.username = \"" + cj.hR(paramString) + "\"";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor == null)
      return null;
    boolean bool = localCursor.moveToFirst();
    x localx = null;
    if (bool)
    {
      localx = new x();
      localx.convertFrom(localCursor);
    }
    localCursor.close();
    return localx;
  }

  public final boolean i(List paramList)
  {
    if ((paramList == null) || (paramList.size() <= 0))
      return false;
    ch localch = new ch("MicroMsg.FriendExtStorage", "batchSetFriendExt transaction");
    localch.addSplit("transation begin");
    long l = this.cjB.ca(Thread.currentThread().getId());
    int i = 0;
    try
    {
      while (i < paramList.size())
      {
        x localx = (x)paramList.get(i);
        if (localx != null)
          a(localx);
        i++;
      }
      bool = true;
      this.cjB.cb(l);
      localch.addSplit("transation end");
      localch.dumpToLog();
      Ei();
      return bool;
    }
    catch (Exception localException)
    {
      while (true)
      {
        aa.e("MicroMsg.FriendExtStorage", localException.getMessage());
        boolean bool = false;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.y
 * JD-Core Version:    0.6.2
 */