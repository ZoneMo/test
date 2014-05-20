package android.support.v7.internal.widget;

import android.database.DataSetObserver;

final class af extends DataSetObserver
{
  private af(ListPopupWindow paramListPopupWindow)
  {
  }

  public final void onChanged()
  {
    if (this.oK.isShowing())
      this.oK.show();
  }

  public final void onInvalidated()
  {
    this.oK.dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.af
 * JD-Core Version:    0.6.2
 */