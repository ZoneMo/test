package info.guardianproject.database.sqlcipher;

class SQLiteDatabase$SyncUpdateInfo
{
  String deletedTable;
  String foreignKey;
  String masterTable;

  SQLiteDatabase$SyncUpdateInfo(String paramString1, String paramString2, String paramString3)
  {
    this.masterTable = paramString1;
    this.deletedTable = paramString2;
    this.foreignKey = paramString3;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.sqlcipher.SQLiteDatabase.SyncUpdateInfo
 * JD-Core Version:    0.6.2
 */