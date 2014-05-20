package android.support.v7.internal.widget;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.support.v7.internal.view.menu.ae;
import android.support.v7.internal.view.menu.ak;
import android.support.v7.internal.view.menu.o;
import android.support.v7.internal.view.menu.s;
import android.view.View;
import android.widget.LinearLayout;

final class h
  implements ae
{
  o hh;
  s mL;

  private h(ActionBarView paramActionBarView)
  {
  }

  public final void a(Context paramContext, o paramo)
  {
    if ((this.hh != null) && (this.mL != null))
      this.hh.g(this.mL);
    this.hh = paramo;
  }

  public final void a(o paramo, boolean paramBoolean)
  {
  }

  public final boolean a(ak paramak)
  {
    return false;
  }

  public final boolean bN()
  {
    return false;
  }

  public final boolean d(s params)
  {
    this.mK.mF = params.getActionView();
    ActionBarView.e(this.mK).setIcon(ActionBarView.d(this.mK).getConstantState().newDrawable(this.mK.getResources()));
    this.mL = params;
    if (this.mK.mF.getParent() != this.mK)
      this.mK.addView(this.mK.mF);
    if (ActionBarView.e(this.mK).getParent() != this.mK)
      this.mK.addView(ActionBarView.e(this.mK));
    ActionBarView.f(this.mK).setVisibility(8);
    if (ActionBarView.g(this.mK) != null)
      ActionBarView.g(this.mK).setVisibility(8);
    if (ActionBarView.h(this.mK) != null)
      ActionBarView.h(this.mK).setVisibility(8);
    if (ActionBarView.i(this.mK) != null)
      ActionBarView.i(this.mK).setVisibility(8);
    if (ActionBarView.j(this.mK) != null)
      ActionBarView.j(this.mK).setVisibility(8);
    this.mK.requestLayout();
    params.r(true);
    if ((this.mK.mF instanceof android.support.v7.a.b))
      ((android.support.v7.a.b)this.mK.mF).onActionViewExpanded();
    return true;
  }

  public final boolean e(s params)
  {
    if ((this.mK.mF instanceof android.support.v7.a.b))
      ((android.support.v7.a.b)this.mK.mF).onActionViewCollapsed();
    this.mK.removeView(this.mK.mF);
    this.mK.removeView(ActionBarView.e(this.mK));
    this.mK.mF = null;
    if ((0x2 & ActionBarView.k(this.mK)) != 0)
      ActionBarView.f(this.mK).setVisibility(0);
    if ((0x8 & ActionBarView.k(this.mK)) != 0)
    {
      if (ActionBarView.g(this.mK) != null)
        break label245;
      ActionBarView.l(this.mK);
    }
    while (true)
    {
      if ((ActionBarView.h(this.mK) != null) && (ActionBarView.m(this.mK) == 2))
        ActionBarView.h(this.mK).setVisibility(0);
      if ((ActionBarView.i(this.mK) != null) && (ActionBarView.m(this.mK) == 1))
        ActionBarView.i(this.mK).setVisibility(0);
      if ((ActionBarView.j(this.mK) != null) && ((0x10 & ActionBarView.k(this.mK)) != 0))
        ActionBarView.j(this.mK).setVisibility(0);
      ActionBarView.e(this.mK).setIcon(null);
      this.mL = null;
      this.mK.requestLayout();
      params.r(false);
      return true;
      label245: ActionBarView.g(this.mK).setVisibility(0);
    }
  }

  public final void j(boolean paramBoolean)
  {
    int k;
    if (this.mL != null)
    {
      if (this.hh == null)
        break label79;
      int j = this.hh.size();
      k = 0;
      if (k >= j)
        break label79;
      if ((android.support.v4.a.a.b)this.hh.getItem(k) != this.mL)
        break label73;
    }
    label73: label79: for (int i = 1; ; i = 0)
    {
      if (i == 0)
        e(this.mL);
      return;
      k++;
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.h
 * JD-Core Version:    0.6.2
 */