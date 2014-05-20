package android.support.v7.widget;

import android.view.View;
import android.view.View.OnClickListener;

final class j
  implements View.OnClickListener
{
  j(SearchView paramSearchView)
  {
  }

  public final void onClick(View paramView)
  {
    if (paramView == SearchView.e(this.qy))
      SearchView.f(this.qy);
    do
    {
      return;
      if (paramView == SearchView.g(this.qy))
      {
        SearchView.h(this.qy);
        return;
      }
      if (paramView == SearchView.i(this.qy))
      {
        SearchView.j(this.qy);
        return;
      }
      if (paramView == SearchView.k(this.qy))
      {
        SearchView.l(this.qy);
        return;
      }
    }
    while (paramView != SearchView.m(this.qy));
    SearchView.n(this.qy);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.j
 * JD-Core Version:    0.6.2
 */