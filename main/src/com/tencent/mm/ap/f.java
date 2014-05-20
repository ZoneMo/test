package com.tencent.mm.ap;

import android.content.ContentValues;
import android.database.Cursor;
import com.tencent.mm.sdk.platformtools.aa;
import junit.framework.Assert;

final class f
{
  private info.guardianproject.database.sqlcipher.SQLiteDatabase gju = null;
  private android.database.sqlite.SQLiteDatabase gjv = null;
  private boolean gjw = false;

  public static boolean a(f paramf, String paramString)
  {
    boolean bool;
    if ((paramf == null) || (paramString == null))
    {
      Object[] arrayOfObject = new Object[2];
      if (paramf == null)
      {
        bool = true;
        arrayOfObject[0] = Boolean.valueOf(bool);
        arrayOfObject[1] = paramString;
        aa.b("MicroMsg.netscene.MMDataBase", "[arthurdan.checkTableExist] Notice!!! null == db: %b, table: %s", arrayOfObject);
      }
    }
    int i;
    do
    {
      Cursor localCursor;
      do
      {
        return false;
        bool = false;
        break;
        localCursor = paramf.rawQuery("select tbl_name from sqlite_master  where type = \"table\" and tbl_name=\"" + paramString + "\"", null);
      }
      while (localCursor == null);
      i = localCursor.getCount();
      localCursor.close();
    }
    while (i <= 0);
    return true;
  }

  private boolean aDw()
  {
    if ((this.gju != null) && (this.gjv != null))
      Assert.assertTrue("two db not null at same time", false);
    if ((this.gju == null) && (this.gjv == null))
      Assert.assertTrue("two db null at same time", false);
    info.guardianproject.database.sqlcipher.SQLiteDatabase localSQLiteDatabase = this.gju;
    boolean bool = false;
    if (localSQLiteDatabase != null)
      bool = true;
    return bool;
  }

  public static f vK(String paramString)
  {
    f localf = new f();
    if ((paramString == null) || (paramString.length() == 0))
    {
      localf.gjv = android.database.sqlite.SQLiteDatabase.create(null);
      localf.gjw = true;
      if (localf.gjv != null);
    }
    while (true)
    {
      return null;
      return localf;
      try
      {
        localf.gjv = android.database.sqlite.SQLiteDatabase.openOrCreateDatabase(paramString, null);
        label52: if (localf.gjv == null)
          continue;
        return localf;
      }
      catch (Exception localException)
      {
        break label52;
      }
    }
  }

  public static f vL(String paramString)
  {
    f localf = new f();
    if ((paramString == null) || (paramString.length() == 0))
    {
      localf.gju = info.guardianproject.database.sqlcipher.SQLiteDatabase.openOrCreateDatabase(":memory:", null);
      localf.gjw = true;
      if (localf.gju != null);
    }
    while (true)
    {
      return null;
      return localf;
      try
      {
        localf.gju = info.guardianproject.database.sqlcipher.SQLiteDatabase.openOrCreateDatabase(paramString, null);
        label54: if (localf.gju == null)
          continue;
        return localf;
      }
      catch (Exception localException)
      {
        break label54;
      }
    }
  }

  public final Cursor K(String paramString, boolean paramBoolean)
  {
    return this.gju.rawQuery(paramString, null, paramBoolean);
  }

  public final Cursor a(String paramString1, String[] paramArrayOfString1, String paramString2, String[] paramArrayOfString2, String paramString3, String paramString4)
  {
    if (aDw())
      return this.gju.query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, null, paramString4);
    return this.gjv.query(paramString1, paramArrayOfString1, paramString2, paramArrayOfString2, paramString3, null, paramString4);
  }

  public final void beginTransaction()
  {
    if (aDw())
    {
      this.gju.beginTransaction();
      return;
    }
    this.gjv.beginTransaction();
  }

  public final void close()
  {
    try
    {
      if ((this.gju != null) && (this.gju.isOpen()))
      {
        this.gju.close();
        this.gju = null;
      }
      if ((this.gjv != null) && (this.gjv.isOpen()))
      {
        this.gjv.close();
        this.gjv = null;
      }
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final int delete(String paramString1, String paramString2, String[] paramArrayOfString)
  {
    if (aDw())
      return this.gju.delete(paramString1, paramString2, paramArrayOfString);
    return this.gjv.delete(paramString1, paramString2, paramArrayOfString);
  }

  public final void endTransaction()
  {
    if (aDw())
    {
      this.gju.setTransactionSuccessful();
      this.gju.endTransaction();
      return;
    }
    this.gjv.setTransactionSuccessful();
    this.gjv.endTransaction();
  }

  public final void execSQL(String paramString)
  {
    if (aDw())
    {
      this.gju.execSQL(paramString);
      return;
    }
    this.gjv.execSQL(paramString);
  }

  public final String getPath()
  {
    if (aDw())
      return this.gju.getPath();
    return this.gjv.getPath();
  }

  public final long insert(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    if (aDw())
      return this.gju.insert(paramString1, paramString2, paramContentValues);
    return this.gjv.insert(paramString1, paramString2, paramContentValues);
  }

  public final boolean isOpen()
  {
    if ((aDw()) && (this.gju != null))
      return this.gju.isOpen();
    if (this.gjv != null)
      return this.gjv.isOpen();
    return false;
  }

  public final Cursor rawQuery(String paramString, String[] paramArrayOfString)
  {
    if (aDw())
      return this.gju.rawQuery(paramString, paramArrayOfString);
    return this.gjv.rawQuery(paramString, paramArrayOfString);
  }

  public final long replace(String paramString1, String paramString2, ContentValues paramContentValues)
  {
    if (aDw())
      return this.gju.replace(paramString1, paramString2, paramContentValues);
    return this.gjv.replace(paramString1, paramString2, paramContentValues);
  }

  public final int update(String paramString1, ContentValues paramContentValues, String paramString2, String[] paramArrayOfString)
  {
    if (aDw())
      return this.gju.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
    return this.gjv.update(paramString1, paramContentValues, paramString2, paramArrayOfString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ap.f
 * JD-Core Version:    0.6.2
 */