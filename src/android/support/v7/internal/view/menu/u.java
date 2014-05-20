package android.support.v7.internal.view.menu;

import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.support.v4.view.af;
import android.support.v4.view.n;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;

class u extends k
  implements android.support.v4.a.a.b
{
  private final boolean ld;
  private boolean le;

  u(MenuItem paramMenuItem)
  {
    this(paramMenuItem, true);
  }

  u(MenuItem paramMenuItem, boolean paramBoolean)
  {
    super(paramMenuItem);
    this.le = paramMenuItem.isVisible();
    this.ld = paramBoolean;
  }

  public final android.support.v4.a.a.b a(af paramaf)
  {
    MenuItem localMenuItem = (MenuItem)this.jY;
    if (paramaf != null);
    for (y localy = new y(this, paramaf); ; localy = null)
    {
      localMenuItem.setOnActionExpandListener(localy);
      return null;
    }
  }

  public final android.support.v4.a.a.b a(n paramn)
  {
    MenuItem localMenuItem = (MenuItem)this.jY;
    if (paramn != null);
    for (v localv = b(paramn); ; localv = null)
    {
      localMenuItem.setActionProvider(localv);
      return this;
    }
  }

  v b(n paramn)
  {
    return new v(this, paramn);
  }

  public boolean collapseActionView()
  {
    return ((MenuItem)this.jY).collapseActionView();
  }

  final boolean cz()
  {
    v localv;
    if (this.le)
    {
      localv = (v)((MenuItem)this.jY).getActionProvider();
      if (localv == null);
    }
    return false;
  }

  public boolean expandActionView()
  {
    return ((MenuItem)this.jY).expandActionView();
  }

  public ActionProvider getActionProvider()
  {
    return ((MenuItem)this.jY).getActionProvider();
  }

  public View getActionView()
  {
    View localView = ((MenuItem)this.jY).getActionView();
    if ((localView instanceof x))
      localView = ((x)localView).cA();
    return localView;
  }

  public char getAlphabeticShortcut()
  {
    return ((MenuItem)this.jY).getAlphabeticShortcut();
  }

  public int getGroupId()
  {
    return ((MenuItem)this.jY).getGroupId();
  }

  public Drawable getIcon()
  {
    return ((MenuItem)this.jY).getIcon();
  }

  public Intent getIntent()
  {
    return ((MenuItem)this.jY).getIntent();
  }

  public int getItemId()
  {
    return ((MenuItem)this.jY).getItemId();
  }

  public ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return ((MenuItem)this.jY).getMenuInfo();
  }

  public char getNumericShortcut()
  {
    return ((MenuItem)this.jY).getNumericShortcut();
  }

  public int getOrder()
  {
    return ((MenuItem)this.jY).getOrder();
  }

  public SubMenu getSubMenu()
  {
    return a(((MenuItem)this.jY).getSubMenu());
  }

  public CharSequence getTitle()
  {
    return ((MenuItem)this.jY).getTitle();
  }

  public CharSequence getTitleCondensed()
  {
    return ((MenuItem)this.jY).getTitleCondensed();
  }

  public boolean hasSubMenu()
  {
    return ((MenuItem)this.jY).hasSubMenu();
  }

  public boolean isActionViewExpanded()
  {
    return ((MenuItem)this.jY).isActionViewExpanded();
  }

  public boolean isCheckable()
  {
    return ((MenuItem)this.jY).isCheckable();
  }

  public boolean isChecked()
  {
    return ((MenuItem)this.jY).isChecked();
  }

  public boolean isEnabled()
  {
    return ((MenuItem)this.jY).isEnabled();
  }

  public boolean isVisible()
  {
    return ((MenuItem)this.jY).isVisible();
  }

  public MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    ((MenuItem)this.jY).setActionProvider(paramActionProvider);
    if ((paramActionProvider != null) && (this.ld))
      cz();
    return this;
  }

  public MenuItem setActionView(int paramInt)
  {
    ((MenuItem)this.jY).setActionView(paramInt);
    View localView = ((MenuItem)this.jY).getActionView();
    if ((localView instanceof android.support.v7.a.b))
      ((MenuItem)this.jY).setActionView(new x(localView));
    return this;
  }

  public MenuItem setActionView(View paramView)
  {
    if ((paramView instanceof android.support.v7.a.b))
      paramView = new x(paramView);
    ((MenuItem)this.jY).setActionView(paramView);
    return this;
  }

  public MenuItem setAlphabeticShortcut(char paramChar)
  {
    ((MenuItem)this.jY).setAlphabeticShortcut(paramChar);
    return this;
  }

  public MenuItem setCheckable(boolean paramBoolean)
  {
    ((MenuItem)this.jY).setCheckable(paramBoolean);
    return this;
  }

  public MenuItem setChecked(boolean paramBoolean)
  {
    ((MenuItem)this.jY).setChecked(paramBoolean);
    return this;
  }

  public MenuItem setEnabled(boolean paramBoolean)
  {
    ((MenuItem)this.jY).setEnabled(paramBoolean);
    return this;
  }

  public MenuItem setIcon(int paramInt)
  {
    ((MenuItem)this.jY).setIcon(paramInt);
    return this;
  }

  public MenuItem setIcon(Drawable paramDrawable)
  {
    ((MenuItem)this.jY).setIcon(paramDrawable);
    return this;
  }

  public MenuItem setIntent(Intent paramIntent)
  {
    ((MenuItem)this.jY).setIntent(paramIntent);
    return this;
  }

  public MenuItem setNumericShortcut(char paramChar)
  {
    ((MenuItem)this.jY).setNumericShortcut(paramChar);
    return this;
  }

  public MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    ((MenuItem)this.jY).setOnActionExpandListener(paramOnActionExpandListener);
    return this;
  }

  public MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    MenuItem localMenuItem = (MenuItem)this.jY;
    if (paramOnMenuItemClickListener != null);
    for (z localz = new z(this, paramOnMenuItemClickListener); ; localz = null)
    {
      localMenuItem.setOnMenuItemClickListener(localz);
      return this;
    }
  }

  public MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    ((MenuItem)this.jY).setShortcut(paramChar1, paramChar2);
    return this;
  }

  public void setShowAsAction(int paramInt)
  {
    ((MenuItem)this.jY).setShowAsAction(paramInt);
  }

  public MenuItem setShowAsActionFlags(int paramInt)
  {
    ((MenuItem)this.jY).setShowAsActionFlags(paramInt);
    return this;
  }

  public MenuItem setTitle(int paramInt)
  {
    ((MenuItem)this.jY).setTitle(paramInt);
    return this;
  }

  public MenuItem setTitle(CharSequence paramCharSequence)
  {
    ((MenuItem)this.jY).setTitle(paramCharSequence);
    return this;
  }

  public MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    ((MenuItem)this.jY).setTitleCondensed(paramCharSequence);
    return this;
  }

  public MenuItem setVisible(boolean paramBoolean)
  {
    if (this.ld)
    {
      this.le = paramBoolean;
      cz();
    }
    return ((MenuItem)this.jY).setVisible(paramBoolean);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.u
 * JD-Core Version:    0.6.2
 */