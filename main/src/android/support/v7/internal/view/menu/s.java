package android.support.v7.internal.view.menu;

import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.support.v4.a.a.b;
import android.support.v4.view.af;
import android.support.v4.view.n;
import android.view.ActionProvider;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.MenuItem;
import android.view.MenuItem.OnActionExpandListener;
import android.view.MenuItem.OnMenuItemClickListener;
import android.view.SubMenu;
import android.view.View;
import android.view.ViewDebug.CapturedViewProperty;

public final class s
  implements b
{
  private static String kX;
  private static String kY;
  private static String kZ;
  private static String la;
  private final int cc;
  private o hh;
  private final int iR;
  private final int iS;
  private final int iT;
  private CharSequence iU;
  private CharSequence iV;
  private Intent iW;
  private char iX;
  private char iY;
  private Drawable iZ;
  private int ja = 0;
  private MenuItem.OnMenuItemClickListener jb;
  private ak kP;
  private Runnable kQ;
  private int kR = 0;
  private View kS;
  private n kT;
  private af kU;
  private boolean kV = false;
  private ContextMenu.ContextMenuInfo kW;
  private int mFlags = 16;

  s(o paramo, int paramInt1, int paramInt2, int paramInt3, int paramInt4, CharSequence paramCharSequence, int paramInt5)
  {
    this.hh = paramo;
    this.cc = paramInt2;
    this.iR = paramInt1;
    this.iS = paramInt3;
    this.iT = paramInt4;
    this.iU = paramCharSequence;
    this.kR = paramInt5;
  }

  private b D(int paramInt)
  {
    setShowAsAction(paramInt);
    return this;
  }

  private b F(View paramView)
  {
    this.kS = paramView;
    this.kT = null;
    if ((paramView != null) && (paramView.getId() == -1) && (this.cc > 0))
      paramView.setId(this.cc);
    this.hh.ca();
    return this;
  }

  public final b a(af paramaf)
  {
    this.kU = paramaf;
    return this;
  }

  public final b a(n paramn)
  {
    if (this.kT == paramn);
    do
    {
      return this;
      this.kS = null;
      if (this.kT != null)
        this.kT.a(null);
      this.kT = paramn;
      this.hh.m(true);
    }
    while (paramn == null);
    paramn.a(new t(this));
    return this;
  }

  final CharSequence a(ah paramah)
  {
    if ((paramah != null) && (paramah.bC()))
      return getTitleCondensed();
    return getTitle();
  }

  final void a(ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    this.kW = paramContextMenuInfo;
  }

  final void b(ak paramak)
  {
    this.kP = paramak;
    paramak.setHeaderTitle(getTitle());
  }

  public final boolean cm()
  {
    if ((this.jb != null) && (this.jb.onMenuItemClick(this)));
    while (this.hh.a(this.hh.ci(), this))
      return true;
    if (this.kQ != null)
    {
      this.kQ.run();
      return true;
    }
    if (this.iW != null)
      try
      {
        this.hh.getContext().startActivity(this.iW);
        return true;
      }
      catch (ActivityNotFoundException localActivityNotFoundException)
      {
      }
    if (this.kT != null);
    return false;
  }

  public final int cn()
  {
    return this.iT;
  }

  final char co()
  {
    return this.iY;
  }

  public final boolean collapseActionView()
  {
    if ((0x8 & this.kR) == 0)
      return false;
    if (this.kS == null)
      return true;
    if (this.kU != null)
      this.kU.ae();
    return this.hh.g(this);
  }

  final String cp()
  {
    char c = this.iY;
    if (c == 0)
      return "";
    StringBuilder localStringBuilder = new StringBuilder(kX);
    switch (c)
    {
    default:
      localStringBuilder.append(c);
    case '\n':
    case '\b':
    case ' ':
    }
    while (true)
    {
      return localStringBuilder.toString();
      localStringBuilder.append(kY);
      continue;
      localStringBuilder.append(kZ);
      continue;
      localStringBuilder.append(la);
    }
  }

  final boolean cq()
  {
    return (this.hh.bV()) && (this.iY != 0);
  }

  public final boolean cr()
  {
    return (0x4 & this.mFlags) != 0;
  }

  public final boolean cs()
  {
    return this.hh.cj();
  }

  public final boolean ct()
  {
    return (0x20 & this.mFlags) == 32;
  }

  public final boolean cu()
  {
    return (0x1 & this.kR) == 1;
  }

  public final boolean cv()
  {
    return (0x2 & this.kR) == 2;
  }

  public final boolean cw()
  {
    return (0x4 & this.kR) == 4;
  }

  public final n cx()
  {
    return this.kT;
  }

  public final boolean cy()
  {
    return ((0x8 & this.kR) != 0) && (this.kS != null);
  }

  public final boolean expandActionView()
  {
    if (((0x8 & this.kR) == 0) || (this.kS == null))
      return false;
    if (this.kU != null)
      this.kU.ad();
    return this.hh.f(this);
  }

  public final ActionProvider getActionProvider()
  {
    throw new UnsupportedOperationException("Implementation should use getSupportActionProvider!");
  }

  public final View getActionView()
  {
    if (this.kS != null)
      return this.kS;
    if (this.kT != null)
    {
      this.kS = this.kT.onCreateActionView();
      return this.kS;
    }
    return null;
  }

  public final char getAlphabeticShortcut()
  {
    return this.iY;
  }

  public final int getGroupId()
  {
    return this.iR;
  }

  public final Drawable getIcon()
  {
    if (this.iZ != null)
      return this.iZ;
    if (this.ja != 0)
    {
      Drawable localDrawable = this.hh.getResources().getDrawable(this.ja);
      this.ja = 0;
      this.iZ = localDrawable;
      return localDrawable;
    }
    return null;
  }

  public final Intent getIntent()
  {
    return this.iW;
  }

  @ViewDebug.CapturedViewProperty
  public final int getItemId()
  {
    return this.cc;
  }

  public final ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return this.kW;
  }

  public final char getNumericShortcut()
  {
    return this.iX;
  }

  public final int getOrder()
  {
    return this.iS;
  }

  public final SubMenu getSubMenu()
  {
    return this.kP;
  }

  @ViewDebug.CapturedViewProperty
  public final CharSequence getTitle()
  {
    return this.iU;
  }

  public final CharSequence getTitleCondensed()
  {
    if (this.iV != null)
      return this.iV;
    return this.iU;
  }

  public final boolean hasSubMenu()
  {
    return this.kP != null;
  }

  public final boolean isActionViewExpanded()
  {
    return this.kV;
  }

  public final boolean isCheckable()
  {
    return (0x1 & this.mFlags) == 1;
  }

  public final boolean isChecked()
  {
    return (0x2 & this.mFlags) == 2;
  }

  public final boolean isEnabled()
  {
    return (0x10 & this.mFlags) != 0;
  }

  public final boolean isVisible()
  {
    return (this.kT == null) || ((0x8 & this.mFlags) == 0);
  }

  public final void n(boolean paramBoolean)
  {
    int i = 0xFFFFFFFB & this.mFlags;
    if (paramBoolean);
    for (int j = 4; ; j = 0)
    {
      this.mFlags = (j | i);
      return;
    }
  }

  final void o(boolean paramBoolean)
  {
    int i = this.mFlags;
    int j = 0xFFFFFFFD & this.mFlags;
    if (paramBoolean);
    for (int k = 2; ; k = 0)
    {
      this.mFlags = (k | j);
      if (i != this.mFlags)
        this.hh.m(false);
      return;
    }
  }

  final boolean p(boolean paramBoolean)
  {
    int i = this.mFlags;
    int j = 0xFFFFFFF7 & this.mFlags;
    if (paramBoolean);
    for (int k = 0; ; k = 8)
    {
      this.mFlags = (k | j);
      int m = this.mFlags;
      boolean bool = false;
      if (i != m)
        bool = true;
      return bool;
    }
  }

  public final void q(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.mFlags = (0x20 | this.mFlags);
      return;
    }
    this.mFlags = (0xFFFFFFDF & this.mFlags);
  }

  public final void r(boolean paramBoolean)
  {
    this.kV = paramBoolean;
    this.hh.m(false);
  }

  public final MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException("Implementation should use setSupportActionProvider!");
  }

  public final MenuItem setAlphabeticShortcut(char paramChar)
  {
    if (this.iY == paramChar)
      return this;
    this.iY = Character.toLowerCase(paramChar);
    this.hh.m(false);
    return this;
  }

  public final MenuItem setCheckable(boolean paramBoolean)
  {
    int i = this.mFlags;
    int j = 0xFFFFFFFE & this.mFlags;
    if (paramBoolean);
    for (int k = 1; ; k = 0)
    {
      this.mFlags = (k | j);
      if (i != this.mFlags)
        this.hh.m(false);
      return this;
    }
  }

  public final MenuItem setChecked(boolean paramBoolean)
  {
    if ((0x4 & this.mFlags) != 0)
    {
      this.hh.k(this);
      return this;
    }
    o(paramBoolean);
    return this;
  }

  public final MenuItem setEnabled(boolean paramBoolean)
  {
    if (paramBoolean);
    for (this.mFlags = (0x10 | this.mFlags); ; this.mFlags = (0xFFFFFFEF & this.mFlags))
    {
      this.hh.m(false);
      return this;
    }
  }

  public final MenuItem setIcon(int paramInt)
  {
    this.iZ = null;
    this.ja = paramInt;
    this.hh.m(false);
    return this;
  }

  public final MenuItem setIcon(Drawable paramDrawable)
  {
    this.ja = 0;
    this.iZ = paramDrawable;
    this.hh.m(false);
    return this;
  }

  public final MenuItem setIntent(Intent paramIntent)
  {
    this.iW = paramIntent;
    return this;
  }

  public final MenuItem setNumericShortcut(char paramChar)
  {
    if (this.iX == paramChar)
      return this;
    this.iX = paramChar;
    this.hh.m(false);
    return this;
  }

  public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    throw new UnsupportedOperationException("Implementation should use setSupportOnActionExpandListener!");
  }

  public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    this.jb = paramOnMenuItemClickListener;
    return this;
  }

  public final MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    this.iX = paramChar1;
    this.iY = Character.toLowerCase(paramChar2);
    this.hh.m(false);
    return this;
  }

  public final void setShowAsAction(int paramInt)
  {
    switch (paramInt & 0x3)
    {
    default:
      throw new IllegalArgumentException("SHOW_AS_ACTION_ALWAYS, SHOW_AS_ACTION_IF_ROOM, and SHOW_AS_ACTION_NEVER are mutually exclusive.");
    case 0:
    case 1:
    case 2:
    }
    this.kR = paramInt;
    this.hh.ca();
  }

  public final MenuItem setTitle(int paramInt)
  {
    return setTitle(this.hh.getContext().getString(paramInt));
  }

  public final MenuItem setTitle(CharSequence paramCharSequence)
  {
    this.iU = paramCharSequence;
    this.hh.m(false);
    if (this.kP != null)
      this.kP.setHeaderTitle(paramCharSequence);
    return this;
  }

  public final MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    this.iV = paramCharSequence;
    if (paramCharSequence == null);
    this.hh.m(false);
    return this;
  }

  public final MenuItem setVisible(boolean paramBoolean)
  {
    if (p(paramBoolean))
      this.hh.bZ();
    return this;
  }

  public final String toString()
  {
    return this.iU.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.s
 * JD-Core Version:    0.6.2
 */