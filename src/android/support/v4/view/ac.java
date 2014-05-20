package android.support.v4.view;

import android.view.MenuItem;

final class ac extends ab
{
  public final MenuItem a(MenuItem paramMenuItem, af paramaf)
  {
    if (paramaf == null)
      return ag.a(paramMenuItem, null);
    return ag.a(paramMenuItem, new ad(this, paramaf));
  }

  public final boolean f(MenuItem paramMenuItem)
  {
    return paramMenuItem.expandActionView();
  }

  public final boolean g(MenuItem paramMenuItem)
  {
    return paramMenuItem.collapseActionView();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ac
 * JD-Core Version:    0.6.2
 */