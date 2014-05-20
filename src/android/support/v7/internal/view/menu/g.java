package android.support.v7.internal.view.menu;

import android.view.MenuItem;

final class g
  implements af
{
  private g(ActionMenuPresenter paramActionMenuPresenter)
  {
  }

  public final void a(o paramo, boolean paramBoolean)
  {
    if ((paramo instanceof ak))
      ((ak)paramo).ci().l(false);
  }

  public final boolean b(o paramo)
  {
    if (paramo == null)
      return false;
    this.jB.jA = ((ak)paramo).getItem().getItemId();
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.g
 * JD-Core Version:    0.6.2
 */