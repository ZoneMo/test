package com.tencent.tmassistantsdk.storage.table;

import android.content.ContentValues;
import android.database.sqlite.SQLiteDatabase;
import android.database.sqlite.SQLiteStatement;
import com.tencent.tmassistantsdk.storage.helper.AstSDKDBHelper;
import com.tencent.tmassistantsdk.storage.helper.SqliteHelper;
import java.util.Iterator;
import java.util.List;

public class DownloadLogTable
  implements ITableBase
{
  public static final String CREATE_TABLE_SQL = "CREATE TABLE if not exists logData( _id INTEGER PRIMARY KEY AUTOINCREMENT, logData BLOB );";
  private static final String SQL_INSERT = "INSERT INTO logData logData = ?";
  public static final String TABLE_NAME = "logData";
  private static DownloadLogTable mInstance = null;

  public static DownloadLogTable getInstance()
  {
    try
    {
      if (mInstance == null)
        mInstance = new DownloadLogTable();
      DownloadLogTable localDownloadLogTable = mInstance;
      return localDownloadLogTable;
    }
    finally
    {
    }
  }

  public String createTableSQL()
  {
    return "CREATE TABLE if not exists logData( _id INTEGER PRIMARY KEY AUTOINCREMENT, logData BLOB );";
  }

  public boolean delete(List paramList)
  {
    if ((paramList == null) || (paramList.size() <= 0))
      return false;
    StringBuffer localStringBuffer = new StringBuffer("(");
    Iterator localIterator = paramList.iterator();
    while (localIterator.hasNext())
    {
      localStringBuffer.append((Long)localIterator.next());
      localStringBuffer.append(",");
    }
    if (localStringBuffer.length() > 0)
      localStringBuffer.deleteCharAt(-1 + localStringBuffer.length());
    localStringBuffer.append(")");
    getHelper().getWritableDatabase().delete("logData", "_id in " + localStringBuffer, null);
    return true;
  }

  public String[] getAlterSQL(int paramInt1, int paramInt2)
  {
    return null;
  }

  // ERROR //
  public DownloadLogTable.DataWrapper getDatas(int paramInt)
  {
    // Byte code:
    //   0: aconst_null
    //   1: astore_2
    //   2: new 113	com/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper
    //   5: dup
    //   6: invokespecial 114	com/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper:<init>	()V
    //   9: astore_3
    //   10: aload_3
    //   11: new 116	java/util/ArrayList
    //   14: dup
    //   15: invokespecial 117	java/util/ArrayList:<init>	()V
    //   18: putfield 121	com/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper:idList	Ljava/util/List;
    //   21: aload_3
    //   22: new 116	java/util/ArrayList
    //   25: dup
    //   26: invokespecial 117	java/util/ArrayList:<init>	()V
    //   29: putfield 124	com/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper:dataList	Ljava/util/List;
    //   32: iload_1
    //   33: ifle +216 -> 249
    //   36: new 91	java/lang/StringBuilder
    //   39: dup
    //   40: ldc 126
    //   42: invokespecial 94	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   45: iload_1
    //   46: invokevirtual 129	java/lang/StringBuilder:append	(I)Ljava/lang/StringBuilder;
    //   49: invokevirtual 100	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   52: astore 4
    //   54: aload_0
    //   55: invokevirtual 83	com/tencent/tmassistantsdk/storage/table/DownloadLogTable:getHelper	()Lcom/tencent/tmassistantsdk/storage/helper/SqliteHelper;
    //   58: invokevirtual 132	com/tencent/tmassistantsdk/storage/helper/SqliteHelper:getReadableDatabase	()Landroid/database/sqlite/SQLiteDatabase;
    //   61: astore 5
    //   63: aload 5
    //   65: ldc 16
    //   67: aconst_null
    //   68: aconst_null
    //   69: aconst_null
    //   70: aconst_null
    //   71: aconst_null
    //   72: ldc 134
    //   74: aload 4
    //   76: invokevirtual 138	android/database/sqlite/SQLiteDatabase:query	(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    //   79: astore 10
    //   81: aload 10
    //   83: astore 8
    //   85: aload 8
    //   87: ifnull +90 -> 177
    //   90: aload 8
    //   92: invokeinterface 143 1 0
    //   97: ifeq +80 -> 177
    //   100: aload 8
    //   102: aload 8
    //   104: ldc 145
    //   106: invokeinterface 149 2 0
    //   111: invokeinterface 153 2 0
    //   116: lstore 13
    //   118: aload_3
    //   119: getfield 121	com/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper:idList	Ljava/util/List;
    //   122: lload 13
    //   124: invokestatic 157	java/lang/Long:valueOf	(J)Ljava/lang/Long;
    //   127: invokeinterface 161 2 0
    //   132: pop
    //   133: aload 8
    //   135: aload 8
    //   137: ldc 16
    //   139: invokeinterface 149 2 0
    //   144: invokeinterface 165 2 0
    //   149: astore 16
    //   151: aload_3
    //   152: getfield 124	com/tencent/tmassistantsdk/storage/table/DownloadLogTable$DataWrapper:dataList	Ljava/util/List;
    //   155: aload 16
    //   157: invokeinterface 161 2 0
    //   162: pop
    //   163: aload 8
    //   165: invokeinterface 168 1 0
    //   170: istore 18
    //   172: iload 18
    //   174: ifne -74 -> 100
    //   177: aload 8
    //   179: ifnull +10 -> 189
    //   182: aload 8
    //   184: invokeinterface 171 1 0
    //   189: aload_3
    //   190: astore 9
    //   192: aload 9
    //   194: areturn
    //   195: astore 7
    //   197: aconst_null
    //   198: astore 8
    //   200: aconst_null
    //   201: astore 9
    //   203: aload 8
    //   205: ifnull -13 -> 192
    //   208: aload 8
    //   210: invokeinterface 171 1 0
    //   215: aconst_null
    //   216: areturn
    //   217: astore 6
    //   219: aload_2
    //   220: ifnull +9 -> 229
    //   223: aload_2
    //   224: invokeinterface 171 1 0
    //   229: aload 6
    //   231: athrow
    //   232: astore 12
    //   234: aload 8
    //   236: astore_2
    //   237: aload 12
    //   239: astore 6
    //   241: goto -22 -> 219
    //   244: astore 11
    //   246: goto -46 -> 200
    //   249: aconst_null
    //   250: astore 4
    //   252: goto -198 -> 54
    //
    // Exception table:
    //   from	to	target	type
    //   63	81	195	java/lang/Exception
    //   63	81	217	finally
    //   90	100	232	finally
    //   100	172	232	finally
    //   90	100	244	java/lang/Exception
    //   100	172	244	java/lang/Exception
  }

  public SqliteHelper getHelper()
  {
    return AstSDKDBHelper.getInstance();
  }

  public boolean save(List paramList)
  {
    SQLiteDatabase localSQLiteDatabase = getHelper().getWritableDatabase();
    try
    {
      localSQLiteDatabase.beginTransaction();
      SQLiteStatement localSQLiteStatement = localSQLiteDatabase.compileStatement("INSERT INTO logData logData = ?");
      Iterator localIterator = paramList.iterator();
      while (localIterator.hasNext())
      {
        localSQLiteStatement.bindBlob(1, (byte[])localIterator.next());
        localSQLiteStatement.executeInsert();
      }
    }
    catch (Exception localException)
    {
      return false;
      localSQLiteDatabase.setTransactionSuccessful();
      return true;
    }
    finally
    {
      localSQLiteDatabase.endTransaction();
    }
  }

  public boolean save(byte[] paramArrayOfByte)
  {
    ContentValues localContentValues = new ContentValues();
    localContentValues.put("logData", paramArrayOfByte);
    return getHelper().getWritableDatabase().insert("logData", null, localContentValues) > 0L;
  }

  public String tableName()
  {
    return "logData";
  }

  public int tableVersion()
  {
    return 1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.storage.table.DownloadLogTable
 * JD-Core Version:    0.6.2
 */