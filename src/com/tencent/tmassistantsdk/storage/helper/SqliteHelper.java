package com.tencent.tmassistantsdk.storage.helper;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import android.database.sqlite.SQLiteOpenHelper;
import android.os.SystemClock;
import com.tencent.tmassistantsdk.storage.table.ITableBase;

public abstract class SqliteHelper extends SQLiteOpenHelper
{
  public SqliteHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    super(paramContext, paramString, paramCursorFactory, paramInt);
  }

  private void createTable(SQLiteDatabase paramSQLiteDatabase)
  {
    Class[] arrayOfClass = getTables();
    int i = arrayOfClass.length;
    int j = 0;
    while (true)
      if (j < i)
      {
        Class localClass = arrayOfClass[j];
        try
        {
          String str2 = ((ITableBase)localClass.newInstance()).createTableSQL();
          str1 = str2;
          if ((str1 != null) && (str1.length() > 0))
            paramSQLiteDatabase.execSQL(str1);
          j++;
        }
        catch (InstantiationException localInstantiationException)
        {
          while (true)
            str1 = null;
        }
        catch (IllegalAccessException localIllegalAccessException)
        {
          while (true)
            String str1 = null;
        }
      }
  }

  public abstract int getDBVersion();

  public SQLiteDatabase getReadableDatabase()
  {
    SQLiteDatabase localSQLiteDatabase = super.getReadableDatabase();
    while ((localSQLiteDatabase.isDbLockedByCurrentThread()) || (localSQLiteDatabase.isDbLockedByOtherThreads()))
      SystemClock.sleep(10L);
    return localSQLiteDatabase;
  }

  public abstract Class[] getTables();

  public SQLiteDatabase getWritableDatabase()
  {
    SQLiteDatabase localSQLiteDatabase = super.getWritableDatabase();
    while ((localSQLiteDatabase.isDbLockedByCurrentThread()) || (localSQLiteDatabase.isDbLockedByOtherThreads()))
      SystemClock.sleep(10L);
    return localSQLiteDatabase;
  }

  public void onCreate(SQLiteDatabase paramSQLiteDatabase)
  {
    createTable(paramSQLiteDatabase);
  }

  public void onOpen(SQLiteDatabase paramSQLiteDatabase)
  {
    super.onOpen(paramSQLiteDatabase);
  }

  public void onUpgrade(SQLiteDatabase paramSQLiteDatabase, int paramInt1, int paramInt2)
  {
    while (paramInt1 < paramInt2)
    {
      Class[] arrayOfClass = getTables();
      int i = arrayOfClass.length;
      int j = 0;
      while (j < i)
      {
        Class localClass = arrayOfClass[j];
        try
        {
          String[] arrayOfString = ((ITableBase)localClass.newInstance()).getAlterSQL(paramInt1, paramInt1 + 1);
          if (arrayOfString != null)
            for (int k = 0; k < arrayOfString.length; k++)
              paramSQLiteDatabase.execSQL(arrayOfString[k]);
        }
        catch (Exception localException)
        {
          j++;
        }
      }
      paramInt1++;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.storage.helper.SqliteHelper
 * JD-Core Version:    0.6.2
 */