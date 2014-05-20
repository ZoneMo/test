package com.tencent.mm.modelfriend;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.pluginsdk.c;
import com.tencent.mm.sdk.e.ao;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ch;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;

public final class i extends ao
{
  public static final String[] cjC = { "CREATE TABLE IF NOT EXISTS addr_upload ( id int  PRIMARY KEY , md5 text  , peopleid text  , uploadtime long  , realname text  , realnamepyinitial text  , realnamequanpin text  , username text  , nickname text  , nicknamepyinitial text  , nicknamequanpin text  , type int  , moblie text  , email text  , status int  , reserved1 text  , reserved2 text  , reserved3 int  , reserved4 int , lvbuf BLOG ) ", "CREATE INDEX IF NOT EXISTS upload_time_index ON addr_upload ( uploadtime ) ", "CREATE INDEX IF NOT EXISTS addr_upload_user_index ON addr_upload ( username ) " };
  private final com.tencent.mm.ap.i cjB;

  public i(com.tencent.mm.ap.i parami)
  {
    this.cjB = parami;
    int i = 0;
    Cursor localCursor = parami.rawQuery("PRAGMA table_info( " + "addr_upload" + " )", null);
    while (localCursor.moveToNext())
    {
      int j = localCursor.getColumnIndex("name");
      if ((j >= 0) && ("lvbuf".equalsIgnoreCase(localCursor.getString(j))))
        i = 1;
    }
    localCursor.close();
    if (i == 0)
      parami.aQ("addr_upload", "Alter table " + "addr_upload" + " add lvbuf BLOB ");
  }

  private List ft(String paramString)
  {
    aa.d("MicroMsg.AddrUploadStorage", "sql : " + paramString);
    LinkedList localLinkedList = new LinkedList();
    aa.d("MicroMsg.AddrUploadStorage", "sql : " + paramString);
    Cursor localCursor = this.cjB.rawQuery(paramString, null);
    localCursor.moveToFirst();
    if (localCursor.getCount() <= 0)
    {
      localCursor.close();
      return localLinkedList;
    }
    do
    {
      h localh = new h();
      localh.convertFrom(localCursor);
      localLinkedList.add(localh);
    }
    while (localCursor.moveToNext());
    localCursor.close();
    return localLinkedList;
  }

  public final h J(String paramString1, String paramString2)
  {
    h localh = fs(paramString1);
    if (localh == null)
      localh = fs(paramString2);
    return localh;
  }

  public final int a(String paramString, h paramh)
  {
    ContentValues localContentValues = paramh.oa();
    int i = localContentValues.size();
    int j = 0;
    if (i > 0)
    {
      com.tencent.mm.ap.i locali = this.cjB;
      String[] arrayOfString = new String[1];
      arrayOfString[0] = h.eW(paramString);
      j = locali.update("addr_upload", localContentValues, "id=?", arrayOfString);
    }
    if (j > 0)
    {
      if (!paramh.yK().equals(paramString))
      {
        b(5, this, paramString);
        b(2, this, paramh.yK());
      }
    }
    else
      return j;
    b(3, this, paramString);
    return j;
  }

  public final String fp(String paramString)
  {
    String str1 = "select addr_upload.realname from addr_upload where addr_upload.id = \"" + h.eW(paramString) + "\"";
    Cursor localCursor = this.cjB.rawQuery(str1, null);
    if (localCursor == null)
      return "";
    if (localCursor.getCount() == 0)
    {
      localCursor.close();
      return "";
    }
    String str2 = "";
    if (localCursor.moveToFirst())
      str2 = localCursor.getString(0);
    localCursor.close();
    return str2;
  }

