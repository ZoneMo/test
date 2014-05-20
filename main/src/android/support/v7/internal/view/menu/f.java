package android.support.v7.internal.view.menu;

import android.content.Context;
import android.view.View;

final class f extends ac
{
  public f(ActionMenuPresenter paramActionMenuPresenter, Context paramContext, o paramo, View paramView)
  {
    super(paramContext, paramo, paramView, true);
    a(paramActionMenuPresenter.jz);
  }

  public final void onDismiss()
  {
    super.onDismiss();
    this.jB.hh.close();
    ActionMenuPresenter.a(this.jB, null);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.f
 * JD-Core Version:    0.6.2
 */