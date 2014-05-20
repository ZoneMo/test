package android.support.v7.internal.widget;

import android.database.DataSetObserver;

final class r extends DataSetObserver
{
  r(ActivityChooserView paramActivityChooserView)
  {
  }

  public final void onChanged()
  {
    super.onChanged();
    ActivityChooserView.c(this.nz);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.r
 * JD-Core Version:    0.6.2
 */