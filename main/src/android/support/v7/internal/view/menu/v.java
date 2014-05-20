package android.support.v7.internal.view.menu;

import android.support.v4.view.n;
import android.view.ActionProvider;
import android.view.SubMenu;
import android.view.View;

class v extends ActionProvider
{
  final n lf;

  public v(u paramu, n paramn)
  {
    super(paramn.getContext());
    this.lf = paramn;
    if (u.a(paramu))
      this.lf.a(new w(this, paramu));
  }

  public boolean hasSubMenu()
  {
    return false;
  }

  public View onCreateActionView()
  {
    if (u.a(this.lg))
      this.lg.cz();
    return this.lf.onCreateActionView();
  }

  public boolean onPerformDefaultAction()
  {
    return false;
  }

  public void onPrepareSubMenu(SubMenu paramSubMenu)
  {
    this.lg.a(paramSubMenu);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.v
 * JD-Core Version:    0.6.2
 */