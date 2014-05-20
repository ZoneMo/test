package com.tencent.tmassistantsdk.channel;

import android.content.ContentValues;
import android.database.Cursor;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteException;
import android.os.Environment;
import android.os.SystemClock;
import java.io.File;
import java.util.ArrayList;

public class DBOption
{
  private static final String CREATE_TABLE_SQL = "CREATE TABLE if not exists channeldata( itemId INTEGER PRIMARY KEY AUTOINCREMENT, itemData BLOB);";
  private static final int DATEBASE_VERSION = 1;
  private static final String DB_NAME = ".SystemConfig.db";
  private static final String QUERY_ALL_SQL = "select * from channeldata";
  private static final String TABLE_NAME = "channeldata";
  private String DB_PATH = "";

  public DBOption()
  {
    File localFile1 = Environment.getExternalStorageDirectory();
    this.DB_PATH = (localFile1.getPath() + "/tencent/assistant/");
    File localFile2 = new File(this.DB_PATH);
    if (!localFile2.exists())
      localFile2.mkdirs();
    this.DB_PATH += ".SystemConfig.db";
  }

  private void checkAndCreateTable(SQLiteDatabase paramSQLiteDatabase)
  {
    int i = paramSQLiteDatabase.getVersion();
    if (i != 1)
    {
      paramSQLiteDatabase.beginTransaction();
      if (i != 0);
    }
    try
    {
      paramSQLiteDatabase.execSQL("CREATE TABLE if not exists channeldata( itemId INTEGER PRIMARY KEY AUTOINCREMENT, itemData BLOB);");
      paramSQLiteDatabase.setVersion(1);
      paramSQLiteDatabase.setTransactionSuccessful();
      return;
    }
    finally
    {
      paramSQLiteDatabase.endTransaction();
    }
  }

  private void closeDB(SQLiteDatabase paramSQLiteDatabase)
  {
    if ((paramSQLiteDatabase != null) && (paramSQLiteDatabase.isOpen()));
    try
    {
      paramSQLiteDatabase.close();
      return;
    }
    catch (Exception localException)
    {
    }
  }

  // ERROR //
  private SQLiteDatabase getReadableDatabase()
  {
    // Byte code:
    //   0: aload_0
    //   1: monitorenter
    //   2: new 40	java/io/File
    //   5: dup
    //   6: aload_0
    //   7: getfield 29	com/tencent/tmassistantsdk/channel/DBOption:DB_PATH	Ljava/lang/String;
    //   10: invokespecial 56	java/io/File:<init>	(Ljava/lang/String;)V
    //   13: invokevirtual 60	java/io/File:exists	()Z
    //   16: istore_2
    //   17: aconst_null
    //   18: astore_3
    //   19: iload_2
    //   20: ifne +7 -> 27
    //   23: aload_0
    //   24: monitorexit
    //   25: aload_3
    //   26: areturn
    //   27: iconst_0
    //   28: istore 4
    //   30: iload 4
    //   32: bipush 20
    //   34: if_icmpge -11 -> 23
    //   37: aload_0
    //   38: getfield 29	com/tencent/tmassistantsdk/channel/DBOption:DB_PATH	Ljava/lang/String;
    //   41: aconst_null
    //   42: iconst_1
    //   43: invokestatic 104	android/database/sqlite/SQLiteDatabase:openDatabase	(Ljava/lang/String;Landroid/database/sqlite/SQLiteDatabase$CursorFactory;I)Landroid/database/sqlite/SQLiteDatabase;
    //   46: astore 6
    //   48: aload 6
    //   50: astore_3
    //   51: aload_3
    //   52: ifnonnull -29 -> 23
    //   55: ldc2_w 105
    //   58: invokestatic 112	android/os/SystemClock:sleep	(J)V
    //   61: iinc 4 1
    //   64: goto -34 -> 30
    //   67: astore_1
    //   68: aload_0
    //   69: monitorexit
    //   70: aload_1
    //   71: athrow
    //   72: astore 5
    //   74: goto -23 -> 51
    //
    // Exception table:
    //   from	to	target	type
    //   2	17	67	finally
    //   37	48	67	finally
    //   55	61	67	finally
    //   37	48	72	android/database/sqlite/SQLiteException
  }

  private SQLiteDatabase getWritableDatabase()
  {
    Object localObject = null;
    int i = 0;
    while (true)
    {
      if (i < 20);
      try
      {
        SQLiteDatabase localSQLiteDatabase = SQLiteDatabase.openOrCreateDatabase(this.DB_PATH, null);
        localObject = localSQLiteDatabase;
        label23: if (localObject == null)
        {
          SystemClock.sleep(50L);
          i++;
          continue;
        }
        checkAndCreateTable(localObject);
        return localObject;
      }
      catch (SQLiteException localSQLiteException)
      {
        break label23;
      }
    }
  }

  public boolean delete(long paramLong)
  {
    SQLiteDatabase localSQLiteDatabase = getWritableDatabase();
    if (localSQLiteDatabase != null)
    {
      String[] arrayOfString = new String[1];
      arrayOfString[0] = String.valueOf(paramLong);
      localSQLiteDatabase.delete("channeldata", "itemId=?", arrayOfString);
      closeDB(localSQLiteDatabase);
      return true;
    }
    return false;
  }

  public long insert(TMAssistantSDKChannelDataItem paramTMAssistantSDKChannelDataItem)
  {
    if (paramTMAssistantSDKChannelDataItem == null);
    byte[] arrayOfByte;
    SQLiteDatabase localSQLiteDatabase;
    do
    {
      do
      {
        return -1L;
        arrayOfByte = paramTMAssistantSDKChannelDataItem.getBuffer();
      }
      while (arrayOfByte == null);
      localSQLiteDatabase = getWritableDatabase();
    }
    while (localSQLiteDatabase == null);
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("itemData", arrayOfByte);
    long l = localSQLiteDatabase.insert("channeldata", "", localContentValues);
    closeDB(localSQLiteDatabase);
    return l;
  }

  public ArrayList queryAll()
  {
    SQLiteDatabase localSQLiteDatabase = getReadableDatabase();
    ArrayList localArrayList = null;
    Cursor localCursor;
    if (localSQLiteDatabase != null)
    {
      localCursor = localSQLiteDatabase.rawQuery("select * from channeldata", null);
      if ((localCursor != null) && (localCursor.moveToFirst() == true))
      {
        int i = localCursor.getColumnIndex("itemId");
        int j = localCursor.getColumnIndex("itemData");
        localArrayList = new ArrayList();
        do
        {
          int k = localCursor.getInt(i);
          TMAssistantSDKChannelDataItem localTMAssistantSDKChannelDataItem = TMAssistantSDKChannelDataItem.getDataItemFromByte(localCursor.getBlob(j));
          if (localTMAssistantSDKChannelDataItem != null)
          {
            localTMAssistantSDKChannelDataItem.setDBIdentity(k);
            localArrayList.add(localTMAssistantSDKChannelDataItem);
          }
        }
        while (localCursor.moveToNext());
        closeDB(localSQLiteDatabase);
      }
    }
    else
    {
      return localArrayList;
    }
    localCursor.close();
    closeDB(localSQLiteDatabase);
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.channel.DBOption
 * JD-Core Version:    0.6.2
 */