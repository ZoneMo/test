package android.support.v7.internal.view.menu;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.a.a.a;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.KeyCharacterMap.KeyData;
import android.view.KeyEvent;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import com.tencent.mm.e;
import java.lang.ref.WeakReference;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.CopyOnWriteArrayList;

public class o
  implements a
{
  private static final int[] kq = { 1, 4, 5, 3, 2, 0 };
  private ArrayList eg;
  private int kA = 0;
  private ContextMenu.ContextMenuInfo kB;
  CharSequence kC;
  Drawable kD;
  View kE;
  private boolean kF = false;
  private boolean kG = false;
  private boolean kH = false;
  private boolean kI = false;
  private ArrayList kJ = new ArrayList();
  private CopyOnWriteArrayList kK = new CopyOnWriteArrayList();
  private s kL;
  private final Resources kr;
  private boolean ks;
  private boolean kt;
  private p ku;
  private ArrayList kv;
  private boolean kw;
  private ArrayList kx;
  private ArrayList ky;
  private boolean kz;
  private final Context mContext;

  public o(Context paramContext)
  {
    this.mContext = paramContext;
    this.kr = paramContext.getResources();
    this.eg = new ArrayList();
    this.kv = new ArrayList();
    this.kw = i;
    this.kx = new ArrayList();
    this.ky = new ArrayList();
    this.kz = i;
    if ((this.kr.getConfiguration().keyboard != i) && (this.kr.getBoolean(e.ZH)));
    while (true)
    {
      this.kt = i;
      return;
      i = 0;
    }
  }

  private static int a(ArrayList paramArrayList, int paramInt)
  {
    for (int i = -1 + paramArrayList.size(); i >= 0; i--)
      if (((s)paramArrayList.get(i)).cn() <= paramInt)
        return i + 1;
    return 0;
  }

  private s a(int paramInt, KeyEvent paramKeyEvent)
  {
    ArrayList localArrayList = this.kJ;
    localArrayList.clear();
    a(localArrayList, paramInt, paramKeyEvent);
    s locals;
    if (localArrayList.isEmpty())
      locals = null;
    label181: 
    while (true)
    {
      return locals;
      int i = paramKeyEvent.getMetaState();
      KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
      paramKeyEvent.getKeyData(localKeyData);
      int j = localArrayList.size();
      if (j == 1)
        return (s)localArrayList.get(0);
      boolean bool = bU();
      int k = 0;
      if (k >= j)
        break;
      locals = (s)localArrayList.get(k);
      if (bool);
      for (int m = locals.getAlphabeticShortcut(); ; m = locals.getNumericShortcut())
      {
        if (((m == localKeyData.meta[0]) && ((i & 0x2) == 0)) || ((m == localKeyData.meta[2]) && ((i & 0x2) != 0)) || ((bool) && (m == 8) && (paramInt == 67)))
          break label181;
        k++;
        break;
      }
    }
    return null;
  }

  private MenuItem a(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    int i = (0xFFFF0000 & paramInt3) >> 16;
    if ((i < 0) || (i >= kq.length))
      throw new IllegalArgumentException("order does not contain a valid category.");
    int j = kq[i] << 16 | 0xFFFF & paramInt3;
    s locals = new s(this, paramInt1, paramInt2, paramInt3, j, paramCharSequence, this.kA);
    if (this.kB != null)
      locals.a(this.kB);
    this.eg.add(a(this.eg, j), locals);
    m(true);
    return locals;
  }

  private void a(CharSequence paramCharSequence, Drawable paramDrawable, View paramView)
  {
    if (paramView != null)
    {
      this.kE = paramView;
      this.kC = null;
      this.kD = null;
    }
    while (true)
    {
      m(false);
      return;
      if (paramCharSequence != null)
        this.kC = paramCharSequence;
      if (paramDrawable != null)
        this.kD = paramDrawable;
      this.kE = null;
    }
  }

  private void a(List paramList, int paramInt, KeyEvent paramKeyEvent)
  {
    boolean bool = bU();
    int i = paramKeyEvent.getMetaState();
    KeyCharacterMap.KeyData localKeyData = new KeyCharacterMap.KeyData();
    if ((!paramKeyEvent.getKeyData(localKeyData)) && (paramInt != 67))
      return;
    int j = this.eg.size();
    int k = 0;
    label49: s locals;
    if (k < j)
    {
      locals = (s)this.eg.get(k);
      if (locals.hasSubMenu())
        ((o)locals.getSubMenu()).a(paramList, paramInt, paramKeyEvent);
      if (!bool)
        break label181;
    }
    label181: for (int m = locals.getAlphabeticShortcut(); ; m = locals.getNumericShortcut())
    {
      if (((i & 0x5) == 0) && (m != 0) && ((m == localKeyData.meta[0]) || (m == localKeyData.meta[2]) || ((bool) && (m == 8) && (paramInt == 67))) && (locals.isEnabled()))
        paramList.add(locals);
      k++;
      break label49;
      break;
    }
  }

  private void b(int paramInt, boolean paramBoolean)
  {
    if ((paramInt < 0) || (paramInt >= this.eg.size()));
    do
    {
      return;
      this.eg.remove(paramInt);
    }
    while (!paramBoolean);
    m(true);
  }

  protected final o E(View paramView)
  {
    a(null, null, paramView);
    return this;
  }

  protected final o a(Drawable paramDrawable)
  {
    a(null, paramDrawable, null);
    return this;
  }

  public final void a(ae paramae)
  {
    this.kK.add(new WeakReference(paramae));
    paramae.a(this.mContext, this);
    this.kz = true;
  }

  public void a(p paramp)
  {
    this.ku = paramp;
  }

  boolean a(o paramo, MenuItem paramMenuItem)
  {
    return (this.ku != null) && (this.ku.h(paramMenuItem));
  }

  public MenuItem add(int paramInt)
  {
    return a(0, 0, 0, this.kr.getString(paramInt));
  }

  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return a(paramInt1, paramInt2, paramInt3, this.kr.getString(paramInt4));
  }

  public MenuItem add(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    return a(paramInt1, paramInt2, paramInt3, paramCharSequence);
  }

  public MenuItem add(CharSequence paramCharSequence)
  {
    return a(0, 0, 0, paramCharSequence);
  }

  public int addIntentOptions(int paramInt1, int paramInt2, int paramInt3, ComponentName paramComponentName, Intent[] paramArrayOfIntent, Intent paramIntent, int paramInt4, MenuItem[] paramArrayOfMenuItem)
  {
    PackageManager localPackageManager = this.mContext.getPackageManager();
    List localList = localPackageManager.queryIntentActivityOptions(paramComponentName, paramArrayOfIntent, paramIntent, 0);
    int i;
    int j;
    label52: ResolveInfo localResolveInfo;
    if (localList != null)
    {
      i = localList.size();
      if ((paramInt4 & 0x1) == 0)
        removeGroup(paramInt1);
      j = 0;
      if (j >= i)
        break label211;
      localResolveInfo = (ResolveInfo)localList.get(j);
      if (localResolveInfo.specificIndex >= 0)
        break label198;
    }
    label198: for (Intent localIntent1 = paramIntent; ; localIntent1 = paramArrayOfIntent[localResolveInfo.specificIndex])
    {
      Intent localIntent2 = new Intent(localIntent1);
      localIntent2.setComponent(new ComponentName(localResolveInfo.activityInfo.applicationInfo.packageName, localResolveInfo.activityInfo.name));
      MenuItem localMenuItem = add(paramInt1, paramInt2, paramInt3, localResolveInfo.loadLabel(localPackageManager)).setIcon(localResolveInfo.loadIcon(localPackageManager)).setIntent(localIntent2);
      if ((paramArrayOfMenuItem != null) && (localResolveInfo.specificIndex >= 0))
        paramArrayOfMenuItem[localResolveInfo.specificIndex] = localMenuItem;
      j++;
      break label52;
      i = 0;
      break;
    }
    label211: return i;
  }

  public SubMenu addSubMenu(int paramInt)
  {
    return addSubMenu(0, 0, 0, this.kr.getString(paramInt));
  }

  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    return addSubMenu(paramInt1, paramInt2, paramInt3, this.kr.getString(paramInt4));
  }

  public SubMenu addSubMenu(int paramInt1, int paramInt2, int paramInt3, CharSequence paramCharSequence)
  {
    s locals = (s)a(paramInt1, paramInt2, paramInt3, paramCharSequence);
    ak localak = new ak(this.mContext, this, locals);
    locals.b(localak);
    return localak;
  }

  public SubMenu addSubMenu(CharSequence paramCharSequence)
  {
    return addSubMenu(0, 0, 0, paramCharSequence);
  }

  public final void b(ae paramae)
  {
    Iterator localIterator = this.kK.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      ae localae = (ae)localWeakReference.get();
      if ((localae == null) || (localae == paramae))
        this.kK.remove(localWeakReference);
    }
  }

  boolean bU()
  {
    return this.ks;
  }

  public boolean bV()
  {
    return this.kt;
  }

  public final void bW()
  {
    if (this.ku != null)
      this.ku.a(this);
  }

  public final void bX()
  {
    if (!this.kF)
    {
      this.kF = true;
      this.kG = false;
    }
  }

  public final void bY()
  {
    this.kF = false;
    if (this.kG)
    {
      this.kG = false;
      m(true);
    }
  }

  final void bZ()
  {
    this.kw = true;
    m(true);
  }

  protected final o c(CharSequence paramCharSequence)
  {
    a(paramCharSequence, null, null);
    return this;
  }

  public final boolean c(MenuItem paramMenuItem, int paramInt)
  {
    s locals = (s)paramMenuItem;
    boolean bool1;
    if ((locals == null) || (!locals.isEnabled()))
      bool1 = false;
    boolean bool2;
    ak localak;
    boolean bool4;
    do
    {
      do
      {
        return bool1;
        bool2 = locals.cm();
        locals.cx();
        if (!locals.cy())
          break;
        bool1 = bool2 | locals.expandActionView();
      }
      while (!bool1);
      l(true);
      return bool1;
      if (!locals.hasSubMenu())
        break label236;
      l(false);
      if (!locals.hasSubMenu())
        locals.b(new ak(this.mContext, this, locals));
      localak = (ak)locals.getSubMenu();
      boolean bool3 = this.kK.isEmpty();
      bool4 = false;
      if (!bool3)
        break;
      bool1 = bool2 | bool4;
    }
    while (bool1);
    l(true);
    return bool1;
    Iterator localIterator = this.kK.iterator();
    boolean bool5 = false;
    label156: ae localae;
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      localae = (ae)localWeakReference.get();
      if (localae == null)
        this.kK.remove(localWeakReference);
      else
        if (bool5)
          break label250;
    }
    label236: label250: for (boolean bool6 = localae.a(localak); ; bool6 = bool5)
    {
      bool5 = bool6;
      break label156;
      bool4 = bool5;
      break;
      if ((paramInt & 0x1) == 0)
        l(true);
      return bool2;
    }
  }

  final void ca()
  {
    this.kz = true;
    m(true);
  }

  final ArrayList cb()
  {
    if (!this.kw)
      return this.kv;
    this.kv.clear();
    int i = this.eg.size();
    for (int j = 0; j < i; j++)
    {
      s locals = (s)this.eg.get(j);
      if (locals.isVisible())
        this.kv.add(locals);
    }
    this.kw = false;
    this.kz = true;
    return this.kv;
  }

  public final void cc()
  {
    if (!this.kz)
      return;
    Iterator localIterator = this.kK.iterator();
    boolean bool = false;
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      ae localae = (ae)localWeakReference.get();
      if (localae == null)
        this.kK.remove(localWeakReference);
      else
        bool |= localae.bN();
    }
    if (bool)
    {
      this.kx.clear();
      this.ky.clear();
      ArrayList localArrayList = cb();
      int i = localArrayList.size();
      int j = 0;
      if (j < i)
      {
        s locals = (s)localArrayList.get(j);
        if (locals.ct())
          this.kx.add(locals);
        while (true)
        {
          j++;
          break;
          this.ky.add(locals);
        }
      }
    }
    else
    {
      this.kx.clear();
      this.ky.clear();
      this.ky.addAll(cb());
    }
    this.kz = false;
  }

  final ArrayList cd()
  {
    cc();
    return this.kx;
  }

  final ArrayList ce()
  {
    cc();
    return this.ky;
  }

  public final CharSequence cf()
  {
    return this.kC;
  }

  public final Drawable cg()
  {
    return this.kD;
  }

  public final View ch()
  {
    return this.kE;
  }

  public o ci()
  {
    return this;
  }

  final boolean cj()
  {
    return this.kH;
  }

  public final s ck()
  {
    return this.kL;
  }

  public void clear()
  {
    if (this.kL != null)
      g(this.kL);
    this.eg.clear();
    m(true);
  }

  public void clearHeader()
  {
    this.kD = null;
    this.kC = null;
    this.kE = null;
    m(false);
  }

  public void close()
  {
    l(true);
  }

  public boolean f(s params)
  {
    boolean bool1 = this.kK.isEmpty();
    boolean bool2 = false;
    if (bool1)
      return bool2;
    bX();
    Iterator localIterator = this.kK.iterator();
    boolean bool3 = false;
    while (true)
      label32: if (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        ae localae = (ae)localWeakReference.get();
        if (localae == null)
        {
          this.kK.remove(localWeakReference);
        }
        else
        {
          bool2 = localae.d(params);
          if (!bool2)
            break;
        }
      }
    while (true)
    {
      bY();
      if (!bool2)
        break;
      this.kL = params;
      return bool2;
      bool3 = bool2;
      break label32;
      bool2 = bool3;
    }
  }

  public MenuItem findItem(int paramInt)
  {
    int i = size();
    for (int j = 0; j < i; j++)
    {
      Object localObject = (s)this.eg.get(j);
      if (((s)localObject).getItemId() == paramInt);
      do
      {
        return localObject;
        if (!((s)localObject).hasSubMenu())
          break;
        localObject = ((s)localObject).getSubMenu().findItem(paramInt);
      }
      while (localObject != null);
    }
    return null;
  }

  public boolean g(s params)
  {
    boolean bool1 = this.kK.isEmpty();
    boolean bool2 = false;
    if (!bool1)
    {
      s locals = this.kL;
      bool2 = false;
      if (locals == params);
    }
    else
    {
      return bool2;
    }
    bX();
    Iterator localIterator = this.kK.iterator();
    boolean bool3 = false;
    while (true)
      label46: if (localIterator.hasNext())
      {
        WeakReference localWeakReference = (WeakReference)localIterator.next();
        ae localae = (ae)localWeakReference.get();
        if (localae == null)
        {
          this.kK.remove(localWeakReference);
        }
        else
        {
          bool2 = localae.e(params);
          if (!bool2)
            break;
        }
      }
    while (true)
    {
      bY();
      if (!bool2)
        break;
      this.kL = null;
      return bool2;
      bool3 = bool2;
      break label46;
      bool2 = bool3;
    }
  }

  public final Context getContext()
  {
    return this.mContext;
  }

  public MenuItem getItem(int paramInt)
  {
    return (MenuItem)this.eg.get(paramInt);
  }

  final Resources getResources()
  {
    return this.kr;
  }

  public boolean hasVisibleItems()
  {
    int i = size();
    for (int j = 0; j < i; j++)
      if (((s)this.eg.get(j)).isVisible())
        return true;
    return false;
  }

  public boolean isShortcutKey(int paramInt, KeyEvent paramKeyEvent)
  {
    return a(paramInt, paramKeyEvent) != null;
  }

  final void k(MenuItem paramMenuItem)
  {
    int i = paramMenuItem.getGroupId();
    int j = this.eg.size();
    int k = 0;
    if (k < j)
    {
      s locals = (s)this.eg.get(k);
      if ((locals.getGroupId() == i) && (locals.cr()) && (locals.isCheckable()))
        if (locals != paramMenuItem)
          break label85;
      label85: for (boolean bool = true; ; bool = false)
      {
        locals.o(bool);
        k++;
        break;
      }
    }
  }

  final void l(boolean paramBoolean)
  {
    if (this.kI)
      return;
    this.kI = true;
    Iterator localIterator = this.kK.iterator();
    while (localIterator.hasNext())
    {
      WeakReference localWeakReference = (WeakReference)localIterator.next();
      ae localae = (ae)localWeakReference.get();
      if (localae == null)
        this.kK.remove(localWeakReference);
      else
        localae.a(this, paramBoolean);
    }
    this.kI = false;
  }

  final void m(boolean paramBoolean)
  {
    if (!this.kF)
    {
      if (paramBoolean)
      {
        this.kw = true;
        this.kz = true;
      }
      if (!this.kK.isEmpty())
      {
        bX();
        Iterator localIterator = this.kK.iterator();
        while (localIterator.hasNext())
        {
          WeakReference localWeakReference = (WeakReference)localIterator.next();
          ae localae = (ae)localWeakReference.get();
          if (localae == null)
            this.kK.remove(localWeakReference);
          else
            localae.j(paramBoolean);
        }
        bY();
      }
      return;
    }
    this.kG = true;
  }

  public boolean performIdentifierAction(int paramInt1, int paramInt2)
  {
    return c(findItem(paramInt1), paramInt2);
  }

  public boolean performShortcut(int paramInt1, KeyEvent paramKeyEvent, int paramInt2)
  {
    s locals = a(paramInt1, paramKeyEvent);
    boolean bool = false;
    if (locals != null)
      bool = c(locals, paramInt2);
    if ((paramInt2 & 0x2) != 0)
      l(true);
    return bool;
  }

  public void removeGroup(int paramInt)
  {
    int i = size();
    int j = 0;
    int k;
    if (j < i)
      if (((s)this.eg.get(j)).getGroupId() == paramInt)
        k = j;
    while (true)
      if (k >= 0)
      {
        int m = this.eg.size() - k;
        int i1;
        for (int n = 0; ; n = i1)
        {
          i1 = n + 1;
          if ((n >= m) || (((s)this.eg.get(k)).getGroupId() != paramInt))
            break;
          b(k, false);
        }
        j++;
        break;
        k = -1;
        continue;
        m(true);
      }
  }

  public void removeItem(int paramInt)
  {
    int i = size();
    int j = 0;
    if (j < i)
      if (((s)this.eg.get(j)).getItemId() != paramInt);
    for (int k = j; ; k = -1)
    {
      b(k, true);
      return;
      j++;
      break;
    }
  }

  public void setGroupCheckable(int paramInt, boolean paramBoolean1, boolean paramBoolean2)
  {
    int i = this.eg.size();
    for (int j = 0; j < i; j++)
    {
      s locals = (s)this.eg.get(j);
      if (locals.getGroupId() == paramInt)
      {
        locals.n(paramBoolean2);
        locals.setCheckable(paramBoolean1);
      }
    }
  }

  public void setGroupEnabled(int paramInt, boolean paramBoolean)
  {
    int i = this.eg.size();
    for (int j = 0; j < i; j++)
    {
      s locals = (s)this.eg.get(j);
      if (locals.getGroupId() == paramInt)
        locals.setEnabled(paramBoolean);
    }
  }

  public void setGroupVisible(int paramInt, boolean paramBoolean)
  {
    int i = this.eg.size();
    int j = 0;
    int k = 0;
    if (j < i)
    {
      s locals = (s)this.eg.get(j);
      if ((locals.getGroupId() != paramInt) || (!locals.p(paramBoolean)))
        break label76;
    }
    label76: for (int m = 1; ; m = k)
    {
      j++;
      k = m;
      break;
      if (k != 0)
        m(true);
      return;
    }
  }

  public void setQwertyMode(boolean paramBoolean)
  {
    this.ks = paramBoolean;
    m(false);
  }

  public int size()
  {
    return this.eg.size();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.o
 * JD-Core Version:    0.6.2
 */