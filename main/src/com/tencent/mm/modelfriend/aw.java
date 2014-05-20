package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.ai;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ch;
import java.util.List;

public final class aw extends ai
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS qqlist ( qq long  PRIMARY KEY , wexinstatus int  , groupid int  , username text  , nickname text  , pyinitial text  , quanpin text  , qqnickname text  , qqpyinitial text  , qqquanpin text  , qqremark text  , qqremarkpyinitial text  , qqremarkquanpin text  , reserved1 text  , reserved2 text  , reserved3 int  , reserved4 int  ) ", "CREATE INDEX IF NOT EXISTS groupid_index ON qqlist ( groupid ) " };
  private final i cjB;

  public aw(i parami)
  {
    this.cjB = parami;
  }

  public final av C(long paramLong)
  {
    String str = "select qqlist.qq,qqlist.wexinstatus,qqlist.groupid,qqlist.username,qqlist.nickname,qqlist.pyinitial,qqlist.quanpin,qqlist.qqnickname,qqlist.qqpyinitial,qqlist.qqquanpin,qqlist.qqremark,qqlist.qqremarkpyinitial,qqlist.qqremarkquanpin,qqlist.reserved1,qqlist.reserved2,qqlist.reserved3,qqlist.reserved4 from qqlist  where qqlist.qq = \"" + paramLong + "\"";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor == null)
      return null;
    boolean bool = localCursor.moveToFirst();
    av localav = null;
    if (bool)
    {
      localav = new av();
      localav.convertFrom(localCursor);
    }
    localCursor.close();
    return localav;
  }

  public final int a(long paramLong, av paramav)
  {
    ContentValues localContentValues = paramav.Ae();
    int i = localContentValues.size();
    int j = 0;
    if (i > 0)
    {
      i locali = this.cjB;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      j = locali.update("qqlist", localContentValues, "qq=?", arrayOfString);
    }
    if (j > 0)
      Ei();
    return j;
  }

  public final boolean a(av paramav)
  {
    if (paramav == null);
    ContentValues localContentValues;
    do
    {
      return false;
      aa.d("MicroMsg.QQListStorage", "insert: name:" + paramav.Ah());
      paramav.vg();
      localContentValues = paramav.Ae();
    }
    while ((int)this.cjB.insert("qqlist", "qq", localContentValues) == -1);
    Ei();
    return true;
  }

  public final boolean du(int paramInt)
  {
    aa.d("MicroMsg.QQListStorage", "delete: GroupID:" + paramInt);
    i locali = this.cjB;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    return locali.delete("qqlist", "groupid= ?", arrayOfString) > 0;
  }

  public final Cursor dv(int paramInt)
  {
    aa.d("MicroMsg.QQListStorage", "getByGroupID: GroupID:" + paramInt);
    String str = "select qqlist.qq,qqlist.wexinstatus,qqlist.groupid,qqlist.username,qqlist.nickname,qqlist.pyinitial,qqlist.quanpin,qqlist.qqnickname,qqlist.qqpyinitial,qqlist.qqquanpin,qqlist.qqremark,qqlist.qqremarkpyinitial,qqlist.qqremarkquanpin,qqlist.reserved1,qqlist.reserved2,qqlist.reserved3,qqlist.reserved4 from qqlist  where qqlist.groupid = \"" + paramInt + "\" order by  case when wexinstatus = 1 then 0  when wexinstatus = 65536 then 1  when wexinstatus = 2 then 2 else 3 end ";
    return this.cjB.rawQuery(str, null);
  }

  public final av fM(String paramString)
  {
    String str = "select qqlist.qq,qqlist.wexinstatus,qqlist.groupid,qqlist.username,qqlist.nickname,qqlist.pyinitial,qqlist.quanpin,qqlist.qqnickname,qqlist.qqpyinitial,qqlist.qqquanpin,qqlist.qqremark,qqlist.qqremarkpyinitial,qqlist.qqremarkquanpin,qqlist.reserved1,qqlist.reserved2,qqlist.reserved3,qqlist.reserved4 from qqlist  where qqlist.username = \"" + paramString + "\"";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor == null)
      return null;
    boolean bool = localCursor.moveToFirst();
    av localav = null;
    if (bool)
    {
      localav = new av();
      localav.convertFrom(localCursor);
    }
    localCursor.close();
    return localav;
  }

  public final Cursor g(int paramInt, String paramString)
  {
    aa.d("MicroMsg.QQListStorage", "getByGroupID: GroupID:" + paramInt + ", searchby:" + paramString);
    StringBuilder localStringBuilder = new StringBuilder();
    localStringBuilder.append("select qqlist.qq,qqlist.wexinstatus,qqlist.groupid,qqlist.username,qqlist.nickname,qqlist.pyinitial,qqlist.quanpin,qqlist.qqnickname,qqlist.qqpyinitial,qqlist.qqquanpin,qqlist.qqremark,qqlist.qqremarkpyinitial,qqlist.qqremarkquanpin,qqlist.reserved1,qqlist.reserved2,qqlist.reserved3,qqlist.reserved4 from qqlist  where qqlist.groupid = \"" + paramInt + "\" and ( ");
    localStringBuilder.append("qqlist.qq like '%" + paramString + "%' or ");
    localStringBuilder.append("qqlist.username like '%" + paramString + "%' or ");
    localStringBuilder.append("qqlist.nickname like '%" + paramString + "%' or ");
    localStringBuilder.append("qqlist.pyinitial like '%" + paramString + "%' or ");
    localStringBuilder.append("qqlist.quanpin like '%" + paramString + "%' or ");
    localStringBuilder.append("qqlist.qqnickname like '%" + paramString + "%' or ");
    localStringBuilder.append("qqlist.qqpyinitial like '%" + paramString + "%' or ");
    localStringBuilder.append("qqlist.qqquanpin like '%" + paramString + "%' or ");
    localStringBuilder.append("qqlist.qqremark like '%" + paramString + "%' )");
    localStringBuilder.append(" order by  case when wexinstatus = 1 then 0  when wexinstatus = 65536 then 1  when wexinstatus = 2 then 2 else 3 end ");
    return this.cjB.rawQuery(localStringBuilder.toString(), null);
  }

  public final boolean s(List paramList)
  {
    if ((paramList == null) || (paramList.size() <= 0))
      return false;
    ch localch = new ch("MicroMsg.QQListStorage", "BatchResetGroupQQ transaction");
    localch.addSplit("transation begin");
    long l = this.cjB.ca(Thread.currentThread().getId());
    int i = 0;
    try
    {
      while (i < paramList.size())
      {
        av localav = (av)paramList.get(i);
        if (localav != null)
        {
          localav.vg();
          ContentValues localContentValues = localav.Ae();
          int j = (int)this.cjB.insert("qqlist", "qq", localContentValues);
          aa.d("MicroMsg.QQListStorage", "uin:" + localav.Af() + " res:" + j);
          if (j == -1)
            break;
        }
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
        aa.e("MicroMsg.QQListStorage", localException.getMessage());
        boolean bool = false;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.aw
 * JD-Core Version:    0.6.2
 */