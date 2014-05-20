package info.guardianproject.database.sqlcipher;

import info.guardianproject.database.CursorDataItem;
import info.guardianproject.database.CursorDataWindow;
import java.util.ArrayList;

class SQLiteCursorInJava$1 extends CursorDataWindow
{
  SQLiteCursorInJava$1(SQLiteCursorInJava paramSQLiteCursorInJava, boolean paramBoolean)
  {
    super(paramBoolean);
  }

  public CursorDataItem createItem()
  {
    return this.this$0.createDataItem();
  }

  public ArrayList rebulidAllChangeData(ArrayList paramArrayList)
  {
    return this.this$0.rebulidAllChangeData(paramArrayList);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.sqlcipher.SQLiteCursorInJava.1
 * JD-Core Version:    0.6.2
 */