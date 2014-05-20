package com.tencent.mm.ui;

import info.guardianproject.database.CursorDataItem;
import info.guardianproject.database.IHeapCursor;
import info.guardianproject.database.MergeHeapCursor;
import info.guardianproject.database.sqlcipher.SQLiteCursorInJavaWrapper;
import java.util.ArrayList;

final class m extends SQLiteCursorInJavaWrapper
{
  public m(h paramh, IHeapCursor paramIHeapCursor)
  {
    super(paramIHeapCursor, h.a(paramh));
  }

  public final int aDW()
  {
    IHeapCursor localIHeapCursor = getInnerCursor();
    if (localIHeapCursor == null)
      return 0;
    if ((localIHeapCursor instanceof MergeHeapCursor))
      return ((MergeHeapCursor)localIHeapCursor).getCursors()[0].getCount();
    throw new RuntimeException("the cursor is not instanceof MergeHeapCursor ,please call getCount() instead ");
  }

  public final CursorDataItem createCursorItem()
  {
    return this.gkP.createItem();
  }

  public final ArrayList rebulidAllChangeData(ArrayList paramArrayList)
  {
    return this.gkP.rebulidAllChangeData(paramArrayList);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.m
 * JD-Core Version:    0.6.2
 */