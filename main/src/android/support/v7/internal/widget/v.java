package android.support.v7.internal.widget;

import android.database.DataSetObserver;
import android.os.Parcelable;
import android.widget.Adapter;

final class v extends DataSetObserver
{
  private Parcelable oc = null;

  v(u paramu)
  {
  }

  public final void onChanged()
  {
    this.od.nP = true;
    this.od.nW = this.od.nV;
    this.od.nV = this.od.getAdapter().getCount();
    if ((this.od.getAdapter().hasStableIds()) && (this.oc != null) && (this.od.nW == 0) && (this.od.nV > 0))
    {
      u.a(this.od, this.oc);
      this.oc = null;
    }
    while (true)
    {
      this.od.df();
      this.od.requestLayout();
      return;
      this.od.di();
    }
  }

  public final void onInvalidated()
  {
    this.od.nP = true;
    if (this.od.getAdapter().hasStableIds())
      this.oc = u.a(this.od);
    this.od.nW = this.od.nV;
    this.od.nV = 0;
    this.od.nS = -1;
    this.od.nT = -9223372036854775808L;
    this.od.nQ = -1;
    this.od.nR = -9223372036854775808L;
    this.od.nK = false;
    this.od.df();
    this.od.requestLayout();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.v
 * JD-Core Version:    0.6.2
 */