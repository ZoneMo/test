package android.support.v7.internal.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;

final class x
  implements AdapterView.OnItemClickListener
{
  private final w oe;

  public x(u paramu, w paramw)
  {
    this.oe = paramw;
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    w localw = this.oe;
    localw.h(paramView, paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.x
 * JD-Core Version:    0.6.2
 */