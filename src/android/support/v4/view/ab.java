package android.support.v4.view;

import android.view.MenuItem;
import android.view.View;

class ab
  implements ae
{
  public MenuItem a(MenuItem paramMenuItem, af paramaf)
  {
    return paramMenuItem;
  }

  public final MenuItem a(MenuItem paramMenuItem, View paramView)
  {
    return paramMenuItem.setActionView(paramView);
  }

  public final void a(MenuItem paramMenuItem, int paramInt)
  {
    paramMenuItem.setShowAsAction(paramInt);
  }

  public final MenuItem b(MenuItem paramMenuItem, int paramInt)
  {
    return paramMenuItem.setActionView(paramInt);
  }

  public final View e(MenuItem paramMenuItem)
  {
    return paramMenuItem.getActionView();
  }

  public boolean f(MenuItem paramMenuItem)
  {
    return false;
  }

  public boolean g(MenuItem paramMenuItem)
  {
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ab
 * JD-Core Version:    0.6.2
 */