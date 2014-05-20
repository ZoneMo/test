package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.ai;
import com.tencent.mm.sdk.platformtools.aa;
import java.util.HashMap;
import java.util.Map;
import junit.framework.Assert;

public final class au extends ai
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS qqgroup ( grouopid int PRIMARY KEY,membernum int,weixinnum int,insert_time int,lastupdate_time int,needupdate int,updatekey text,groupname text,reserved1 text ,reserved2 text ,reserved3 int ,reserved4 int )" };
  private final i cjB;

  public au(i parami)
  {
    this.cjB = parami;
  }

  public final Cursor Ad()
  {
    return this.cjB.rawQuery("select qqgroup.grouopid,qqgroup.membernum,qqgroup.weixinnum,qqgroup.insert_time,qqgroup.lastupdate_time,qqgroup.needupdate,qqgroup.updatekey,qqgroup.groupname from qqgroup ", null);
  }

  public final boolean a(at paramat)
  {
    if (paramat == null);
    ContentValues localContentValues;
    do
    {
      return false;
      aa.d("MicroMsg.QQGroupStorage", "insert: name:" + paramat.Ac());
      paramat.cL(-1);
      localContentValues = paramat.zW();
    }
    while ((int)this.cjB.insert("qqgroup", "grouopid", localContentValues) < 0);
    Ei();
    return true;
  }

  public final boolean b(at paramat)
  {
    boolean bool;
    ContentValues localContentValues;
    if (paramat != null)
    {
      bool = true;
      Assert.assertTrue(bool);
      localContentValues = paramat.zW();
      if (localContentValues.size() > 0)
        break label36;
      aa.e("MicroMsg.QQGroupStorage", "update failed, no values set");
    }
    label36: i locali;
    String[] arrayOfString;
    do
    {
      return false;
      bool = false;
      break;
      locali = this.cjB;
      arrayOfString = new String[1];
      arrayOfString[0] = paramat.zX();
    }
    while (locali.update("qqgroup", localContentValues, "grouopid= ?", arrayOfString) <= 0);
    Ei();
    return true;
  }

  public final at dq(int paramInt)
  {
    Cursor localCursor = this.cjB.rawQuery("select qqgroup.grouopid,qqgroup.membernum,qqgroup.weixinnum,qqgroup.insert_time,qqgroup.lastupdate_time,qqgroup.needupdate,qqgroup.updatekey,qqgroup.groupname from qqgroup  where grouopid = " + paramInt, null);
    if (localCursor == null)
      return null;
    boolean bool = localCursor.moveToFirst();
    at localat = null;
    if (bool)
    {
      localat = new at();
      localat.convertFrom(localCursor);
    }
    localCursor.close();
    return localat;
  }

  public final boolean dr(int paramInt)
  {
    aa.d("MicroMsg.QQGroupStorage", "delete: id:" + paramInt);
    i locali = this.cjB;
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    if (locali.delete("qqgroup", "grouopid= ?", arrayOfString) > 0)
    {
      Ei();
      return true;
    }
    return false;
  }

  public final Map getAll()
  {
    Cursor localCursor = Ad();
    if (localCursor == null)
      return null;
    if (localCursor.getCount() <= 0)
    {
      localCursor.close();
      return null;
    }
    HashMap localHashMap = new HashMap();
    for (int i = 0; i < localCursor.getCount(); i++)
    {
      localCursor.moveToPosition(i);
      at localat = new at();
      localat.convertFrom(localCursor);
      localHashMap.put(Integer.valueOf(localat.zX()), localat);
    }
    localCursor.close();
    return localHashMap;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.au
 * JD-Core Version:    0.6.2
 */