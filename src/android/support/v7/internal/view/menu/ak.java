package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

public final class ak extends o
  implements SubMenu
{
  private o lw;
  private s lx;

  public ak(Context paramContext, o paramo, s params)
  {
    super(paramContext);
    this.lw = paramo;
    this.lx = params;
  }

  public final void a(p paramp)
  {
    this.lw.a(paramp);
  }

  public final boolean a(o paramo, MenuItem paramMenuItem)
  {
    return (super.a(paramo, paramMenuItem)) || (this.lw.a(paramo, paramMenuItem));
  }

  public final boolean bU()
  {
    return this.lw.bU();
  }

  public final boolean bV()
  {
    return this.lw.bV();
  }

  public final Menu cC()
  {
    return this.lw;
  }

  public final o ci()
  {
    return this.lw;
  }

  public final void clearHeader()
  {
  }

  public final boolean f(s params)
  {
    return this.lw.f(params);
  }

  public final boolean g(s params)
  {
    return this.lw.g(params);
  }

  public final MenuItem getItem()
  {
    return this.lx;
  }

  public final SubMenu setHeaderIcon(int paramInt)
  {
    super.a(getContext().getResources().getDrawable(paramInt));
    return this;
  }

  public final SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    super.a(paramDrawable);
    return this;
  }

  public final SubMenu setHeaderTitle(int paramInt)
  {
    super.c(getContext().getResources().getString(paramInt));
    return this;
  }

  public final SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    super.c(paramCharSequence);
    return this;
  }

  public final SubMenu setHeaderView(View paramView)
  {
    super.E(paramView);
    return this;
  }

  public final SubMenu setIcon(int paramInt)
  {
    this.lx.setIcon(paramInt);
    return this;
  }

  public final SubMenu setIcon(Drawable paramDrawable)
  {
    this.lx.setIcon(paramDrawable);
    return this;
  }

  public final void setQwertyMode(boolean paramBoolean)
  {
    this.lw.setQwertyMode(paramBoolean);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.ak
 * JD-Core Version:    0.6.2
 */