package com.tencent.mm.plugin.search.model;

import android.database.Cursor;
import com.tencent.mm.a.f;
import com.tencent.mm.ap.c;
import com.tencent.mm.compatible.c.s;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.e.ai;
import com.tencent.mm.sdk.platformtools.aa;
import info.guardianproject.database.sqlcipher.SQLiteDatabase;
import info.guardianproject.database.sqlcipher.SQLiteDatabaseCorruptException;
import info.guardianproject.database.sqlcipher.SQLiteException;
import java.io.Closeable;
import java.io.File;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

public final class ap extends ai
  implements Closeable
{
  private SQLiteDatabase eib;

  public ap(String paramString)
  {
    try
    {
      String str1 = new File(paramString, "IndexMicroMsg.db").getAbsolutePath();
      if (this.eib != null)
        this.eib.close();
      this.eib = SQLiteDatabase.openOrCreateDatabase(str1, null);
      String str2 = s.pU();
      long l = be.uz().sd();
      byte[] arrayOfByte = f.i((str2 + l).getBytes());
      SearchUtils.initFts(this.eib, arrayOfByte);
      this.eib.rawQuery("PRAGMA journal_mode=WAL;", null).close();
      this.eib.execSQL("PRAGMA synchronous=NORMAL;");
      boolean bool = av(0, 3);
      if (bool)
      {
        this.eib.execSQL("DROP TABLE IF EXISTS IndexContent;");
        this.eib.execSQL("DROP TABLE IF EXISTS IndexMeta;");
      }
      if (!a(this.eib, "IndexContent"))
        this.eib.execSQL("CREATE VIRTUAL TABLE IndexContent USING fts4(content, tokenize=mm, compress=mmenc, uncompress=mmdec);");
      this.eib.execSQL("CREATE TABLE IF NOT EXISTS IndexMeta (docid INTEGER PRIMARY KEY, type INT, subtype INT DEFAULT 0, entity_id INTEGER, aux_index TEXT, timestamp INTEGER, status INT DEFAULT 0);");
      this.eib.execSQL("CREATE INDEX IF NOT EXISTS IndexMeta_typeId ON IndexMeta(type, entity_id);");
      this.eib.execSQL("CREATE INDEX IF NOT EXISTS IndexMeta_aux ON IndexMeta(aux_index);");
      this.eib.execSQL("CREATE TABLE IF NOT EXISTS IndexVersion (type INTEGER PRIMARY KEY, version INTEGER);");
      this.eib.execSQL("CREATE TABLE IF NOT EXISTS ContactTopHits (query TEXT COLLATE NOCASE, type INT, entity_id INTEGER, score INT);");
      this.eib.execSQL("CREATE INDEX IF NOT EXISTS ContactTopHits_query ON ContactTopHits(query);");
      this.eib.execSQL("CREATE INDEX IF NOT EXISTS ContactTopHits_typeId ON ContactTopHits(type, entity_id);");
      this.eib.execSQL("CREATE INDEX IF NOT EXISTS ContactTopHits_score ON ContactTopHits(score);");
      this.eib.execSQL("CREATE TABLE IF NOT EXISTS ChatRoomMembers (chatroom TEXT, member TEXT);");
      this.eib.execSQL("CREATE INDEX IF NOT EXISTS ChatRoomMembers_chatroom ON ChatRoomMembers(chatroom);");
      this.eib.execSQL("CREATE INDEX IF NOT EXISTS ChatRoomMembers_member ON ChatRoomMembers(member);");
      if (bool)
        aw(0, 3);
      return;
    }
    catch (SQLiteDatabaseCorruptException localSQLiteDatabaseCorruptException1)
    {
      if (this.eib != null)
      {
        this.eib.close();
        this.eib = null;
      }
      new File(paramString, "IndexMicroMsg.db").delete();
      SQLiteDatabaseCorruptException localSQLiteDatabaseCorruptException2 = new SQLiteDatabaseCorruptException("Database corruption detected, reboot and rebuild completely.");
      localSQLiteDatabaseCorruptException2.initCause(localSQLiteDatabaseCorruptException1);
      throw localSQLiteDatabaseCorruptException2;
    }
  }

  public static int a(Map paramMap, int paramInt1, int paramInt2)
  {
    int i = 2147483647;
    if (paramInt1 == paramInt2)
      return 0;
    Integer localInteger1 = (Integer)paramMap.get(Integer.valueOf(paramInt1));
    int j;
    Integer localInteger2;
    if (localInteger1 == null)
    {
      j = i;
      localInteger2 = (Integer)paramMap.get(Integer.valueOf(paramInt2));
      if (localInteger2 != null)
        break label68;
    }
    while (true)
    {
      return j - i;
      j = localInteger1.intValue();
      break;
      label68: i = localInteger2.intValue();
    }
  }

  public static int a(int[] paramArrayOfInt, int paramInt1, int paramInt2)
  {
    int i = 2147483647;
    if (paramInt1 == paramInt2)
      return 0;
    int j;
    if (paramInt1 >= paramArrayOfInt.length)
    {
      j = i;
      if (paramInt2 < paramArrayOfInt.length)
        break label38;
    }
    while (true)
    {
      return j - i;
      j = paramArrayOfInt[paramInt1];
      break;
      label38: i = paramArrayOfInt[paramInt2];
    }
  }

  private static boolean a(SQLiteDatabase paramSQLiteDatabase, String paramString)
  {
    Cursor localCursor = paramSQLiteDatabase.rawQuery("SELECT 1 FROM sqlite_master WHERE type='table' AND name=?;", new String[] { paramString });
    boolean bool = localCursor.moveToNext();
    localCursor.close();
    return bool;
  }

  public final Cursor a(String paramString, int[] paramArrayOfInt)
  {
    String str1 = paramString.trim() + '%';
    String str2 = "SELECT query, type, entity_id, score FROM ContactTopHits WHERE query LIKE ? AND type IN " + SearchUtils.b(paramArrayOfInt) + " ORDER BY score DESC" + "" + ";";
    return this.eib.rawQuery(str2, new String[] { str1 });
  }

  public final Cursor a(int[] paramArrayOfInt, boolean paramBoolean1, boolean paramBoolean2, boolean paramBoolean3, boolean paramBoolean4, boolean paramBoolean5)
  {
    if ((!paramBoolean1) && (!paramBoolean2) && (!paramBoolean3) && (!paramBoolean4) && (!paramBoolean5))
      return c.aDv();
    if ((paramArrayOfInt == null) || (paramArrayOfInt.length == 0))
      return c.aDv();
    StringBuilder localStringBuilder = new StringBuilder(64);
    if (paramBoolean1)
      localStringBuilder.append("docid,");
    if (paramBoolean2)
      localStringBuilder.append("entity_id,");
    if (paramBoolean3)
      localStringBuilder.append("aux_index,");
    if (paramBoolean4)
      localStringBuilder.append("timestamp,");
    if (paramBoolean5)
      localStringBuilder.append("status,");
    localStringBuilder.setLength(-1 + localStringBuilder.length());
    String str1 = localStringBuilder.toString();
    String str2 = "SELECT DISTINCT " + str1 + " FROM IndexMeta WHERE type IN " + SearchUtils.b(paramArrayOfInt) + ";";
    return this.eib.rawQuery(str2, null);
  }

  public final Cursor a(String[] paramArrayOfString, int[] paramArrayOfInt)
  {
    StringBuilder localStringBuilder = new StringBuilder(32);
    int i = paramArrayOfString.length;
    for (int j = 0; j < i; j++)
    {
      String str3 = paramArrayOfString[j];
      localStringBuilder.append('"');
      localStringBuilder.append(str3);
      localStringBuilder.append("*\" ");
    }
    String str1 = localStringBuilder.toString();
    String str2 = "SELECT type, subtype, entity_id, aux_index, timestamp, content" + ", offsets(IndexContent)" + " FROM IndexContent, IndexMeta WHERE content MATCH ? AND IndexContent.docid = IndexMeta.docid AND type IN " + SearchUtils.b(paramArrayOfInt) + " AND status >= 0;";
    return this.eib.rawQuery(str2, new String[] { str1 });
  }

  public final List a(int[] paramArrayOfInt, String paramString)
  {
    String str1 = "SELECT docid FROM IndexMeta WHERE aux_index=? AND type IN " + SearchUtils.b(paramArrayOfInt) + ";";
    Cursor localCursor = this.eib.rawQuery(str1, new String[] { paramString });
    ArrayList localArrayList = new ArrayList(localCursor.getCount());
    while (localCursor.moveToNext())
      localArrayList.add(Long.valueOf(localCursor.getLong(0)));
    localCursor.close();
    if (localArrayList.size() > 0)
    {
      String str2 = "UPDATE IndexMeta SET status=? WHERE docid IN " + SearchUtils.a(localArrayList) + ";";
      SQLiteDatabase localSQLiteDatabase = this.eib;
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Integer.valueOf(1);
      localSQLiteDatabase.execSQL(str2, arrayOfObject);
    }
    return localArrayList;
  }

  public final void a(int paramInt1, int paramInt2, long paramLong1, String paramString1, long paramLong2, String paramString2)
  {
    boolean bool = this.eib.inTransaction();
    if (!bool)
      beginTransaction();
    try
    {
      this.eib.execSQL("INSERT INTO IndexContent (content) VALUES (?);", new Object[] { paramString2 });
      SQLiteDatabase localSQLiteDatabase = this.eib;
      Object[] arrayOfObject = new Object[5];
      arrayOfObject[0] = Integer.valueOf(paramInt1);
      arrayOfObject[1] = Integer.valueOf(paramInt2);
      arrayOfObject[2] = Long.valueOf(paramLong1);
      arrayOfObject[3] = paramString1;
      arrayOfObject[4] = Long.valueOf(paramLong2);
      localSQLiteDatabase.execSQL("INSERT INTO IndexMeta (docid, type, subtype, entity_id, aux_index, timestamp) VALUES (last_insert_rowid(), ?, ?, ?, ?, ?);", arrayOfObject);
      if (!bool)
        commit();
      return;
    }
    catch (SQLiteException localSQLiteException)
    {
      aa.e("MicroMsg.SearchStorage", "Failed inserting index, content: " + paramString2);
      throw localSQLiteException;
    }
  }

  public final void a(String paramString, String[] paramArrayOfString)
  {
    int i = 0;
    if ((paramArrayOfString == null) || (paramArrayOfString.length == 0));
    boolean bool;
    do
    {
      return;
      bool = this.eib.inTransaction();
      if (!bool)
        this.eib.beginTransaction();
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = paramString;
      int j = paramArrayOfString.length;
      while (i < j)
      {
        arrayOfObject[1] = paramArrayOfString[i];
        this.eib.execSQL("INSERT INTO ChatRoomMembers (chatroom, member) VALUES (?, ?);", arrayOfObject);
        i++;
      }
    }
    while (bool);
    this.eib.setTransactionSuccessful();
    this.eib.endTransaction();
  }

  public final void a(int[] paramArrayOfInt)
  {
    boolean bool = this.eib.inTransaction();
    if (!bool)
      this.eib.beginTransaction();
    if (paramArrayOfInt.length == 1)
    {
      this.eib.execSQL("DELETE FROM IndexContent WHERE docid IN (SELECT docid FROM IndexMeta WHERE type=" + paramArrayOfInt[0] + ");");
      this.eib.execSQL("DELETE FROM IndexMeta WHERE type=" + paramArrayOfInt[0] + ";");
    }
    while (true)
    {
      if (!bool)
      {
        this.eib.setTransactionSuccessful();
        this.eib.endTransaction();
      }
      return;
      this.eib.execSQL("DELETE FROM IndexContent WHERE docid IN (SELECT docid FROM IndexMeta WHERE type IN " + SearchUtils.b(paramArrayOfInt) + ");");
      this.eib.execSQL("DELETE FROM IndexMeta WHERE type IN " + SearchUtils.b(paramArrayOfInt) + ";");
    }
  }

  public final void a(int[] paramArrayOfInt, long paramLong)
  {
    boolean bool = this.eib.inTransaction();
    if (!bool)
      beginTransaction();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(paramLong);
    this.eib.execSQL("DELETE FROM IndexContent WHERE docid IN (SELECT docid FROM IndexMeta WHERE type IN " + SearchUtils.b(paramArrayOfInt) + " AND entity_id=?);", arrayOfObject);
    this.eib.execSQL("DELETE FROM IndexMeta WHERE type IN " + SearchUtils.b(paramArrayOfInt) + " AND entity_id=?;", arrayOfObject);
    if (!bool)
      commit();
  }

  public final void a(int[] paramArrayOfInt, long paramLong1, long paramLong2)
  {
    boolean bool = this.eib.inTransaction();
    if (!bool)
      beginTransaction();
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Long.valueOf(paramLong1);
    arrayOfObject[1] = Long.valueOf(paramLong2);
    this.eib.execSQL("DELETE FROM IndexContent WHERE docid IN (SELECT docid FROM IndexMeta WHERE type IN " + SearchUtils.b(paramArrayOfInt) + " AND entity_id=? AND timestamp=?);", arrayOfObject);
    this.eib.execSQL("DELETE FROM IndexMeta WHERE type IN " + SearchUtils.b(paramArrayOfInt) + " AND entity_id=? AND timestamp=?;", arrayOfObject);
    if (!bool)
      commit();
  }

  public final void aE(long paramLong)
  {
    boolean bool = this.eib.inTransaction();
    if (!bool)
      this.eib.beginTransaction();
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Long.valueOf(paramLong);
    this.eib.execSQL("DELETE FROM IndexContent WHERE docid=?;", arrayOfObject);
    this.eib.execSQL("DELETE FROM IndexMeta WHERE docid=?;", arrayOfObject);
    if (!bool)
    {
      this.eib.setTransactionSuccessful();
      this.eib.endTransaction();
    }
  }

  public final void aaU()
  {
    this.eib.execSQL("INSERT INTO IndexContent(IndexContent) VALUES ('optimize');");
  }

  public final Cursor aaV()
  {
    return this.eib.rawQuery("SELECT DISTINCT chatroom FROM ChatRoomMembers;", null);
  }

  public final boolean av(int paramInt1, int paramInt2)
  {
    int i;
    if (a(this.eib, "IndexVersion"))
    {
      String str = "SELECT version FROM IndexVersion WHERE type=" + paramInt1 + ";";
      Cursor localCursor = this.eib.rawQuery(str, null);
      if (localCursor.moveToFirst())
      {
        i = localCursor.getInt(0);
        localCursor.close();
      }
    }
    while (true)
    {
      boolean bool = false;
      if (i != paramInt2)
        bool = true;
      return bool;
      i = 0;
      break;
      i = 0;
    }
  }

  public final void aw(int paramInt1, int paramInt2)
  {
    SQLiteDatabase localSQLiteDatabase = this.eib;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    localSQLiteDatabase.execSQL("INSERT OR REPLACE INTO IndexVersion (type, version) VALUES (?, ?);", arrayOfObject);
  }

  public final void b(String paramString, aq paramaq)
  {
    boolean bool = this.eib.inTransaction();
    if (!bool)
      this.eib.beginTransaction();
    long l = 0L;
    SQLiteDatabase localSQLiteDatabase1 = this.eib;
    String[] arrayOfString1 = new String[3];
    arrayOfString1[0] = paramString;
    arrayOfString1[1] = Integer.toString(paramaq.type);
    arrayOfString1[2] = Long.toString(paramaq.eic);
    localSQLiteDatabase1.rawQuery("SELECT ROWID FROM ContactTopHits WHERE query=? AND type=? AND entity_id=?;", arrayOfString1);
    SQLiteDatabase localSQLiteDatabase2 = this.eib;
    String[] arrayOfString2 = new String[3];
    arrayOfString2[0] = paramString;
    arrayOfString2[1] = Integer.toString(paramaq.type);
    arrayOfString2[2] = Long.toString(paramaq.eic);
    Cursor localCursor = localSQLiteDatabase2.rawQuery("SELECT ROWID FROM ContactTopHits WHERE query=? AND type=? AND entity_id=?;", arrayOfString2);
    if (localCursor.moveToFirst())
      l = localCursor.getLong(0);
    for (int i = 1; ; i = 0)
    {
      localCursor.close();
      String str;
      Object[] arrayOfObject1;
      if (i != 0)
      {
        Object[] arrayOfObject3 = new Object[1];
        arrayOfObject3[0] = Long.valueOf(l);
        str = "UPDATE ContactTopHits SET score=score+4 WHERE ROWID=?;";
        arrayOfObject1 = arrayOfObject3;
      }
      while (true)
      {
        this.eib.execSQL(str, arrayOfObject1);
        Object[] arrayOfObject2 = { paramString };
        this.eib.execSQL("DELETE FROM ContactTopHits WHERE query=? AND score<=1;", arrayOfObject2);
        this.eib.execSQL("UPDATE ContactTopHits SET score=score-1 WHERE query=?;", arrayOfObject2);
        if (!bool)
        {
          this.eib.setTransactionSuccessful();
          this.eib.endTransaction();
        }
        return;
        str = "INSERT INTO ContactTopHits (query, type, entity_id, score) VALUES (?, ?, ?, 4);";
        arrayOfObject1 = new Object[3];
        arrayOfObject1[0] = paramString;
        arrayOfObject1[1] = Integer.valueOf(paramaq.type);
        arrayOfObject1[2] = Long.valueOf(paramaq.eic);
      }
    }
  }

  public final void b(int[] paramArrayOfInt, long paramLong)
  {
    String str = "DELETE FROM ContactTopHits WHERE type IN " + SearchUtils.b(paramArrayOfInt) + " AND entity_id=" + paramLong + ";";
    this.eib.execSQL(str);
  }

  public final void b(int[] paramArrayOfInt, String paramString)
  {
    boolean bool = this.eib.inTransaction();
    if (!bool)
      this.eib.beginTransaction();
    Object[] arrayOfObject = { paramString };
    this.eib.execSQL("DELETE FROM IndexContent WHERE docid IN (SELECT docid FROM IndexMeta WHERE type IN " + SearchUtils.b(paramArrayOfInt) + "AND aux_index=?);", arrayOfObject);
    this.eib.execSQL("DELETE FROM IndexMeta WHERE type IN " + SearchUtils.b(paramArrayOfInt) + "AND aux_index=?;", arrayOfObject);
    if (!bool)
    {
      this.eib.setTransactionSuccessful();
      this.eib.endTransaction();
    }
  }

  public final void beginTransaction()
  {
    if ((this.eib == null) || (this.eib.inTransaction()))
      return;
    this.eib.beginTransaction();
    aa.i("MicroMsg.SearchStorage", "begin transaction");
  }

  public final void close()
  {
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = this.eib;
    if (this.eib == null);
    for (boolean bool = false; ; bool = this.eib.isOpen())
    {
      arrayOfObject1[1] = Boolean.valueOf(bool);
      aa.c("MicroMsg.SearchStorage", "close db:%s isopen:%b ", arrayOfObject1);
      if ((this.eib == null) || (!this.eib.isOpen()))
        return;
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Boolean.valueOf(this.eib.inTransaction());
      aa.c("MicroMsg.SearchStorage", "close in trans :%b ", arrayOfObject2);
      while (this.eib.inTransaction())
        this.eib.endTransaction();
    }
    this.eib.close();
    this.eib = null;
  }

  public final void commit()
  {
    if ((this.eib == null) || (!this.eib.inTransaction()))
      return;
    this.eib.setTransactionSuccessful();
    this.eib.endTransaction();
    aa.i("MicroMsg.SearchStorage", "commit");
  }

  protected final void finalize()
  {
    close();
    super.finalize();
  }

  public final Cursor mH(String paramString)
  {
    return this.eib.rawQuery("SELECT DISTINCT chatroom FROM ChatRoomMembers WHERE member=?;", new String[] { paramString });
  }

  public final void mI(String paramString)
  {
    this.eib.execSQL("DELETE FROM ChatRoomMembers WHERE chatroom=?;", new Object[] { paramString });
  }

  public final void rollback()
  {
    if ((this.eib == null) || (!this.eib.inTransaction()))
      return;
    this.eib.endTransaction();
    aa.i("MicroMsg.SearchStorage", "rollback");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.search.model.ap
 * JD-Core Version:    0.6.2
 */