package android.support.v7.widget;

import android.view.View;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemSelectedListener;

final class c
  implements AdapterView.OnItemSelectedListener
{
  c(SearchView paramSearchView)
  {
  }

  public final void onItemSelected(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    SearchView.b(this.qy, paramInt);
  }

  public final void onNothingSelected(AdapterView paramAdapterView)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.c
 * JD-Core Version:    0.6.2
 */