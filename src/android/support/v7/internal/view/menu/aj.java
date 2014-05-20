package android.support.v7.internal.view.menu;

import android.content.ComponentName;
import android.content.Intent;
import android.support.v4.a.a.a;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;

class aj extends k
  implements a
{
  aj(Menu paramMenu)
  {
    super(paramMenu);
  }

  public MenuItem add(int paramInt)
  {
    return j(((Menu)this.jY).add(paramInt));
  }

  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return j(((Menu)this.jY).add(paramInt1, paramInt2, paramInt3, paramInt4));
  }

  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return j(((Menu)this.jY).add(paramInt1, paramInt2, paramInt3, paramCharSequence));
  }

  public MenuItem add(CharSequence paramCharSequence)
  {
    return j(((Menu)this.jY).add(paramCharSequence));
  }

  public int addIntentOptions(int paramInt1, int paramInt2, int paramInt3, ComponentName paramComponentName, Intent[] paramArrayOfIntent, Intent paramIntent, int paramInt4, MenuItem[] paramArrayOfMenuItem)
  {
    MenuItem[] arrayOfMenuItem = null;
    if (paramArrayOfMenuItem != null)
      arrayOfMenuItem = new MenuItem[paramArrayOfMenuItem.length];
    int i = ((Menu)this.jY).addIntentOptions(paramInt1, paramInt2, paramInt3, paramComponentName, paramArrayOfIntent, paramIntent, paramInt4, arrayOfMenuItem);
    if (arrayOfMenuItem != null)
    {
      int j = 0;
      int k = arrayOfMenuItem.length;
      while (j < k)
      {
        paramArrayOfMenuItem[j] = j(arrayOfMenuItem[j]);
        j++;
      }
    }
    return i;
  }

  public SubMenu addSubMenu(int paramInt)
  {
    return a(((Menu)this.jY).addSubMenu(paramInt));
  }

  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return a(((Menu)this.jY).addSubMenu(paramInt1, paramInt2, paramInt3, paramInt4));
  }

  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return a(((Menu)this.jY).addSubMenu(paramInt1, paramInt2, paramInt3, paramCharSequence));
  }

  public SubMenu addSubMenu(CharSequence paramCharSequence)
  {
    return a(((Menu)this.jY).addSubMenu(paramCharSequence));
  }

  public void clear()
  {
    bQ();
    ((Menu)this.jY).clear();
  }

  public void close()
  {
    ((Menu)this.jY).close();
  }

  public MenuItem findItem(int paramInt)
  {
    return j(((Menu)this.jY).findItem(paramInt));
  }

  public MenuItem getItem(int paramInt)
  {
    return j(((Menu)this.jY).getItem(paramInt));
  }

  public boolean hasVisibleItems()
  {
    return ((Menu)this.jY).hasVisibleItems();
  }

  public boolean isShortcutKey(int paramInt, KeyEvent paramKeyEvent)
  {
    return ((Menu)this.jY).isShortcutKey(paramInt, paramKeyEvent);
  }

  public boolean performIdentifierAction(int paramInt1, int paramInt2)
  {
    return ((Menu)this.jY).performIdentifierAction(paramInt1, paramInt2);
  }

  public boolean performShortcut(int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    return ((Menu)this.jY).performShortcut(paramInt1, paramKeyEvent, paramInt2);
  }

  public void removeGroup(int paramInt)
  {
    A(paramInt);
    ((Menu)this.jY).removeGroup(paramInt);
  }

  public void removeItem(int paramInt)
  {
    B(paramInt);
    ((Menu)this.jY).removeItem(paramInt);
  }

  public void setGroupCheckable(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    ((Menu)this.jY).setGroupCheckable(paramInt, paramBoolean1, paramBoolean2);
  }

  public void setGroupEnabled(int paramInt, boolean paramBoolean)
  {
    ((Menu)this.jY).setGroupEnabled(paramInt, paramBoolean);
  }

  public void setGroupVisible(int paramInt, boolean paramBoolean)
  {
    ((Menu)this.jY).setGroupVisible(paramInt, paramBoolean);
  }

  public void setQwertyMode(boolean paramBoolean)
  {
    ((Menu)this.jY).setQwertyMode(paramBoolean);
  }

  public int size()
  {
    return ((Menu)this.jY).size();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.aj
 * JD-Core Version:    0.6.2
 */