  public final h fq(String paramString)
  {
    if (cj.hX(paramString))
      return null;
    h localh = new h();
    String str = "select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status,addr_upload.reserved1,addr_upload.reserved2,addr_upload.reserved3,addr_upload.reserved4,addr_upload.lvbuf from addr_upload where addr_upload.username=\"" + cj.hR(paramString) + "\"";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    aa.d("MicroMsg.AddrUploadStorage", "get addrUpload :" + paramString + ", resCnt:" + localCursor.getCount());
    if (localCursor.getCount() != 0)
    {
      localCursor.moveToFirst();
      localh.convertFrom(localCursor);
    }
    localCursor.close();
    return localh;
  }

  public final Cursor fr(String paramString)
  {
    StringBuilder localStringBuilder = new StringBuilder();
    if ((paramString != null) && (paramString.length() > 0))
    {
      localStringBuilder.append(" and ( ");
      localStringBuilder.append("addr_upload.realname like '%" + paramString + "%' or ");
      localStringBuilder.append("addr_upload.realnamepyinitial like '%" + paramString + "%' or ");
      localStringBuilder.append("addr_upload.realnamequanpin like '%" + paramString + "%' or ");
      localStringBuilder.append("addr_upload.username like '%" + paramString + "%' or ");
      localStringBuilder.append("addr_upload.nickname like '%" + paramString + "%' or ");
      localStringBuilder.append("addr_upload.nicknamepyinitial like '%" + paramString + "%' or ");
      localStringBuilder.append("addr_upload.nicknamequanpin like '%" + paramString + "%' )");
    }
    String str = (String)be.uz().sr().get(6);
    if ((str != null) && (!str.equals("")))
      return this.cjB.rawQuery("select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status,addr_upload.reserved1,addr_upload.reserved2,addr_upload.reserved3,addr_upload.reserved4,addr_upload.lvbuf from addr_upload  where type = 0 and moblie <> " + str + localStringBuilder.toString() + " order by  case when status = 1 then 0  when status = 65536 then 1  when status = 2 then 2 else 3 end  , realnamepyinitial", null);
    return this.cjB.rawQuery("select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status,addr_upload.reserved1,addr_upload.reserved2,addr_upload.reserved3,addr_upload.reserved4,addr_upload.lvbuf from addr_upload  where type = 0" + localStringBuilder.toString() + " order by  case when status = 1 then 0  when status = 65536 then 1  when status = 2 then 2 else 3 end  , realnamepyinitial", null);
  }

  public final h fs(String paramString)
  {
    if ((paramString == null) || (paramString.length() <= 0))
      return null;
    String str = "select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status,addr_upload.reserved1,addr_upload.reserved2,addr_upload.reserved3,addr_upload.reserved4,addr_upload.lvbuf from addr_upload where addr_upload.id=\"" + h.eW(paramString) + "\"";
    Cursor localCursor = this.cjB.rawQuery(str, null);
    aa.d("MicroMsg.AddrUploadStorage", "get addrUpload :" + paramString + ", resCnt:" + localCursor.getCount());
    int i = localCursor.getCount();
    h localh = null;
    if (i != 0)
    {
      localCursor.moveToFirst();
      localh = new h();
      localh.convertFrom(localCursor);
    }
    localCursor.close();
    return localh;
  }

