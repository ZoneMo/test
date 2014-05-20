package com.tencent.mm.model;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.ai;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.n;
import com.tencent.mm.storage.o;
import java.util.ArrayList;
import java.util.List;
import junit.framework.Assert;

public final class cl extends ai
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS readerappnews1 ( tweetid text  PRIMARY KEY , time long  , type int  , name text  , title text  , url text  , shorturl text  , longurl text  , pubtime long  , sourcename text  , sourceicon text  , istop int  , cover text  , digest text  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) ", "CREATE TABLE IF NOT EXISTS readerappweibo ( tweetid text  PRIMARY KEY , time long  , type int  , name text  , title text  , url text  , shorturl text  , longurl text  , pubtime long  , sourcename text  , sourceicon text  , istop int  , cover text  , digest text  , reserved1 int  , reserved2 int  , reserved3 text  , reserved4 text  ) ", "CREATE INDEX IF NOT EXISTS  readerapptime ON readerappnews1 ( time )", "CREATE INDEX IF NOT EXISTS  readerapptime ON readerappweibo ( time )" };
  private i cjB;

  public cl(i parami)
  {
    this.cjB = parami;
  }

  private static String cy(int paramInt)
  {
    if (paramInt == 20)
      return "readerappnews1";
    if (paramInt == 11)
      return "readerappweibo";
    Assert.assertTrue("INFO TYPE NEITHER NEWS NOR WEIBO", false);
    return null;
  }

  private static String dK(String paramString)
  {
    return "select tweetid,time,type,name,title,url,shorturl,longurl,pubtime,sourcename,sourceicon,istop,cover,digest,reserved1,reserved2,reserved3,reserved4 from " + paramString + "  ";
  }

  public final Cursor D(int paramInt1, int paramInt2)
  {
    String str = "SELECT time from " + cy(paramInt2) + " GROUP BY time ORDER BY time ASC  LIMIT " + paramInt1 + " offset (SELECT COUNT(*) FROM (SELECT COUNT(*) FROM " + cy(paramInt2) + " GROUP BY time)) -" + paramInt1;
    return this.cjB.rawQuery(str, null);
  }

  public final List a(long paramLong, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    String str = dK(cy(paramInt)) + " where time = " + paramLong + " order by istop desc , tweetid asc ";
    aa.d("MicroMsg.ReaderAppInfoStorage", "getInfobyGroup :" + str);
    Cursor localCursor = this.cjB.rawQuery(str, null);
    int i = localCursor.getCount();
    if (i <= 0)
    {
      localCursor.close();
      return localArrayList;
    }
    for (int j = 0; j < i; j++)
    {
      localCursor.moveToPosition(j);
      ck localck = new ck();
      localck.convertFrom(localCursor);
      localArrayList.add(localck);
    }
    localCursor.close();
    return localArrayList;
  }

  public final boolean a(ck paramck)
  {
    if (paramck == null);
    ContentValues localContentValues;
    do
    {
      return false;
      paramck.vg();
      localContentValues = paramck.oa();
    }
    while ((int)this.cjB.insert(cy(paramck.getType()), "tweetid", localContentValues) == -1);
    return true;
  }

  public final void b(long paramLong, int paramInt)
  {
    String str1 = "delete from " + cy(paramInt) + " where time = " + paramLong;
    aa.e("MicroMsg.ReaderAppInfoStorage", "deleteGroup:%s", new Object[] { str1 });
    Cursor localCursor;
    if (this.cjB.aQ(cy(paramInt), str1))
    {
      String str2 = dK(cy(paramInt)) + " where istop = 1  group by time ORDER BY time DESC  limit 2";
      aa.d("MicroMsg.ReaderAppInfoStorage", "reset conversation, sql is %s", new Object[] { str2 });
      localCursor = this.cjB.rawQuery(str2, null);
      if (localCursor.getCount() != 0)
        break label198;
      localCursor.close();
      n localn2 = new n();
      localn2.setUsername(ck.cv(paramInt));
      localn2.setContent("");
      localn2.o(0L);
      localn2.bZ(0);
      localn2.bY(0);
      be.uz().sx().a(localn2, ck.cv(paramInt));
    }
    while (true)
    {
      Ei();
      return;
      label198: localCursor.moveToFirst();
      ck localck = new ck();
      localck.convertFrom(localCursor);
      localCursor.close();
      n localn1 = new n();
      localn1.setUsername(ck.cv(paramInt));
      localn1.setContent(localck.getTitle());
      localn1.o(localck.getTime());
      localn1.bZ(0);
      localn1.bY(0);
      be.uz().sx().a(localn1, ck.cv(paramInt));
    }
  }

  public final List cA(int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    String str = dK(cy(20)) + " where reserved2 = " + paramInt;
    aa.d("MicroMsg.ReaderAppInfoStorage", "getInfoListByMsgSvrID :" + str);
    Cursor localCursor = this.cjB.rawQuery(str, null);
    int i = localCursor.getCount();
    if (i <= 0)
    {
      localCursor.close();
      return localArrayList;
    }
    for (int j = 0; j < i; j++)
    {
      localCursor.moveToPosition(j);
      ck localck = new ck();
      localck.convertFrom(localCursor);
      localArrayList.add(localck);
    }
    localCursor.close();
    return localArrayList;
  }

  public final void cB(int paramInt)
  {
    n localn = be.uz().sx().tZ(ck.cv(paramInt));
    if ((localn == null) || (!localn.getUsername().equals(ck.cv(paramInt))));
    String str;
    do
    {
      return;
      localn.setUsername(ck.cv(paramInt));
      localn.setContent("");
      localn.bZ(0);
      localn.bY(0);
      be.uz().sx().a(localn, ck.cv(paramInt));
      str = "delete from " + cy(paramInt);
    }
    while (!this.cjB.aQ(cy(paramInt), str));
    Ei();
  }

  public final int cz(int paramInt)
  {
    String str = "select count(*) from (SELECT count(*) FROM " + cy(paramInt) + " group by time)";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    boolean bool = localCursor.moveToLast();
    int i = 0;
    if (bool)
      i = localCursor.getInt(0);
    localCursor.close();
    return i;
  }

  public final void vr()
  {
    Ei();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.model.cl
 * JD-Core Version:    0.6.2
 */