package android.support.v4.view;

import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;

final class ah
  implements MenuItem.OnActionExpandListener
{
  private ai dk;

  public ah(ai paramai)
  {
    this.dk = paramai;
  }

  public final boolean onMenuItemActionCollapse(MenuItem paramMenuItem)
  {
    return this.dk.ae();
  }

  public final boolean onMenuItemActionExpand(MenuItem paramMenuItem)
  {
    return this.dk.ad();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.ah
 * JD-Core Version:    0.6.2
 */