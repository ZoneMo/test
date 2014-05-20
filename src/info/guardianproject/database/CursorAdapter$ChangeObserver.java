package info.guardianproject.database;

import android.database.ContentObserver;
import android.os.Handler;

class CursorAdapter$ChangeObserver extends ContentObserver
{
  public CursorAdapter$ChangeObserver(CursorAdapter paramCursorAdapter)
  {
    super(new Handler());
  }

  public boolean deliverSelfNotifications()
  {
    return true;
  }

  public void onChange(boolean paramBoolean)
  {
    this.this$0.onContentChanged();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     info.guardianproject.database.CursorAdapter.ChangeObserver
 * JD-Core Version:    0.6.2
 */