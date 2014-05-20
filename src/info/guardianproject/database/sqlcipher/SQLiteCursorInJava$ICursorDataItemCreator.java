package info.guardianproject.database.sqlcipher;

import info.guardianproject.database.CursorDataItem;
import java.util.ArrayList;

public abstract interface SQLiteCursorInJava$ICursorDataItemCreator
{
  public abstract CursorDataItem createItem();

  public abstract ArrayList rebulidAllChangeData(ArrayList paramArrayList);
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.sqlcipher.SQLiteCursorInJava.ICursorDataItemCreator
 * JD-Core Version:    0.6.2
 */