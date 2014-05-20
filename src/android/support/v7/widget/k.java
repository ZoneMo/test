package android.support.v7.widget;

import android.support.v4.view.u;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnKeyListener;

final class k
  implements View.OnKeyListener
{
  k(SearchView paramSearchView)
  {
  }

  public final boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if (SearchView.o(this.qy) == null);
    do
    {
      return false;
      if ((SearchView.m(this.qy).isPopupShowing()) && (SearchView.m(this.qy).getListSelection() != -1))
        return SearchView.a(this.qy, paramInt, paramKeyEvent);
    }
    while ((SearchView.SearchAutoComplete.a(SearchView.m(this.qy))) || (!u.b(paramKeyEvent)) || (paramKeyEvent.getAction() != 1) || (paramInt != 66));
    paramView.cancelLongPress();
    SearchView.a(this.qy, SearchView.m(this.qy).getText().toString());
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.k
 * JD-Core Version:    0.6.2
 */