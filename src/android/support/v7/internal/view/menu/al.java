package android.support.v7.internal.view.menu;

import android.graphics.drawable.Drawable;
import android.support.v4.a.a.c;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;

final class al extends aj
  implements c
{
  al(SubMenu paramSubMenu)
  {
    super(paramSubMenu);
  }

  public final void clearHeader()
  {
    ((SubMenu)this.jY).clearHeader();
  }

  public final MenuItem getItem()
  {
    return j(((SubMenu)this.jY).getItem());
  }

  public final SubMenu setHeaderIcon(int paramInt)
  {
    ((SubMenu)this.jY).setHeaderIcon(paramInt);
    return this;
  }

  public final SubMenu setHeaderIcon(Drawable paramDrawable)
  {
    ((SubMenu)this.jY).setHeaderIcon(paramDrawable);
    return this;
  }

  public final SubMenu setHeaderTitle(int paramInt)
  {
    ((SubMenu)this.jY).setHeaderTitle(paramInt);
    return this;
  }

  public final SubMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    ((SubMenu)this.jY).setHeaderTitle(paramCharSequence);
    return this;
  }

  public final SubMenu setHeaderView(View paramView)
  {
    ((SubMenu)this.jY).setHeaderView(paramView);
    return this;
  }

  public final SubMenu setIcon(int paramInt)
  {
    ((SubMenu)this.jY).setIcon(paramInt);
    return this;
  }

  public final SubMenu setIcon(Drawable paramDrawable)
  {
    ((SubMenu)this.jY).setIcon(paramDrawable);
    return this;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.al
 * JD-Core Version:    0.6.2
 */