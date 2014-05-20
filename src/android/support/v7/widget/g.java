package android.support.v7.widget;

import android.view.View;
import android.view.View.OnFocusChangeListener;

final class g
  implements View.OnFocusChangeListener
{
  g(SearchView paramSearchView)
  {
  }

  public final void onFocusChange(View paramView, boolean paramBoolean)
  {
    if (SearchView.c(this.qy) != null)
      SearchView.c(this.qy).onFocusChange(this.qy, paramBoolean);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.g
 * JD-Core Version:    0.6.2
 */