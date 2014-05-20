package info.guardianproject.database.sqlcipher;

import android.database.Cursor;

public class SQLiteDirectCursorDriverInJava
  implements SQLiteCursorDriver
{
  private Cursor mCursor;
  private SQLiteDatabase mDatabase;
  private String mEditTable;
  private SQLiteQueryInJava mQuery;
  private String mSql;

  public SQLiteDirectCursorDriverInJava(SQLiteDatabase paramSQLiteDatabase, String paramString1, String paramString2)
  {
    this.mDatabase = paramSQLiteDatabase;
    this.mEditTable = paramString2;
    this.mSql = paramString1;
  }

  public void cursorClosed()
  {
    this.mCursor = null;
  }

  public void cursorDeactivated()
  {
  }

  public void cursorRequeried(Cursor paramCursor)
  {
  }

  // ERROR //
  public Cursor query(SQLiteDatabase.CursorFactory paramCursorFactory, String[] paramArrayOfString)
  {
    // Byte code:
    //   0: iconst_0
    //   1: istore_3
    //   2: new 36	info/guardianproject/database/sqlcipher/SQLiteQueryInJava
    //   5: dup
    //   6: aload_0
    //   7: getfield 22	info/guardianproject/database/sqlcipher/SQLiteDirectCursorDriverInJava:mDatabase	Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;
    //   10: aload_0
    //   11: getfield 26	info/guardianproject/database/sqlcipher/SQLiteDirectCursorDriverInJava:mSql	Ljava/lang/String;
    //   14: iconst_0
    //   15: aload_2
    //   16: invokespecial 39	info/guardianproject/database/sqlcipher/SQLiteQueryInJava:<init>	(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Ljava/lang/String;I[Ljava/lang/String;)V
    //   19: astore 4
    //   21: aload_2
    //   22: ifnonnull +49 -> 71
    //   25: iconst_0
    //   26: istore 7
    //   28: iload_3
    //   29: iload 7
    //   31: if_icmplt +49 -> 80
    //   34: aload_0
    //   35: new 41	info/guardianproject/database/sqlcipher/SQLiteCursorInJava
    //   38: dup
    //   39: aload_0
    //   40: getfield 22	info/guardianproject/database/sqlcipher/SQLiteDirectCursorDriverInJava:mDatabase	Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;
    //   43: aload_0
    //   44: aload_0
    //   45: getfield 24	info/guardianproject/database/sqlcipher/SQLiteDirectCursorDriverInJava:mEditTable	Ljava/lang/String;
    //   48: aload 4
    //   50: invokespecial 44	info/guardianproject/database/sqlcipher/SQLiteCursorInJava:<init>	(Linfo/guardianproject/database/sqlcipher/SQLiteDatabase;Linfo/guardianproject/database/sqlcipher/SQLiteCursorDriver;Ljava/lang/String;Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;)V
    //   53: putfield 29	info/guardianproject/database/sqlcipher/SQLiteDirectCursorDriverInJava:mCursor	Landroid/database/Cursor;
    //   56: aload_0
    //   57: aload 4
    //   59: putfield 46	info/guardianproject/database/sqlcipher/SQLiteDirectCursorDriverInJava:mQuery	Linfo/guardianproject/database/sqlcipher/SQLiteQueryInJava;
    //   62: aload_0
    //   63: getfield 29	info/guardianproject/database/sqlcipher/SQLiteDirectCursorDriverInJava:mCursor	Landroid/database/Cursor;
    //   66: astore 8
    //   68: aload 8
    //   70: areturn
    //   71: aload_2
    //   72: arraylength
    //   73: istore 7
    //   75: iconst_0
    //   76: istore_3
    //   77: goto -49 -> 28
    //   80: aload 4
    //   82: iload_3
    //   83: iconst_1
    //   84: iadd
    //   85: aload_2
    //   86: iload_3
    //   87: aaload
    //   88: invokevirtual 50	info/guardianproject/database/sqlcipher/SQLiteQueryInJava:bindString	(ILjava/lang/String;)V
    //   91: iinc 3 1
    //   94: goto -66 -> 28
    //   97: astore 5
    //   99: aload 4
    //   101: astore 6
    //   103: aload 6
    //   105: ifnull +8 -> 113
    //   108: aload 6
    //   110: invokevirtual 53	info/guardianproject/database/sqlcipher/SQLiteQueryInJava:close	()V
    //   113: aload 5
    //   115: athrow
    //   116: astore 5
    //   118: aconst_null
    //   119: astore 6
    //   121: goto -18 -> 103
    //
    // Exception table:
    //   from	to	target	type
    //   34	62	97	finally
    //   71	75	97	finally
    //   80	91	97	finally
    //   62	68	116	finally
  }

  public void setBindArguments(String[] paramArrayOfString)
  {
    int i = paramArrayOfString.length;
    for (int j = 0; ; j++)
    {
      if (j >= i)
        return;
      this.mQuery.bindString(j + 1, paramArrayOfString[j]);
    }
  }

  public String toString()
  {
    return "SQLiteDirectCursorDriver: " + this.mSql;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.sqlcipher.SQLiteDirectCursorDriverInJava
 * JD-Core Version:    0.6.2
 */