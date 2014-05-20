package android.support.v7.internal.view.menu;

import android.view.View;

final class d
  implements Runnable
{
  private f jC;

  public d(ActionMenuPresenter paramActionMenuPresenter, f paramf)
  {
    this.jC = paramf;
  }

  public final void run()
  {
    this.jB.hh.bW();
    View localView = (View)this.jB.jV;
    if ((localView != null) && (localView.getWindowToken() != null) && (this.jC.cB()))
      ActionMenuPresenter.a(this.jB, this.jC);
    ActionMenuPresenter.b(this.jB);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.d
 * JD-Core Version:    0.6.2
 */