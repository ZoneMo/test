package android.support.v7.internal.view.menu;

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

public final class a
  implements b
{
  private final int cc;
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
  private Context mContext;
  private int mFlags = 16;

  public a(Context paramContext, CharSequence paramCharSequence)
  {
    this.mContext = paramContext;
    this.cc = 16908332;
    this.iR = 0;
    this.iS = 0;
    this.iT = 0;
    this.iU = paramCharSequence;
  }

  public final b a(af paramaf)
  {
    return this;
  }

  public final b a(n paramn)
  {
    throw new UnsupportedOperationException();
  }

  public final boolean collapseActionView()
  {
    return false;
  }

  public final boolean expandActionView()
  {
    return false;
  }

  public final ActionProvider getActionProvider()
  {
    throw new UnsupportedOperationException();
  }

  public final View getActionView()
  {
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
    return this.iZ;
  }

  public final Intent getIntent()
  {
    return this.iW;
  }

  public final int getItemId()
  {
    return this.cc;
  }

  public final ContextMenu.ContextMenuInfo getMenuInfo()
  {
    return null;
  }

  public final char getNumericShortcut()
  {
    return this.iX;
  }

  public final int getOrder()
  {
    return this.iT;
  }

  public final SubMenu getSubMenu()
  {
    return null;
  }

  public final CharSequence getTitle()
  {
    return this.iU;
  }

  public final CharSequence getTitleCondensed()
  {
    return this.iV;
  }

  public final boolean hasSubMenu()
  {
    return false;
  }

  public final boolean isActionViewExpanded()
  {
    return false;
  }

  public final boolean isCheckable()
  {
    return (0x1 & this.mFlags) != 0;
  }

  public final boolean isChecked()
  {
    return (0x2 & this.mFlags) != 0;
  }

  public final boolean isEnabled()
  {
    return (0x10 & this.mFlags) != 0;
  }

  public final boolean isVisible()
  {
    return (0x8 & this.mFlags) == 0;
  }

  public final MenuItem setActionProvider(ActionProvider paramActionProvider)
  {
    throw new UnsupportedOperationException();
  }

  public final MenuItem setAlphabeticShortcut(char paramChar)
  {
    this.iY = paramChar;
    return this;
  }

  public final MenuItem setCheckable(boolean paramBoolean)
  {
    int i = 0xFFFFFFFE & this.mFlags;
    if (paramBoolean);
    for (int j = 1; ; j = 0)
    {
      this.mFlags = (j | i);
      return this;
    }
  }

  public final MenuItem setChecked(boolean paramBoolean)
  {
    int i = 0xFFFFFFFD & this.mFlags;
    if (paramBoolean);
    for (int j = 2; ; j = 0)
    {
      this.mFlags = (j | i);
      return this;
    }
  }

  public final MenuItem setEnabled(boolean paramBoolean)
  {
    int i = 0xFFFFFFEF & this.mFlags;
    if (paramBoolean);
    for (int j = 16; ; j = 0)
    {
      this.mFlags = (j | i);
      return this;
    }
  }

  public final MenuItem setIcon(int paramInt)
  {
    this.ja = paramInt;
    this.iZ = this.mContext.getResources().getDrawable(paramInt);
    return this;
  }

  public final MenuItem setIcon(Drawable paramDrawable)
  {
    this.iZ = paramDrawable;
    this.ja = 0;
    return this;
  }

  public final MenuItem setIntent(Intent paramIntent)
  {
    this.iW = paramIntent;
    return this;
  }

  public final MenuItem setNumericShortcut(char paramChar)
  {
    this.iX = paramChar;
    return this;
  }

  public final MenuItem setOnActionExpandListener(MenuItem.OnActionExpandListener paramOnActionExpandListener)
  {
    throw new UnsupportedOperationException();
  }

  public final MenuItem setOnMenuItemClickListener(MenuItem.OnMenuItemClickListener paramOnMenuItemClickListener)
  {
    this.jb = paramOnMenuItemClickListener;
    return this;
  }

  public final MenuItem setShortcut(char paramChar1, char paramChar2)
  {
    this.iX = paramChar1;
    this.iY = paramChar2;
    return this;
  }

  public final void setShowAsAction(int paramInt)
  {
  }

  public final MenuItem setTitle(int paramInt)
  {
    this.iU = this.mContext.getResources().getString(paramInt);
    return this;
  }

  public final MenuItem setTitle(CharSequence paramCharSequence)
  {
    this.iU = paramCharSequence;
    return this;
  }

  public final MenuItem setTitleCondensed(CharSequence paramCharSequence)
  {
    this.iV = paramCharSequence;
    return this;
  }

  public final MenuItem setVisible(boolean paramBoolean)
  {
    int i = 0x8 & this.mFlags;
    if (paramBoolean);
    for (int j = 0; ; j = 8)
    {
      this.mFlags = (j | i);
      return this;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.a
 * JD-Core Version:    0.6.2
 */