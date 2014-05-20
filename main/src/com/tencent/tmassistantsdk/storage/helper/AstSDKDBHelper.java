package com.tencent.tmassistantsdk.storage.helper;

import android.content.Context;
import android.database.sqlite.SQLiteDatabase.CursorFactory;
import com.tencent.tmassistantsdk.storage.table.DownloadLogTable;
import com.tencent.tmassistantsdk.storage.table.DownloadSettingTable;
import com.tencent.tmassistantsdk.util.GlobalUtil;

public class AstSDKDBHelper extends SqliteHelper
{
  private static final String DB_NAME = "tmassistant_sdk.db";
  private static final int DB_VERSION = 1;
  private static final Class[] TABLESS = { DownloadSettingTable.class, DownloadLogTable.class };
  private static SqliteHelper mInstance = null;

  public AstSDKDBHelper(Context paramContext, String paramString, SQLiteDatabase.CursorFactory paramCursorFactory, int paramInt)
  {
    super(paramContext, "tmassistant_sdk.db", paramCursorFactory, paramInt);
  }

  public static SqliteHelper getInstance()
  {
    try
    {
      if (mInstance == null)
        mInstance = new AstSDKDBHelper(GlobalUtil.getInstance().getContext(), "tmassistant_sdk.db", null, 1);
      SqliteHelper localSqliteHelper = mInstance;
      return localSqliteHelper;
    }
    finally
    {
    }
  }

  public int getDBVersion()
  {
    return 1;
  }

  public Class[] getTables()
  {
    return TABLESS;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.storage.helper.AstSDKDBHelper
 * JD-Core Version:    0.6.2
 */