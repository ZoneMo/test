package info.guardianproject.database;

import android.database.DataSetObserver;

class MergeHeapCursor$1 extends DataSetObserver
{
  MergeHeapCursor$1(MergeHeapCursor paramMergeHeapCursor)
  {
  }

  public void onChanged()
  {
    this.this$0.mPos = -1;
  }

  public void onInvalidated()
  {
    this.this$0.mPos = -1;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.MergeHeapCursor.1
 * JD-Core Version:    0.6.2
 */