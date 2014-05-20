package android.support.v7.app;

import android.app.ActionBar.Tab;
import android.app.ActionBar.TabListener;
import android.app.FragmentTransaction;
import android.graphics.drawable.Drawable;
import android.support.v4.app.l;
import android.support.v4.app.v;
import android.view.View;

final class p extends c
  implements ActionBar.TabListener
{
  final ActionBar.Tab ia;
  private v ib;
  private CharSequence ic;
  private d ie;

  public p(o paramo, ActionBar.Tab paramTab)
  {
    this.ia = paramTab;
  }

  private v bn()
  {
    if (this.ib == null)
      this.ib = this.jdField_if.hM.w().x().b();
    return this.ib;
  }

  private void bo()
  {
    if ((this.ib != null) && (!this.ib.isEmpty()))
      this.ib.commit();
    this.ib = null;
  }

  public final c a(d paramd)
  {
    this.ie = paramd;
    ActionBar.Tab localTab = this.ia;
    if (paramd != null);
    for (p localp = this; ; localp = null)
    {
      localTab.setTabListener(localp);
      return this;
    }
  }

  public final c a(CharSequence paramCharSequence)
  {
    this.ia.setText(paramCharSequence);
    return this;
  }

  public final CharSequence getContentDescription()
  {
    return this.ic;
  }

  public final View getCustomView()
  {
    return this.ia.getCustomView();
  }

  public final Drawable getIcon()
  {
    return this.ia.getIcon();
  }

  public final int getPosition()
  {
    return this.ia.getPosition();
  }

  public final CharSequence getText()
  {
    return this.ia.getText();
  }

  public final void onTabReselected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction)
  {
    if (paramFragmentTransaction != null)
      bn();
    bo();
  }

  public final void onTabSelected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction)
  {
    if (paramFragmentTransaction != null)
      bn();
    bo();
  }

  public final void onTabUnselected(ActionBar.Tab paramTab, FragmentTransaction paramFragmentTransaction)
  {
    if (paramFragmentTransaction != null)
      bn();
  }

  public final void select()
  {
    this.ia.select();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.app.p
 * JD-Core Version:    0.6.2
 */