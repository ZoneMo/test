package android.support.v7.internal.widget;

import android.support.v7.app.c;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.LinearLayout;

final class ao
  implements View.OnClickListener
{
  private ao(ScrollingTabContainerView paramScrollingTabContainerView)
  {
  }

  public final void onClick(View paramView)
  {
    ((ScrollingTabContainerView.TabView)paramView).dq().select();
    int i = ScrollingTabContainerView.c(this.pv).getChildCount();
    int j = 0;
    if (j < i)
    {
      View localView = ScrollingTabContainerView.c(this.pv).getChildAt(j);
      if (localView == paramView);
      for (boolean bool = true; ; bool = false)
      {
        localView.setSelected(bool);
        j++;
        break;
      }
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ao
 * JD-Core Version:    0.6.2
 */