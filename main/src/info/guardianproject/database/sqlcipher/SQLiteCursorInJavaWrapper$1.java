package info.guardianproject.database.sqlcipher;

import info.guardianproject.database.CursorDataItem;
import java.util.ArrayList;

class SQLiteCursorInJavaWrapper$1
  implements SQLiteCursorInJava.ICursorDataItemCreator
{
  SQLiteCursorInJavaWrapper$1(SQLiteCursorInJavaWrapper paramSQLiteCursorInJavaWrapper)
  {
  }

  public CursorDataItem createItem()
  {
    return this.this$0.createCursorItem();
  }

  public ArrayList rebulidAllChangeData(ArrayList paramArrayList)
  {
    return this.this$0.rebulidAllChangeData(paramArrayList);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.sqlcipher.SQLiteCursorInJavaWrapper.1
 * JD-Core Version:    0.6.2
 */