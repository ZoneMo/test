package com.tencent.tmassistantsdk.storage.table;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import com.tencent.tmassistantsdk.storage.helper.AstSDKDBHelper;
import com.tencent.tmassistantsdk.storage.helper.SqliteHelper;
import java.util.HashMap;

public class DownloadSettingTable
  implements ITableBase
{
  public static final String CREATE_TABLE_SQL = "CREATE TABLE if not exists settingInfo( _id INTEGER PRIMARY KEY AUTOINCREMENT, settingField TEXT , value TEXT,type TEXT);";
  public static final String QUERY_SQL = "select * from settingInfo";
  public static final String TABLE_NAME = "settingInfo";

  public static int delete()
  {
    return AstSDKDBHelper.getInstance().getWritableDatabase().delete("settingInfo", null, null);
  }

  public static HashMap query()
  {
    Cursor localCursor = null;
    HashMap localHashMap = new HashMap();
    try
    {
      localCursor = AstSDKDBHelper.getInstance().getReadableDatabase().rawQuery("select * from settingInfo", null);
      if ((localCursor != null) && (localCursor.moveToFirst()))
      {
        boolean bool;
        do
        {
          localHashMap.put(localCursor.getString(localCursor.getColumnIndex("settingField")), localCursor.getString(localCursor.getColumnIndex("value")));
          bool = localCursor.moveToNext();
        }
        while (bool);
        return localHashMap;
      }
      return localHashMap;
    }
    catch (Exception localException)
    {
      return localHashMap;
    }
    finally
    {
      if (localCursor != null)
        localCursor.close();
    }
  }

  public static void save(String paramString1, String paramString2, String paramString3)
  {
    if ((paramString1 != null) && (paramString2 != null));
    try
    {
      SQLiteDatabase localSQLiteDatabase = AstSDKDBHelper.getInstance().getWritableDatabase();
      if (update(paramString1, paramString2, paramString3, localSQLiteDatabase) <= 0)
      {
        ContentValues localContentValues = new ContentValues();
        localContentValues.put("settingField", paramString1);
        localContentValues.put("value", paramString2);
        localContentValues.put("type", paramString3);
        localSQLiteDatabase.insert("settingInfo", null, localContentValues);
      }
      return;
    }
    catch (Exception localException)
    {
    }
  }

  // ERROR //
  private static int update(String paramString1, String paramString2, String paramString3, SQLiteDatabase paramSQLiteDatabase)
  {
    // Byte code:
    //   0: aload_0
    //   1: ifnull +7 -> 8
    //   4: aload_1
    //   5: ifnonnull +9 -> 14
    //   8: iconst_m1
    //   9: istore 4
    //   11: iload 4
    //   13: ireturn
    //   14: new 89	android/content/ContentValues
    //   17: dup
    //   18: invokespecial 90	android/content/ContentValues:<init>	()V
    //   21: astore 5
    //   23: aload 5
    //   25: ldc 61
    //   27: aload_0
    //   28: invokevirtual 93	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   31: aload 5
    //   33: ldc 71
    //   35: aload_1
    //   36: invokevirtual 93	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   39: aload 5
    //   41: ldc 95
    //   43: aload_2
    //   44: invokevirtual 93	android/content/ContentValues:put	(Ljava/lang/String;Ljava/lang/String;)V
    //   47: aload_3
    //   48: ldc 16
    //   50: aload 5
    //   52: ldc 101
    //   54: iconst_1
    //   55: anewarray 103	java/lang/String
    //   58: dup
    //   59: iconst_0
    //   60: aload_0
    //   61: aastore
    //   62: invokevirtual 106	android/database/sqlite/SQLiteDatabase:update	(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    //   65: istore 8
    //   67: iload 8
    //   69: istore 4
    //   71: iload 4
    //   73: ifgt -62 -> 11
    //   76: iconst_0
    //   77: ireturn
    //   78: astore 7
    //   80: bipush 254
    //   82: ireturn
    //   83: astore 6
    //   85: aload 6
    //   87: athrow
    //
    // Exception table:
    //   from	to	target	type
    //   14	67	78	java/lang/Exception
    //   14	67	83	finally
  }

  public String createTableSQL()
  {
    return "CREATE TABLE if not exists settingInfo( _id INTEGER PRIMARY KEY AUTOINCREMENT, settingField TEXT , value TEXT,type TEXT);";
  }

  public String[] getAlterSQL(int paramInt1, int paramInt2)
  {
    return null;
  }

  public SqliteHelper getHelper()
  {
    return AstSDKDBHelper.getInstance();
  }

  public String tableName()
  {
    return "settingInfo";
  }

  public int tableVersion()
  {
    return 1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.storage.table.DownloadSettingTable
 * JD-Core Version:    0.6.2
 */