package com.tencent.mm.storage;

import android.content.ContentValues;
import android.database.Cursor;
import android.os.Looper;
import com.tencent.mm.a.d;
import com.tencent.mm.ap.i;
import com.tencent.mm.sdk.e.ai;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.Set;
import junit.framework.Assert;

public final class ap extends ai
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS message ( msgId INTEGER PRIMARY KEY, msgSvrId INTEGER , type INT, status INT, isSend INT, isShowTimer INTEGER, createTime INTEGER, talker TEXT, content TEXT, imgPath TEXT, reserved TEXT, lvbuffer BLOB )", "CREATE INDEX IF NOT EXISTS  messageIdIndex ON message ( msgId )", "CREATE INDEX IF NOT EXISTS  messageSvrIdIndex ON message ( msgSvrId )", "CREATE INDEX IF NOT EXISTS  messageTalkerIndex ON message ( talker )", "CREATE INDEX IF NOT EXISTS  messageTalkerStatusIndex ON message ( talker,status )", "CREATE INDEX IF NOT EXISTS  messageCreateTimeIndex ON message ( createTime )", "CREATE INDEX IF NOT EXISTS  messageCreateTaklerTimeIndex ON message ( talker,createTime )", "CREATE INDEX IF NOT EXISTS  messageSendCreateTimeIndex ON message ( status,isSend,createTime )", "CREATE INDEX IF NOT EXISTS  messageTalkerCreateTimeIsSendIndex ON message ( talker,isSend,createTime )", "CREATE TABLE IF NOT EXISTS qmessage ( msgId INTEGER PRIMARY KEY, msgSvrId INTEGER , type INT, status INT, isSend INT, isShowTimer INTEGER, createTime INTEGER, talker TEXT, content TEXT, imgPath TEXT, reserved TEXT, lvbuffer BLOB )", "CREATE INDEX IF NOT EXISTS  qmessageSvrIdIndex ON qmessage ( msgSvrId )", "CREATE INDEX IF NOT EXISTS  qmessageTalkerIndex ON qmessage ( talker )", "CREATE INDEX IF NOT EXISTS  qmessageTalerStatusIndex ON qmessage ( talker,status )", "CREATE INDEX IF NOT EXISTS  qmessageCreateTimeIndex ON qmessage ( createTime )", "CREATE INDEX IF NOT EXISTS  qmessageCreateTaklerTimeIndex ON qmessage ( talker,createTime )", "CREATE INDEX IF NOT EXISTS  qmessageSendCreateTimeIndex ON qmessage ( status,isSend,createTime )", "CREATE TABLE IF NOT EXISTS tmessage ( msgId INTEGER PRIMARY KEY, msgSvrId INTEGER , type INT, status INT, isSend INT, isShowTimer INTEGER, createTime INTEGER, talker TEXT, content TEXT, imgPath TEXT, reserved TEXT, lvbuffer BLOB )", "CREATE INDEX IF NOT EXISTS  tmessageSvrIdIndex ON tmessage ( msgSvrId )", "CREATE INDEX IF NOT EXISTS  tmessageTalkerIndex ON tmessage ( talker )", "CREATE INDEX IF NOT EXISTS  tmessageTalerStatusIndex ON tmessage ( talker,status )", "CREATE INDEX IF NOT EXISTS  tmessageCreateTimeIndex ON tmessage ( createTime )", "CREATE INDEX IF NOT EXISTS  tmessageCreateTaklerTimeIndex ON tmessage ( talker,createTime )", "CREATE INDEX IF NOT EXISTS  tmessageSendCreateTimeIndex ON tmessage ( status,isSend,createTime )", "CREATE TABLE IF NOT EXISTS bottlemessage ( msgId INTEGER PRIMARY KEY, msgSvrId INTEGER , type INT, status INT, isSend INT, isShowTimer INTEGER, createTime INTEGER, talker TEXT, content TEXT, imgPath TEXT, reserved TEXT, lvbuffer BLOB )", "CREATE INDEX IF NOT EXISTS  bmessageSvrIdIndex ON bottlemessage ( msgSvrId )", "CREATE INDEX IF NOT EXISTS  bmessageTalkerIndex ON bottlemessage ( talker )", "CREATE INDEX IF NOT EXISTS  bmessageTalerStatusIndex ON bottlemessage ( talker,status )", "CREATE INDEX IF NOT EXISTS  bmessageCreateTimeIndex ON bottlemessage ( createTime )", "CREATE INDEX IF NOT EXISTS  bmessageCreateTaklerTimeIndex ON bottlemessage ( talker,createTime )", "CREATE INDEX IF NOT EXISTS  bmessageSendCreateTimeIndex ON bottlemessage ( status,isSend,createTime )" };
  private final i cjB;
  private final long ggL = 86400L;
  private List gic;
  private final d gid = new d(100);
  private final d gie = new d(100);
  private final d gif = new d(100);
  private final d gig = new d(100);
  private final d gih = new d(100);
  private t gii = new t();
  private final com.tencent.mm.sdk.e.am gij = new aq(this);
  private boolean gik = false;
  private Map gil = new HashMap();

  public ap(i parami)
  {
    this.cjB = parami;
    a(parami, "message");
    a(parami, "qmessage");
    a(parami, "tmessage");
    a(parami, "bottlemessage");
    if (this.gic == null)
      this.gic = new LinkedList();
    this.gic.clear();
    this.gic.add(new as(1, "message", 1L, 1000000L));
    this.gic.add(new as(2, "qmessage", 1000001L, 1500000L));
    this.gic.add(new as(4, "tmessage", 1500001L, 2000000L));
    this.gic.add(new as(8, "bottlemessage", 2000001L, 2500000L));
    for (int i = 0; i < this.gic.size(); i++)
    {
      Cursor localCursor = this.cjB.rawQuery("select max(msgid) from " + ((as)this.gic.get(i)).getName(), null);
      if (localCursor.moveToFirst())
      {
        int j = localCursor.getInt(0);
        if (j >= ((as)this.gic.get(i)).aCV())
          ((as)this.gic.get(i)).dy(j + 1);
      }
      localCursor.close();
      aa.w("MicroMsg.MsgInfoStorage", "loading new msg id:" + ((as)this.gic.get(i)).aCV());
    }
  }

  private static void a(i parami, String paramString)
  {
    int i = 0;
    Cursor localCursor = parami.rawQuery("PRAGMA table_info( " + paramString + " )", null);
    while (localCursor.moveToNext())
    {
      int j = localCursor.getColumnIndex("name");
      if ((j >= 0) && ("lvbuffer".equalsIgnoreCase(localCursor.getString(j))))
        i = 1;
    }
    localCursor.close();
    if (i == 0)
      parami.aQ(paramString, "Alter table " + paramString + " add lvbuffer BLOB ");
  }

  private void a(at paramat)
  {
    if (this.gij.ah(paramat))
      this.gij.Ei();
  }

  private void a(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    long l1 = cj.FC() - 172800L;
    String str = "SELECT msgSvrId,createTime FROM " + paramString1 + " WHERE createTime > " + l1 * 1000L;
    if (!cj.hX(paramString2))
      str = str + " AND " + paramString2;
    Cursor localCursor = this.cjB.rawQuery(str, paramArrayOfString);
    if (localCursor != null);
    for (int i = localCursor.getCount(); ; i = 0)
    {
      if (i > 0)
      {
        ArrayList localArrayList1 = new ArrayList(i);
        ArrayList localArrayList2 = new ArrayList(i);
        localCursor.moveToFirst();
        while (!localCursor.isAfterLast())
        {
          int j = localCursor.getInt(0);
          long l2 = localCursor.getLong(1) / 1000L;
          localArrayList1.add(Integer.valueOf(j));
          localArrayList2.add(Long.valueOf(l2));
          localCursor.moveToNext();
        }
        this.gii.c(localArrayList1, localArrayList2);
      }
      if (localCursor != null)
        localCursor.close();
      return;
    }
  }

  private void aCR()
  {
    boolean bool;
    long l;
    HashSet localHashSet;
    if (this.gic != null)
    {
      bool = true;
      Assert.assertTrue(bool);
      l = cj.FD() - 600000L;
      localHashSet = new HashSet();
    }
    for (int i = 0; ; i++)
    {
      if (i >= this.gic.size())
        break label263;
      String str1 = "select talker from " + ((as)this.gic.get(i)).getName() + " where createTime<" + l + " and status=1";
      Cursor localCursor = this.cjB.rawQuery(str1, null);
      if (localCursor.moveToFirst())
        while (true)
        {
          String str2;
          Iterator localIterator;
          if (!localCursor.isAfterLast())
          {
            String str3 = localCursor.getString(0);
            localCursor.moveToNext();
            if (!cj.hX(str3))
            {
              localHashSet.add(str3);
              continue;
              bool = false;
              break;
            }
          }
        }
      localCursor.close();
      str2 = "update " + ((as)this.gic.get(i)).getName() + " set status=5 where createTime<" + l + " and status=1";
      this.cjB.aQ(((as)this.gic.get(i)).getName(), str2);
    }
    label263: localIterator = localHashSet.iterator();
    while (localIterator.hasNext())
    {
      Ei();
      a(new at((String)localIterator.next(), "update", null));
    }
  }

  private String bX(long paramLong)
  {
    for (int i = 0; i < this.gic.size(); i++)
      if (((as)this.gic.get(i)).bY(paramLong))
        return ((as)this.gic.get(i)).getName();
    return null;
  }

  private String vo(String paramString)
  {
    if ((paramString != null) && (paramString.length() > 0));
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      return vp(paramString).getName();
    }
  }

  private as vp(String paramString)
  {
    boolean bool1 = true;
    boolean bool2;
    String str;
    if ((paramString != null) && (paramString.length() > 0))
    {
      bool2 = bool1;
      Assert.assertTrue(bool2);
      str = ak.tW(paramString);
      if ((str == null) || (str.length() <= 0))
        break label104;
      label38: Assert.assertTrue(bool1);
    }
    for (int i = 0; ; i++)
    {
      if (i >= this.gic.size())
        break label115;
      if (str.equals(((as)this.gic.get(i)).getName()))
      {
        return (as)this.gic.get(i);
        bool2 = false;
        break;
        label104: bool1 = false;
        break label38;
      }
    }
    label115: Assert.assertTrue(false);
    return null;
  }

  public final int a(String paramString, long paramLong1, long paramLong2)
  {
    if (paramLong2 < paramLong1);
    while (true)
    {
      Object[] arrayOfObject1 = new Object[3];
      arrayOfObject1[0] = paramString;
      arrayOfObject1[1] = Long.valueOf(paramLong2);
      arrayOfObject1[2] = Long.valueOf(paramLong1);
      aa.e("MicroMsg.MsgInfoStorage", "talker %s, get count fromCreateTime %d, toCreateTime %d", arrayOfObject1);
      String str = "SELECT COUNT(msgId) FROM " + vo(paramString) + " WHERE talker= '" + cj.hR(paramString) + "' AND createTime >= " + paramLong2 + " AND createTime <= " + paramLong1;
      aa.d("MicroMsg.MsgInfoStorage", "get count sql: " + str);
      Cursor localCursor = this.cjB.rawQuery(str, null);
      if (localCursor == null)
        aa.w("MicroMsg.MsgInfoStorage", "get count error, cursor is null");
      while (!localCursor.moveToFirst())
        return 0;
      int i = localCursor.getInt(0);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(i);
      aa.e("MicroMsg.MsgInfoStorage", "result msg count %d", arrayOfObject2);
      localCursor.close();
      return i;
      long l = paramLong2;
      paramLong2 = paramLong1;
      paramLong1 = l;
    }
  }

  public final void a(int paramInt, ak paramak)
  {
    if (cj.hW(paramak.aCl()).length() > 0);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue("no talker set when update by svrid", bool);
      i locali = this.cjB;
      String str = vo(paramak.aCl());
      ContentValues localContentValues = paramak.oa();
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramInt);
      if (locali.update(str, localContentValues, "msgSvrId=?", arrayOfString) != 0)
      {
        Ei();
        a(new at(paramak.aCl(), "update", paramak));
      }
      return;
    }
  }

  public final void a(long paramLong, ak paramak)
  {
    i locali = this.cjB;
    String str = bX(paramLong);
    ContentValues localContentValues = paramak.oa();
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    if (locali.update(str, localContentValues, "msgId=?", arrayOfString) != 0)
    {
      Ei();
      a(new at(paramak.aCl(), "update", paramak));
    }
  }

  public final void a(ar paramar)
  {
    this.gij.remove(paramar);
  }

  public final void a(ar paramar, Looper paramLooper)
  {
    this.gij.a(paramar, paramLooper);
  }

  public final Cursor aAG()
  {
    if (this.gic.size() > 0);
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      return this.cjB.a(((as)this.gic.get(0)).getName(), null, "msgId=?", new String[] { "-1" }, null, null);
    }
  }

  public final void aCP()
  {
    this.gik = true;
    lock();
  }

  public final void aCQ()
  {
    this.gik = false;
    Iterator localIterator = this.gil.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      a((at)this.gil.get(str));
    }
    this.gil.clear();
    unlock();
    Ei();
  }

  public final List aCS()
  {
    aCR();
    ArrayList localArrayList = new ArrayList();
    boolean bool;
    if (this.gic != null)
    {
      bool = true;
      Assert.assertTrue(bool);
    }
    for (int i = 0; ; i++)
    {
      if (i >= this.gic.size())
        break label180;
      Cursor localCursor = this.cjB.a(((as)this.gic.get(i)).getName(), null, "status=1 and isSend=1", null, null, "createTime DESC ");
      if (localCursor.moveToFirst())
        while (true)
          if (!localCursor.isAfterLast())
          {
            ak localak = new ak();
            localak.convertFrom(localCursor);
            localCursor.moveToNext();
            if ((localak.aCc()) || (localak.aCa()) || (localak.aCb()) || (localak.aCk()))
            {
              localArrayList.add(localak);
              continue;
              bool = false;
              break;
            }
          }
      localCursor.close();
    }
    label180: return localArrayList;
  }

  public final List aCT()
  {
    aCR();
    ArrayList localArrayList = new ArrayList();
    boolean bool;
    if (this.gic != null)
    {
      bool = true;
      Assert.assertTrue(bool);
    }
    for (int i = 0; ; i++)
    {
      if (i >= this.gic.size())
        break label156;
      Cursor localCursor = this.cjB.a(((as)this.gic.get(i)).getName(), null, "status=1 and isSend=1", null, null, "createTime DESC ");
      if (localCursor.moveToFirst())
        while (true)
          if (!localCursor.isAfterLast())
          {
            ak localak = new ak();
            localak.convertFrom(localCursor);
            localCursor.moveToNext();
            if (localak.aCd())
            {
              localArrayList.add(localak);
              continue;
              bool = false;
              break;
            }
          }
      localCursor.close();
    }
    label156: return localArrayList;
  }

  public final Cursor aCU()
  {
    return this.cjB.a("message", new String[] { "talker", "count(*) as unReadCount" }, "isSend=? AND status!=?", new String[] { "0", "4" }, "talker", null);
  }

  public final ak aU(String paramString1, String paramString2)
  {
    if (cj.hX(paramString1))
      return null;
    ak localak = new ak();
    String str = "select * from " + vo(paramString1) + " where talker = '" + cj.hR(paramString1) + "' " + paramString2 + " order by createTime DESC limit 1";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      localak.convertFrom(localCursor);
    }
    localCursor.close();
    return localak;
  }

  public final Cursor aV(String paramString1, String paramString2)
  {
    String str1 = "SELECT * FROM " + vo(paramString1) + " WHERE talker= '" + cj.hR(paramString1) + "' AND content LIKE '%" + paramString2 + "%' AND type = 1";
    String str2 = str1 + " ORDER BY createTime DESC";
    return this.cjB.rawQuery(str2, null);
  }

  public final ak ae(String paramString, int paramInt)
  {
    ak localak = new ak();
    i locali = this.cjB;
    String str = vo(paramString);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    Cursor localCursor = locali.a(str, null, "msgSvrId=?", arrayOfString, null, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      localak.convertFrom(localCursor);
    }
    localCursor.close();
    return localak;
  }

  public final boolean af(String paramString, int paramInt)
  {
    ak localak = ae(paramString, paramInt);
    aa.d("MicroMsg.MsgInfoStorage", "msg.getMsgSvrId() " + localak.AH());
    return (localak != null) && (localak.AH() > 0);
  }

  public final List ag(String paramString, int paramInt)
  {
    ArrayList localArrayList = new ArrayList();
    if (this.gic != null);
    Cursor localCursor;
    for (boolean bool = true; ; bool = false)
    {
      Assert.assertTrue(bool);
      String str = "SELECT * FROM " + vo(paramString) + " WHERE talker = '" + cj.hR(paramString) + "'  AND isSend = 0 ORDER BY createTime DESC LIMIT " + paramInt;
      localCursor = this.cjB.rawQuery(str, null);
      if (!localCursor.moveToFirst())
        break;
      while (!localCursor.isAfterLast())
      {
        ak localak = new ak();
        localak.convertFrom(localCursor);
        localCursor.moveToNext();
        if (localak.aCc())
          localArrayList.add(localak);
      }
    }
    localCursor.close();
    return localArrayList;
  }

  public final int ah(String paramString, int paramInt)
  {
    ak localak = ae(paramString, paramInt);
    this.gii.a((int)(cj.FC() / 86400L), localak.AH(), localak.DL() / 1000L);
    i locali = this.cjB;
    String str = vo(paramString);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramInt);
    int i = locali.delete(str, "msgSvrId=?", arrayOfString);
    if (i != 0)
    {
      Ei();
      a(new at(paramString, "delete", null));
    }
    return i;
  }

  public final int ai(String paramString, int paramInt)
  {
    ak localak = ae(paramString, paramInt);
    Assert.assertTrue(paramString.equals(localak.aCl()));
    String str1 = vo(paramString);
    String[] arrayOfString1 = new String[2];
    arrayOfString1[0] = localak.DL();
    arrayOfString1[1] = paramString;
    a(str1, "createTime<=? AND talker=?", arrayOfString1);
    i locali = this.cjB;
    String str2 = vo(paramString);
    String[] arrayOfString2 = new String[2];
    arrayOfString2[0] = localak.DL();
    arrayOfString2[1] = paramString;
    int i = locali.delete(str2, "createTime<=? AND talker=?", arrayOfString2);
    if (i != 0)
    {
      Ei();
      a(new at(paramString, "delete", null));
    }
    return i;
  }

  public final Cursor aj(String paramString, int paramInt)
  {
    ak localak = ae(paramString, paramInt);
    Assert.assertTrue(paramString.equals(localak.aCl()));
    i locali = this.cjB;
    String str = vo(paramString);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = localak.DL();
    return locali.a(str, null, "createTime<=? AND talker=?", arrayOfString, null, null);
  }

  public final Cursor ak(String paramString, int paramInt)
  {
    String str = "SELECT * FROM " + vo(paramString) + " WHERE talker= '" + cj.hR(paramString) + "' ORDER BY createTime ASC LIMIT -1 OFFSET " + paramInt;
    aa.d("MicroMsg.MsgInfoStorage", "getCursor talk:" + paramString + " from:" + paramInt + " [" + str + "]");
    return this.cjB.rawQuery(str, null);
  }

  public final int al(String paramString, int paramInt)
  {
    String str = "SELECT COUNT(*) FROM " + vo(paramString) + " WHERE talker='" + cj.hR(paramString) + "' AND type = " + paramInt;
    Cursor localCursor = this.cjB.rawQuery(str, null);
    boolean bool = localCursor.moveToLast();
    int i = 0;
    if (bool)
      i = localCursor.getInt(0);
    localCursor.close();
    return i;
  }

  public final ak[] am(String paramString, int paramInt)
  {
    if ((paramString == null) || (paramString.length() == 0) || (paramInt <= 0))
    {
      aa.e("MicroMsg.MsgInfoStorage", "getLastMsgList, invalid argument, talker = " + paramString + ", limit = " + paramInt);
      return null;
    }
    String str = "select * from " + vo(paramString) + " where talker = '" + cj.hR(paramString) + "'  order by createTime DESC limit " + paramInt;
    Cursor localCursor = this.cjB.rawQuery(str, null);
    int i = localCursor.getCount();
    aa.d("MicroMsg.MsgInfoStorage", "getLastMsgList, talker = " + paramString + ", limit = " + paramInt + ", count = " + i);
    if (i == 0)
    {
      aa.w("MicroMsg.MsgInfoStorage", "getLastMsgList, cursor is empty");
      localCursor.close();
      return null;
    }
    ak[] arrayOfak = new ak[i];
    for (int j = 0; j < i; j++)
    {
      localCursor.moveToPosition(j);
      arrayOfak[(-1 + (i - j))] = new ak();
      arrayOfak[(-1 + (i - j))].convertFrom(localCursor);
    }
    localCursor.close();
    return arrayOfak;
  }

  public final int b(String paramString, long paramLong, int paramInt)
  {
    String str = "SELECT * FROM " + vo(paramString) + " WHERE talker= '" + cj.hR(paramString) + "' AND createTime < " + paramLong + " ORDER BY createTime ASC LIMIT -1 OFFSET " + paramInt;
    Cursor localCursor = this.cjB.rawQuery(str, null);
    int i = localCursor.getCount();
    localCursor.close();
    aa.d("MicroMsg.MsgInfoStorage", "getPositionByCreateTime talk:" + paramString + " time:" + paramLong + " count " + i + " [" + str + "]");
    return i;
  }

  public final Cursor b(String paramString, long paramLong1, long paramLong2)
  {
    if (paramLong2 < paramLong1);
    while (true)
    {
      String str = "SELECT * FROM " + vo(paramString) + " WHERE talker= '" + cj.hR(paramString) + "' AND createTime >= " + paramLong2 + " AND createTime <= " + paramLong1 + " ORDER BY createTime ASC ";
      aa.d("MicroMsg.MsgInfoStorage", "get cursor: " + str);
      return this.cjB.rawQuery(str, null);
      long l = paramLong2;
      paramLong2 = paramLong1;
      paramLong1 = l;
    }
  }

  public final List b(String paramString, long paramLong, boolean paramBoolean)
  {
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.MsgInfoStorage", "getImgMessage fail, argument is invalid, limit = 10");
      return null;
    }
    ak localak1 = bU(paramLong);
    if ((localak1 == null) || (localak1.Bo() == 0L))
    {
      aa.e("MicroMsg.MsgInfoStorage", "getImgMessage fail, msg is null");
      return null;
    }
    long l = localak1.DL();
    ArrayList localArrayList = new ArrayList();
    String str;
    Cursor localCursor;
    if (paramBoolean)
    {
      str = "select * from " + vo(paramString) + " where talker = '" + cj.hR(paramString) + "' AND (type = 3 OR type = 39 OR type = 13) AND createTime > " + l + "  order by createTime ASC limit 10";
      localCursor = this.cjB.rawQuery(str, null);
      if (!localCursor.moveToFirst());
    }
    else
    {
      while (true)
      {
        if (localCursor.isAfterLast())
          break label270;
        ak localak2 = new ak();
        localak2.convertFrom(localCursor);
        localCursor.moveToNext();
        if (paramBoolean)
        {
          localArrayList.add(localak2);
          continue;
          str = "select * from " + vo(paramString) + " where talker = '" + cj.hR(paramString) + "' AND (type = 3 OR type = 39 OR type = 13) AND createTime < " + l + "  order by createTime DESC limit 10";
          break;
        }
        localArrayList.add(0, localak2);
      }
    }
    label270: localCursor.close();
    return localArrayList;
  }

  public final ak bU(long paramLong)
  {
    ak localak = new ak();
    i locali = this.cjB;
    String str = bX(paramLong);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    Cursor localCursor = locali.a(str, null, "msgId=?", arrayOfString, null, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      localak.convertFrom(localCursor);
    }
    localCursor.close();
    return localak;
  }

  public final int bV(long paramLong)
  {
    ak localak = bU(paramLong);
    String str1 = localak.aCl();
    this.gii.a((int)(cj.FC() / 86400L), localak.AH(), localak.DL() / 1000L);
    i locali = this.cjB;
    String str2 = bX(paramLong);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    int i = locali.delete(str2, "msgId=?", arrayOfString);
    if (i != 0)
    {
      Ei();
      at localat = new at(str1, "delete", null);
      localat.gis = paramLong;
      a(localat);
    }
    return i;
  }

  public final boolean bW(long paramLong)
  {
    for (int i = 0; ; i++)
    {
      int j = this.gic.size();
      boolean bool = false;
      if (i < j)
      {
        if (((as)this.gic.get(i)).bY(paramLong))
          bool = true;
      }
      else
        return bool;
    }
  }

  public final int h(int paramInt, long paramLong)
  {
    int i = 0;
    int j = 0;
    int k;
    if (i < this.gic.size())
    {
      if ((paramInt & ((as)this.gic.get(i)).aCX()) == 0)
        break label209;
      String str = "select *  from " + ((as)this.gic.get(i)).getName() + " where " + ((as)this.gic.get(i)).getName() + ".status != 4 and " + ((as)this.gic.get(i)).getName() + ".isSend = 0 and " + ((as)this.gic.get(i)).getName() + ".createTime > " + paramLong;
      Cursor localCursor = this.cjB.rawQuery(str, null);
      k = j + localCursor.getCount();
      localCursor.close();
    }
    while (true)
    {
      i++;
      j = k;
      break;
      return j;
      label209: k = j;
    }
  }

  public final boolean i(String paramString, long paramLong)
  {
    ak localak = new ak();
    i locali = this.cjB;
    String str = vo(paramString);
    String[] arrayOfString = new String[1];
    arrayOfString[0] = String.valueOf(paramLong);
    Cursor localCursor = locali.a(str, null, "createTime=?", arrayOfString, null, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      localak.convertFrom(localCursor);
    }
    localCursor.close();
    return localak.Bo() > 0L;
  }

  public final int j(String paramString, long paramLong)
  {
    ak localak = bU(paramLong);
    if ((localak == null) || (localak.Bo() == 0L))
    {
      aa.e("MicroMsg.MsgInfoStorage", "getCountEarlyThan fail, msg does not exist");
      return 0;
    }
    String str = "SELECT COUNT(*) FROM " + vo(paramString) + " WHERE talker='" + cj.hR(paramString) + "' AND (type = 3 OR type = 39 OR type = 13) AND createTime < " + localak.DL();
    Cursor localCursor = this.cjB.rawQuery(str, null);
    boolean bool = localCursor.moveToLast();
    int i = 0;
    if (bool)
      i = localCursor.getInt(0);
    localCursor.close();
    return i;
  }

  public final long k(String paramString, long paramLong)
  {
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = paramString;
    arrayOfObject1[1] = Long.valueOf(paramLong);
    arrayOfObject1[2] = Integer.valueOf(18);
    aa.e("MicroMsg.MsgInfoStorage", "get up inc create time, talker %s, fromCreateTime %d, targetIncCount %d", arrayOfObject1);
    String str = "SELECT createTime FROM " + vo(paramString) + " WHERE talker= '" + cj.hR(paramString) + "' AND createTime < " + paramLong + " ORDER BY createTime DESC  LIMIT 18";
    aa.e("MicroMsg.MsgInfoStorage", "get up inc msg create time sql: %s", new Object[] { str });
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor == null)
    {
      aa.w("MicroMsg.MsgInfoStorage", "get inc msg create time error, cursor is null");
      return paramLong;
    }
    if (localCursor.moveToLast())
    {
      long l = localCursor.getLong(0);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(l);
      aa.e("MicroMsg.MsgInfoStorage", "result msg create time %d", arrayOfObject2);
      localCursor.close();
      return l;
    }
    aa.w("MicroMsg.MsgInfoStorage", "get result fail");
    return paramLong;
  }

  public final long l(String paramString, long paramLong)
  {
    Object[] arrayOfObject1 = new Object[3];
    arrayOfObject1[0] = paramString;
    arrayOfObject1[1] = Long.valueOf(paramLong);
    arrayOfObject1[2] = Integer.valueOf(18);
    aa.e("MicroMsg.MsgInfoStorage", "get down inc create time, talker %s, fromCreateTime %d, targetIncCount %d", arrayOfObject1);
    String str = "SELECT createTime FROM " + vo(paramString) + " WHERE talker= '" + cj.hR(paramString) + "' AND createTime > " + paramLong + " ORDER BY createTime ASC  LIMIT 18";
    aa.e("MicroMsg.MsgInfoStorage", "get down inc msg create time sql: %s", new Object[] { str });
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor == null)
    {
      aa.w("MicroMsg.MsgInfoStorage", "get down inc msg create time error, cursor is null");
      return paramLong;
    }
    if (localCursor.moveToLast())
    {
      long l = localCursor.getLong(0);
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Long.valueOf(l);
      aa.e("MicroMsg.MsgInfoStorage", "result msg create time %d", arrayOfObject2);
      localCursor.close();
      return l;
    }
    aa.w("MicroMsg.MsgInfoStorage", "get result fail");
    return paramLong;
  }

  public final void lock()
  {
    super.lock();
    this.gij.lock();
  }

  public final ak mj(int paramInt)
  {
    boolean bool;
    ak localak;
    long l1;
    int i;
    label27: Cursor localCursor;
    long l2;
    if (this.gic != null)
    {
      bool = true;
      Assert.assertTrue(bool);
      localak = new ak();
      l1 = 0L;
      i = 0;
      if (i >= this.gic.size())
        break label188;
      if ((paramInt & ((as)this.gic.get(i)).aCX()) == 0)
        break label190;
      String str = "select * from " + ((as)this.gic.get(i)).getName() + "  order by createTime DESC limit 1";
      localCursor = this.cjB.rawQuery(str, null);
      if (localCursor.getCount() == 0)
        break label197;
      localCursor.moveToFirst();
      if (l1 >= localCursor.getLong(6))
        break label197;
      l2 = localCursor.getLong(6);
      localak.convertFrom(localCursor);
    }
    while (true)
    {
      localCursor.close();
      while (true)
      {
        i++;
        l1 = l2;
        break label27;
        bool = false;
        break;
        label188: return localak;
        label190: l2 = l1;
      }
      label197: l2 = l1;
    }
  }

  public final boolean mk(int paramInt)
  {
    return this.gii.lQ(paramInt);
  }

  public final ak t(int paramInt, String paramString)
  {
    boolean bool;
    ak localak;
    long l1;
    String str1;
    label37: int i;
    label40: Cursor localCursor;
    long l2;
    if (this.gic != null)
    {
      bool = true;
      Assert.assertTrue(bool);
      localak = new ak();
      l1 = 0L;
      if (!cj.hX(paramString))
        break label207;
      str1 = "";
      i = 0;
      if (i >= this.gic.size())
        break label222;
      if ((paramInt & ((as)this.gic.get(i)).aCX()) == 0)
        break label225;
      String str2 = "select * from " + ((as)this.gic.get(i)).getName() + str1 + "  order by createTime DESC limit 1";
      localCursor = this.cjB.rawQuery(str2, null);
      if (localCursor.getCount() == 0)
        break label232;
      localCursor.moveToFirst();
      if (l1 >= localCursor.getLong(6))
        break label232;
      l2 = localCursor.getLong(6);
      localak.convertFrom(localCursor);
    }
    while (true)
    {
      localCursor.close();
      while (true)
      {
        i++;
        l1 = l2;
        break label40;
        bool = false;
        break;
        label207: str1 = paramString.replaceFirst("and", "where");
        break label37;
        label222: return localak;
        label225: l2 = l1;
      }
      label232: l2 = l1;
    }
  }

  public final boolean tY(String paramString)
  {
    a(vo(paramString), " talker like '%" + paramString + "'", null);
    boolean bool = this.cjB.aQ(vo(paramString), "delete from " + vo(paramString) + " where talker like '%" + paramString + "'");
    if (bool)
      Ei();
    return bool;
  }

  public final ak uV(String paramString)
  {
    ak localak = new ak();
    Cursor localCursor = this.cjB.a(vo(paramString), null, "talker=?", new String[] { paramString }, null, "msgSvrId  DESC limit 1 ");
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      localak.convertFrom(localCursor);
    }
    localCursor.close();
    return localak;
  }

  public final ak uW(String paramString)
  {
    if (cj.hX(paramString))
      return null;
    ak localak = new ak();
    String str = "select * from " + vo(paramString) + " where talker = '" + cj.hR(paramString) + "'  order by createTime DESC limit 1";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      localak.convertFrom(localCursor);
    }
    localCursor.close();
    return localak;
  }

  public final ak uX(String paramString)
  {
    if (cj.hX(paramString))
      return null;
    ak localak = new ak();
    String str = "select * from " + vo(paramString) + " where talker = '" + cj.hR(paramString) + "' and isSend = 0  order by createTime DESC limit 1";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      localak.convertFrom(localCursor);
    }
    localCursor.close();
    return localak;
  }

  public final List uY(String paramString)
  {
    Cursor localCursor = this.cjB.rawQuery("select * from " + paramString, null);
    if (localCursor == null)
      return null;
    int i = localCursor.getCount();
    if (i == 0)
    {
      localCursor.close();
      return null;
    }
    ArrayList localArrayList = new ArrayList();
    for (int j = 0; j < i; j++)
    {
      localCursor.moveToPosition(j);
      ak localak = new ak();
      localak.convertFrom(localCursor);
      localArrayList.add(localak);
    }
    localCursor.close();
    return localArrayList;
  }

  public final List uZ(String paramString)
  {
    Cursor localCursor = null;
    Object localObject1;
    if ((paramString == null) || (paramString.length() == 0))
    {
      aa.e("MicroMsg.MsgInfoStorage", "getImgMessage fail, argument is invalid");
      localObject1 = null;
    }
    do
    {
      return localObject1;
      localObject1 = new ArrayList();
      String str = "select * from " + vo(paramString) + " where talker = '" + cj.hR(paramString) + "' AND (type = 3 OR type = 39 OR type = 13)  order by createTime";
      long l = this.cjB.aDB();
      try
      {
        localCursor = this.cjB.rawQuery(str, null);
        if (localCursor.moveToFirst())
          while (!localCursor.isAfterLast())
          {
            ak localak = new ak();
            localak.convertFrom(localCursor);
            localCursor.moveToNext();
            ((List)localObject1).add(localak);
          }
      }
      finally
      {
        this.cjB.cb(l);
        if (localCursor != null)
          localCursor.close();
      }
      this.cjB.cb(l);
    }
    while (localCursor == null);
    localCursor.close();
    return localObject1;
  }

  public final void unlock()
  {
    super.unlock();
    this.gij.unlock();
  }

  public final long v(ak paramak)
  {
    if ((paramak.aCl() != null) && (paramak.aCl().length() > 0))
    {
      as localas = vp(paramak.aCl());
      boolean bool1;
      at localat2;
      if (localas != null)
      {
        bool1 = true;
        Assert.assertTrue(bool1);
        paramak.bT(localas.aCV());
        localas.aCW();
        paramak.cL(-1);
        ContentValues localContentValues = paramak.oa();
        aa.v("MicroMsg.MsgInfoStorage", "dkevent insert: talker=" + paramak.aCl() + " localId=" + paramak.Bo() + " thr:" + Thread.currentThread().getId());
        if (this.cjB.insert(localas.getName(), "msgId", localContentValues) == -1L)
          break label306;
        if (!this.gik)
          break label263;
        boolean bool2 = this.gil.containsKey(paramak.aCl());
        localat2 = null;
        if (bool2)
          localat2 = (at)this.gil.get(paramak.aCl());
        if (localat2 != null)
          break label250;
        localat2 = new at(paramak.aCl(), "insert", paramak);
        label205: if (at.x(paramak))
          localat2.gir = (1 + localat2.gir);
        this.gil.put(paramak.aCl(), localat2);
      }
      while (true)
      {
        return paramak.Bo();
        bool1 = false;
        break;
        label250: localat2.dOI.add(paramak);
        break label205;
        label263: at localat1 = new at(paramak.aCl(), "insert", paramak);
        if (at.x(paramak))
          localat1.gir = 1;
        Ei();
        a(localat1);
      }
    }
    label306: return -1L;
  }

  public final void va(String paramString)
  {
    a(paramString, "", null);
    if (this.cjB.aQ(paramString, "delete from " + paramString))
      Ei();
  }

  public final int vb(String paramString)
  {
    a(vo(paramString), "talker=?", new String[] { paramString });
    int i = this.cjB.delete(vo(paramString), "talker=?", new String[] { paramString });
    if (i != 0)
    {
      Ei();
      at localat = new at(paramString, "delete", null);
      localat.gis = -1L;
      a(localat);
    }
    return i;
  }

  public final int vc(String paramString)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("status", Integer.valueOf(4));
    int i = this.cjB.update(vo(paramString), localContentValues, "talker=? AND isSend=? AND status!=? ", new String[] { paramString, "0", "4" });
    if (i != 0)
    {
      Ei();
      a(new at(paramString, "update", null));
    }
    return i;
  }

  public final Cursor vd(String paramString)
  {
    return this.cjB.a(vo(paramString), null, "talker=?", new String[] { paramString }, null, "createTime ASC ");
  }

  public final Cursor ve(String paramString)
  {
    String str = "SELECT * FROM message WHERE talker like '%" + cj.hR(paramString) + "' ORDER BY msgId ASC";
    return this.cjB.rawQuery(str, null);
  }

  public final Cursor vf(String paramString)
  {
    return this.cjB.a(vo(paramString), null, "isSend=? AND talker=? AND status!=?", new String[] { "0", paramString, "4" }, null, null);
  }

  public final Cursor vg(String paramString)
  {
    return this.cjB.a(vo(paramString), null, "isSend=? AND talker=? AND status!=? limit 3", new String[] { "0", paramString, "4" }, null, null);
  }

  public final an vh(String paramString)
  {
    an localan = (an)this.gid.get(Integer.valueOf(paramString.hashCode()));
    if (localan == null)
    {
      localan = an.uT(paramString);
      this.gid.f(Integer.valueOf(paramString.hashCode()), localan);
    }
    return localan;
  }

  public final ao vi(String paramString)
  {
    ao localao = (ao)this.gie.get(Integer.valueOf(paramString.hashCode()));
    if (localao == null)
    {
      localao = ao.uU(paramString);
      this.gie.f(Integer.valueOf(paramString.hashCode()), localao);
    }
    return localao;
  }

  public final al vj(String paramString)
  {
    if (this.gif != null);
    for (al localal = (al)this.gif.get(Integer.valueOf(paramString.hashCode())); ; localal = null)
    {
      if (localal == null)
      {
        localal = al.uQ(paramString);
        if ((localal != null) && (this.gif != null))
          this.gif.f(Integer.valueOf(paramString.hashCode()), localal);
      }
      return localal;
      aa.e("MicroMsg.MsgInfoStorage", "[arthurdan.FriendContentCrash] Fatal error!!! cachesForFriend is null!");
    }
  }

  public final am vk(String paramString)
  {
    am localam = (am)this.gig.get(Integer.valueOf(paramString.hashCode()));
    if (localam == null)
    {
      localam = am.uR(paramString);
      this.gig.f(Integer.valueOf(paramString.hashCode()), localam);
    }
    return localam;
  }

  public final int vl(String paramString)
  {
    String str = "SELECT COUNT(*) FROM " + vo(paramString) + " WHERE talker='" + cj.hR(paramString) + "'";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    boolean bool = localCursor.moveToLast();
    int i = 0;
    if (bool)
      i = localCursor.getInt(0);
    localCursor.close();
    return i;
  }

  public final int vm(String paramString)
  {
    String str = "SELECT COUNT(*) FROM " + vo(paramString) + " WHERE talker='" + cj.hR(paramString) + "' AND (type = 3 OR type = 39 OR type = 13)";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    boolean bool = localCursor.moveToLast();
    int i = 0;
    if (bool)
      i = localCursor.getInt(0);
    localCursor.close();
    return i;
  }

  public final void vn(String paramString)
  {
    String str1 = "select createTime from " + vo(paramString) + " where talker=\"" + cj.hR(paramString) + "\" order by createTime desc limit -1 offset 100";
    Cursor localCursor = this.cjB.rawQuery(str1, null);
    localCursor.moveToFirst();
    long l1 = 0L;
    if (localCursor.moveToFirst())
      while (!localCursor.isAfterLast())
      {
        if (l1 < localCursor.getLong(0))
          l1 = localCursor.getLong(0);
        localCursor.moveToNext();
      }
    localCursor.close();
    long l2 = cj.FD() - 604800000L;
    if (l1 > l2)
      l1 = l2;
    aa.d("MicroMsg.MsgInfoStorage", "deleteOldMsgByTalker get max time :" + l1);
    String str2 = "( talker=\"" + cj.hR(paramString) + "\") and (createTime < " + l1 + ")";
    a(vo(paramString), str2, null);
    int i = this.cjB.delete(vo(paramString), str2, null);
    aa.d("MicroMsg.MsgInfoStorage", "deleted message count:" + i);
  }

  public final long vq(String paramString)
  {
    String str = "select createTime from message where talker='" + paramString + "'  order by createTime LIMIT 1 OFFSET 0";
    aa.d("MicroMsg.MsgInfoStorage", "get first message create time: " + str);
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor == null)
    {
      aa.e("MicroMsg.MsgInfoStorage", "get first message create time failed: " + paramString);
      return -1L;
    }
    if (localCursor.moveToFirst())
    {
      long l = localCursor.getLong(0);
      localCursor.close();
      return l;
    }
    localCursor.close();
    return -1L;
  }

  public final long vr(String paramString)
  {
    String str = "select createTime from message where talker='" + paramString + "' order by createTime DESC LIMIT 1 ";
    aa.d("MicroMsg.MsgInfoStorage", "get last message create time: " + str);
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor == null)
    {
      aa.e("MicroMsg.MsgInfoStorage", "get last message create time failed " + paramString);
      return -1L;
    }
    if (localCursor.moveToFirst())
    {
      long l = localCursor.getLong(0);
      localCursor.close();
      return l;
    }
    localCursor.close();
    return -1L;
  }

  public final void w(ak paramak)
  {
    if ((paramak == null) || (paramak.getStatus() == 4));
    String str;
    i locali;
    ContentValues localContentValues;
    String[] arrayOfString;
    do
    {
      do
      {
        return;
        paramak.setStatus(4);
        str = bX(paramak.Bo());
      }
      while ((str == null) || (str.length() <= 0));
      locali = this.cjB;
      localContentValues = paramak.oa();
      arrayOfString = new String[1];
      arrayOfString[0] = paramak.Bo();
    }
    while (locali.update(str, localContentValues, "msgId=?", arrayOfString) == 0);
    Ei();
    a(new at(paramak.aCl(), "update", paramak, -1));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.storage.ap
 * JD-Core Version:    0.6.2
 */