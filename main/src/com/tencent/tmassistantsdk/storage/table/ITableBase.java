package com.tencent.tmassistantsdk.storage.table;

import com.tencent.tmassistantsdk.storage.helper.SqliteHelper;

public abstract interface ITableBase
{
  public abstract String createTableSQL();

  public abstract String[] getAlterSQL(int paramInt1, int paramInt2);

  public abstract SqliteHelper getHelper();

  public abstract String tableName();

  public abstract int tableVersion();
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.tmassistantsdk.storage.table.ITableBase
 * JD-Core Version:    0.6.2
 */