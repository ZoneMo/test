package com.tencent.mm.ui.base;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.drawable.Drawable;
import android.view.ContextMenu;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import com.tencent.mm.sdk.platformtools.al;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

public final class bx
  implements ContextMenu
{
  private List gAC = new ArrayList();
  private String gAD;

  public final MenuItem a(int paramInt, CharSequence paramCharSequence)
  {
    by localby = new by(paramInt, 0);
    localby.setTitle(paramCharSequence);
    this.gAC.add(localby);
    return localby;
  }

  public final MenuItem a(int paramInt1, CharSequence paramCharSequence, int paramInt2)
  {
    by localby = new by(paramInt1, 0);
    localby.setTitle(paramCharSequence);
    localby.setIcon(paramInt2);
    this.gAC.add(localby);
    return localby;
  }

  public final List aHf()
  {
    return this.gAC;
  }

  public final String aHg()
  {
    return this.gAD;
  }

  public final boolean aHh()
  {
    return this.gAC.size() == 0;
  }

  public final MenuItem add(int paramInt)
  {
    by localby = new by(0, 0);
    localby.setTitle(paramInt);
    this.gAC.add(localby);
    return localby;
  }

  public final MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    by localby = new by(paramInt2, paramInt1);
    localby.setTitle(paramInt4);
    this.gAC.add(localby);
    return localby;
  }

  public final MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    by localby = new by(paramInt2, paramInt1);
    localby.setTitle(paramCharSequence);
    this.gAC.add(localby);
    return localby;
  }

  public final MenuItem add(CharSequence paramCharSequence)
  {
    by localby = new by(0, 0);
    localby.setTitle(paramCharSequence);
    this.gAC.add(localby);
    return localby;
  }

  public final int addIntentOptions(int paramInt1, int paramInt2, int paramInt3, ComponentName paramComponentName, Intent[] paramArrayOfIntent, Intent paramIntent, int paramInt4, MenuItem[] paramArrayOfMenuItem)
  {
    return 0;
  }

  public final SubMenu addSubMenu(int paramInt)
  {
    return null;
  }

  public final SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return null;
  }

  public final SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return null;
  }

  public final SubMenu addSubMenu(CharSequence paramCharSequence)
  {
    return null;
  }

  public final MenuItem bi(int paramInt1, int paramInt2)
  {
    by localby = new by(paramInt1, 0);
    localby.setTitle(paramInt2);
    this.gAC.add(localby);
    return localby;
  }

  public final void clear()
  {
    Iterator localIterator = this.gAC.iterator();
    while (localIterator.hasNext())
    {
      MenuItem localMenuItem = (MenuItem)localIterator.next();
      ((by)localMenuItem).a(null);
      ((by)localMenuItem).setOnMenuItemClickListener(null);
    }
    this.gAC.clear();
    this.gAD = null;
  }

  public final void clearHeader()
  {
  }

  public final void close()
  {
  }

  public final MenuItem findItem(int paramInt)
  {
    Iterator localIterator = this.gAC.iterator();
    while (localIterator.hasNext())
    {
      MenuItem localMenuItem = (MenuItem)localIterator.next();
      if (localMenuItem.getItemId() == paramInt)
        return localMenuItem;
    }
    return null;
  }

  public final MenuItem getItem(int paramInt)
  {
    return (MenuItem)this.gAC.get(paramInt);
  }

  public final boolean hasVisibleItems()
  {
    return false;
  }

  public final boolean isShortcutKey(int paramInt, KeyEvent paramKeyEvent)
  {
    return false;
  }

  public final boolean performIdentifierAction(int paramInt1, int paramInt2)
  {
    return false;
  }

  public final boolean performShortcut(int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    return false;
  }

  public final MenuItem r(int paramInt1, int paramInt2, int paramInt3)
  {
    by localby = new by(paramInt1, 0);
    localby.setTitle(paramInt2);
    localby.setIcon(paramInt3);
    this.gAC.add(localby);
    return localby;
  }

  public final void removeGroup(int paramInt)
  {
  }

  public final void removeItem(int paramInt)
  {
  }

  public final void setGroupCheckable(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
  }

  public final void setGroupEnabled(int paramInt, boolean paramBoolean)
  {
  }

  public final void setGroupVisible(int paramInt, boolean paramBoolean)
  {
  }

  public final ContextMenu setHeaderIcon(int paramInt)
  {
    return this;
  }

  public final ContextMenu setHeaderIcon(Drawable paramDrawable)
  {
    return this;
  }

  public final ContextMenu setHeaderTitle(int paramInt)
  {
    if (paramInt > 0)
      this = setHeaderTitle(al.getContext().getString(paramInt));
    return this;
  }

  public final ContextMenu setHeaderTitle(CharSequence paramCharSequence)
  {
    if (paramCharSequence == null)
      return this;
    this.gAD = paramCharSequence.toString();
    return this;
  }

  public final ContextMenu setHeaderView(View paramView)
  {
    return this;
  }

  public final void setQwertyMode(boolean paramBoolean)
  {
  }

  public final int size()
  {
    if (this.gAC == null)
      return 0;
    return this.gAC.size();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.bx
 * JD-Core Version:    0.6.2
 */