  public final boolean i(List paramList)
  {
    if ((paramList == null) || (paramList.size() <= 0))
      return false;
    ch localch = new ch("MicroMsg.AddrUploadStorage", "transaction");
    localch.addSplit("transation begin");
    long l = this.cjB.ca(Thread.currentThread().getId());
    int i = 0;
    while (true)
      try
      {
        h localh;
        int j;
        boolean bool;
        int k;
        ContentValues localContentValues2;
        int m;
        int n;
        com.tencent.mm.ap.i locali;
        String[] arrayOfString;
        Object[] arrayOfObject2;
        Object[] arrayOfObject3;
        if (i < paramList.size())
        {
          localh = (h)paramList.get(i);
          if (localh == null)
            continue;
          String str1 = localh.yK();
          String str2 = "select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status,addr_upload.reserved1,addr_upload.reserved2,addr_upload.reserved3,addr_upload.reserved4,addr_upload.lvbuf from addr_upload  where addr_upload.id = \"" + h.eW(str1) + "\"";
          Cursor localCursor = this.cjB.rawQuery(str2, null);
          if (localCursor == null)
          {
            j = 0;
            if (j != 0)
              continue;
            localh.cL(-1);
            ContentValues localContentValues1 = localh.oa();
            if ((int)this.cjB.insert("addr_upload", "id", localContentValues1) == -1)
            {
              Object[] arrayOfObject1 = new Object[2];
              arrayOfObject1[0] = localh.yS();
              arrayOfObject1[1] = localh.yT();
              aa.d("MicroMsg.AddrUploadStorage", "batchSet insert failed, num:%s email:%s", arrayOfObject1);
              bool = true;
              this.cjB.cb(l);
              localch.addSplit("transation end");
              localch.dumpToLog();
              return bool;
            }
          }
          else if (localCursor.getCount() > 0)
          {
            j = 1;
            localCursor.close();
            continue;
          }
        }
      }
      catch (Exception localException)
      {
        aa.e("MicroMsg.AddrUploadStorage", localException.getMessage());
        bool = false;
        continue;
        j = 0;
        continue;
        b(2, this, localh.yK());
        continue;
        k = h.eW(localh.yK());
        localContentValues2 = localh.oa();
        m = localContentValues2.size();
        n = 0;
        if (m > 0)
        {
          locali = this.cjB;
          arrayOfString = new String[1];
          arrayOfString[0] = String.valueOf(k);
          n = locali.update("addr_upload", localContentValues2, "id=?", arrayOfString);
        }
        if (n == 0)
        {
          arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = localh.yS();
          arrayOfObject2[1] = localh.yT();
          aa.d("MicroMsg.AddrUploadStorage", "batchSet update result=0, num:%s email:%s", arrayOfObject2);
        }
        else
        {
          if (n < 0)
          {
            arrayOfObject3 = new Object[2];
            arrayOfObject3[0] = localh.yS();
            arrayOfObject3[1] = localh.yT();
            aa.d("MicroMsg.AddrUploadStorage", "batchSet update failed, num:%s email:%s", arrayOfObject3);
            bool = true;
            continue;
          }
          b(3, this, localh.yK());
          continue;
          bool = true;
          continue;
        }
        i++;
      }
  }

