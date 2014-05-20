package android.support.v7.internal.view.menu;

import android.content.DialogInterface;

final class c extends r
{
  public c(ActionMenuPresenter paramActionMenuPresenter, ak paramak)
  {
    super(paramak);
    paramActionMenuPresenter.a(paramActionMenuPresenter.jz);
  }

  public final void onDismiss(DialogInterface paramDialogInterface)
  {
    super.onDismiss(paramDialogInterface);
    ActionMenuPresenter.a(this.jB);
    this.jB.jA = 0;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.c
 * JD-Core Version:    0.6.2
 */