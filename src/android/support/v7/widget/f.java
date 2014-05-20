package android.support.v7.widget;

import android.support.v4.widget.a;

final class f
  implements Runnable
{
  f(SearchView paramSearchView)
  {
  }

  public final void run()
  {
    if ((SearchView.b(this.qy) != null) && ((SearchView.b(this.qy) instanceof q)))
      SearchView.b(this.qy).changeCursor(null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.widget.f
 * JD-Core Version:    0.6.2
 */