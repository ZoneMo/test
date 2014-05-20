package android.support.v7.internal.view.menu;

import android.os.Build.VERSION;
import android.support.v4.a.a.b;
import android.view.MenuItem;
import android.view.SubMenu;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

abstract class k extends l
{
  private HashMap jW;
  private HashMap jX;

  k(Object paramObject)
  {
    super(paramObject);
  }

  final void A(int paramInt)
  {
    if (this.jW == null);
    while (true)
    {
      return;
      Iterator localIterator = this.jW.keySet().iterator();
      while (localIterator.hasNext())
        if (paramInt == ((MenuItem)localIterator.next()).getGroupId())
          localIterator.remove();
    }
  }

  final void B(int paramInt)
  {
    if (this.jW == null);
    Iterator localIterator;
    do
    {
      return;
      while (!localIterator.hasNext())
        localIterator = this.jW.keySet().iterator();
    }
    while (paramInt != ((MenuItem)localIterator.next()).getItemId());
    localIterator.remove();
  }

  final SubMenu a(SubMenu paramSubMenu)
  {
    if (paramSubMenu != null)
    {
      if (this.jX == null)
        this.jX = new HashMap();
      Object localObject = (SubMenu)this.jX.get(paramSubMenu);
      if (localObject == null)
      {
        if (Build.VERSION.SDK_INT >= 14)
        {
          localObject = new al(paramSubMenu);
          this.jX.put(paramSubMenu, localObject);
        }
      }
      else
        return localObject;
      throw new UnsupportedOperationException();
    }
    return null;
  }

  final void bQ()
  {
    if (this.jW != null)
      this.jW.clear();
    if (this.jX != null)
      this.jX.clear();
  }

  final b j(MenuItem paramMenuItem)
  {
    if (paramMenuItem != null)
    {
      if (this.jW == null)
        this.jW = new HashMap();
      Object localObject = (b)this.jW.get(paramMenuItem);
      if (localObject == null)
        if (Build.VERSION.SDK_INT < 16)
          break label67;
      for (localObject = new aa(paramMenuItem); ; localObject = new u(paramMenuItem))
      {
        this.jW.put(paramMenuItem, localObject);
        return localObject;
        label67: if (Build.VERSION.SDK_INT < 14)
          break;
      }
      throw new UnsupportedOperationException();
    }
    return null;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.k
 * JD-Core Version:    0.6.2
 */