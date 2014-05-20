package android.support.v7.widget;

import android.content.Context;
import android.view.inputmethod.InputMethodManager;

final class a
  implements Runnable
{
  a(SearchView paramSearchView)
  {
  }

  public final void run()
  {
    InputMethodManager localInputMethodManager = (InputMethodManager)this.qy.getContext().getSystemService("input_method");
    if (localInputMethodManager != null)
      SearchView.qk.a(localInputMethodManager, this.qy);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.a
 * JD-Core Version:    0.6.2
 */