package android.support.v7.internal.widget;

import android.support.v7.app.c;
import android.view.View;
import android.view.ViewGroup;
import android.widget.BaseAdapter;
import android.widget.LinearLayout;

final class an extends BaseAdapter
{
  private an(ScrollingTabContainerView paramScrollingTabContainerView)
  {
  }

  public final int getCount()
  {
    return ScrollingTabContainerView.c(this.pv).getChildCount();
  }

  public final Object getItem(int paramInt)
  {
    return ((ScrollingTabContainerView.TabView)ScrollingTabContainerView.c(this.pv).getChildAt(paramInt)).dq();
  }

  public final long getItemId(int paramInt)
  {
    return paramInt;
  }

  public final View getView(int paramInt, View paramView, ViewGroup paramViewGroup)
  {
    if (paramView == null)
      return ScrollingTabContainerView.a(this.pv, (c)getItem(paramInt));
    ((ScrollingTabContainerView.TabView)paramView).c((c)getItem(paramInt));
    return paramView;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.an
 * JD-Core Version:    0.6.2
 */