  public final boolean j(List paramList)
  {
    if ((paramList == null) || (paramList.size() <= 0))
      return false;
    ch localch = new ch("MicroMsg.AddrUploadStorage", "delete transaction");
    localch.addSplit("begin");
    long l = this.cjB.ca(Thread.currentThread().getId());
    boolean bool;
    try
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if ((str != null) && (str.length() > 0))
        {
          com.tencent.mm.ap.i locali = this.cjB;
          String[] arrayOfString = new String[1];
          arrayOfString[0] = h.eW(str);
          int i = locali.delete("addr_upload", "id =?", arrayOfString);
          aa.d("MicroMsg.AddrUploadStorage", "delete addr_upload md5 :" + str + ", res:" + i);
          if (i > 0)
            b(5, this, str);
        }
      }
    }
    catch (Exception localException)
    {
      bool = false;
    }
    while (true)
    {
      this.cjB.cb(l);
      localch.addSplit("end");
      localch.dumpToLog();
      return bool;
      bool = true;
    }
  }

  public final boolean k(List paramList)
  {
    ch localch = new ch("MicroMsg.AddrUploadStorage", "set uploaded transaction");
    localch.addSplit("transation begin");
    long l = this.cjB.ca(Thread.currentThread().getId());
    boolean bool;
    try
    {
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        String str = (String)localIterator.next();
        if ((str != null) && (str.length() > 0))
        {
          h localh = new h();
          localh.cL(8);
          localh.x(cj.FC());
          ContentValues localContentValues = localh.oa();
          int i = localContentValues.size();
          int j = 0;
          if (i > 0)
          {
            com.tencent.mm.ap.i locali = this.cjB;
            String[] arrayOfString = new String[1];
            arrayOfString[0] = h.eW(str);
            j = locali.update("addr_upload", localContentValues, "id=?", arrayOfString);
          }
          aa.i("MicroMsg.AddrUploadStorage", "local contact uploaded : " + str + ", update result: " + j);
        }
      }
    }
    catch (Exception localException)
    {
      aa.e("MicroMsg.AddrUploadStorage", localException.getMessage());
      bool = false;
    }
    while (true)
    {
      this.cjB.cb(l);
      localch.addSplit("transation end");
      localch.dumpToLog();
      if (bool)
        b(3, this, null);
      return bool;
      bool = true;
    }
  }

  public final int yZ()
  {
    int i = this.cjB.delete("addr_upload", null, null);
    aa.d("MicroMsg.AddrUploadStorage", "delete addr_upload");
    if (i > 0)
      b(5, this, null);
    return i;
  }

  public final h z(long paramLong)
  {
    h localh = new h();
    String str = "select addr_upload.id,addr_upload.md5,addr_upload.peopleid,addr_upload.uploadtime,addr_upload.realname,addr_upload.realnamepyinitial,addr_upload.realnamequanpin,addr_upload.username,addr_upload.nickname,addr_upload.nicknamepyinitial,addr_upload.nicknamequanpin,addr_upload.type,addr_upload.moblie,addr_upload.email,addr_upload.status,addr_upload.reserved1,addr_upload.reserved2,addr_upload.reserved3,addr_upload.reserved4,addr_upload.lvbuf from addr_upload WHERE id=" + Long.toString(paramLong) + ';';
    Cursor localCursor = this.cjB.rawQuery(str, null);
    if (localCursor.moveToFirst())
      localh.convertFrom(localCursor);
    localCursor.close();
    return localh;
  }

  public final List za()
  {
    Cursor localCursor = this.cjB.rawQuery("select addr_upload.md5 from addr_upload where addr_upload.uploadtime = 0 AND addr_upload.type = 1", null);
    LinkedList localLinkedList = new LinkedList();
    while (localCursor.moveToNext())
      localLinkedList.add(localCursor.getString(0));
    localCursor.close();
    return localLinkedList;
  }

  public final List zb()
  {
    Cursor localCursor = this.cjB.rawQuery("select addr_upload.moblie , addr_upload.md5 from addr_upload where addr_upload.type = 0", null);
    LinkedList localLinkedList = new LinkedList();
    while (localCursor.moveToNext())
    {
      String[] arrayOfString = new String[2];
      arrayOfString[0] = localCursor.getString(0);
      arrayOfString[1] = localCursor.getString(1);
      localLinkedList.add(arrayOfString);
    }
    localCursor.close();
    return localLinkedList;
  }

  public final List zc()
  {
    Cursor localCursor = this.cjB.rawQuery("select addr_upload.moblie from addr_upload where addr_upload.uploadtime = 0 AND addr_upload.type = 0", null);
    LinkedList localLinkedList = new LinkedList();
    while (localCursor.moveToNext())
    {
      String str = c.kH(localCursor.getString(0));
      if (c.qe(str))
        localLinkedList.add(str);
    }
    localCursor.close();
    return localLinkedList;
  }

  public final List zd()
  {
    return ft("select  *  from addr_upload where ( addr_upload.username IS NOT NULL AND addr_upload.username!=\"" + cj.hR("") + "\" )");
  }

  public final List ze()
  {
    return ft("select  *  from addr_upload where ( addr_upload.username IS NOT NULL AND addr_upload.status!=\"0\" AND addr_upload.username!=\"" + cj.hR("") + "\" )");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.modelfriend.i
 * JD-Core Version:    0.6.2
 */