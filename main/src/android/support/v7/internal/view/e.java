package android.support.v7.internal.view;

import android.content.Context;
import android.content.res.TypedArray;
import android.support.v4.view.n;
import android.support.v4.view.z;
import android.support.v7.internal.view.menu.s;
import android.util.AttributeSet;
import android.view.Menu;
import android.view.MenuItem;
import android.view.SubMenu;
import android.view.View;
import com.tencent.mm.p;
import java.lang.reflect.Constructor;

final class e
{
  private int iA;
  private CharSequence iB;
  private CharSequence iC;
  private int iD;
  private char iE;
  private char iF;
  private int iG;
  private boolean iH;
  private boolean iI;
  private boolean iJ;
  private int iK;
  private int iL;
  private String iM;
  private String iN;
  private String iO;
  private n iP;
  private Menu ir;
  private int is;
  private int it;
  private int iu;
  private int iv;
  private boolean iw;
  private boolean ix;
  private boolean iy;
  private int iz;

  public e(c paramc, Menu paramMenu)
  {
    this.ir = paramMenu;
    bx();
  }

  private Object a(String paramString, Class[] paramArrayOfClass, Object[] paramArrayOfObject)
  {
    try
    {
      Object localObject = c.a(this.iQ).getClassLoader().loadClass(paramString).getConstructor(paramArrayOfClass).newInstance(paramArrayOfObject);
      return localObject;
    }
    catch (Exception localException)
    {
      new StringBuilder("Cannot instantiate class: ").append(paramString).toString();
    }
    return null;
  }

  private static char h(String paramString)
  {
    if (paramString == null)
      return '\000';
    return paramString.charAt(0);
  }

  private void i(MenuItem paramMenuItem)
  {
    boolean bool1 = true;
    MenuItem localMenuItem = paramMenuItem.setChecked(this.iH).setVisible(this.iI).setEnabled(this.iJ);
    if (this.iG > 0);
    for (boolean bool2 = bool1; ; bool2 = false)
    {
      localMenuItem.setCheckable(bool2).setTitleCondensed(this.iC).setIcon(this.iD).setAlphabeticShortcut(this.iE).setNumericShortcut(this.iF);
      if (this.iK >= 0)
        z.a(paramMenuItem, this.iK);
      if (this.iO == null)
        break label162;
      if (!c.a(this.iQ).isRestricted())
        break;
      throw new IllegalStateException("The android:onClick attribute cannot be used within a restricted context");
    }
    paramMenuItem.setOnMenuItemClickListener(new d(c.c(this.iQ), this.iO));
    label162: s locals;
    if ((paramMenuItem instanceof s))
    {
      locals = (s)paramMenuItem;
      if ((locals != null) && (this.iG >= 2))
        locals.n(bool1);
      if (this.iM == null)
        break label270;
      z.a(paramMenuItem, (View)a(this.iM, c.bw(), c.d(this.iQ)));
    }
    while (true)
    {
      if ((this.iL > 0) && (!bool1))
        z.b(paramMenuItem, this.iL);
      if (this.iP != null)
        z.a(paramMenuItem, this.iP);
      return;
      locals = null;
      break;
      label270: bool1 = false;
    }
  }

  public final void a(AttributeSet paramAttributeSet)
  {
    TypedArray localTypedArray = c.a(this.iQ).obtainStyledAttributes(paramAttributeSet, p.bJr);
    this.is = localTypedArray.getResourceId(1, 0);
    this.it = localTypedArray.getInt(3, 0);
    this.iu = localTypedArray.getInt(4, 0);
    this.iv = localTypedArray.getInt(5, 0);
    this.iw = localTypedArray.getBoolean(2, true);
    this.ix = localTypedArray.getBoolean(0, true);
    localTypedArray.recycle();
  }

  public final void b(AttributeSet paramAttributeSet)
  {
    int i = 1;
    TypedArray localTypedArray = c.a(this.iQ).obtainStyledAttributes(paramAttributeSet, p.bJs);
    this.iz = localTypedArray.getResourceId(2, 0);
    int j = localTypedArray.getInt(5, this.it);
    int k = localTypedArray.getInt(6, this.iu);
    this.iA = (j & 0xFFFF0000 | k & 0xFFFF);
    this.iB = localTypedArray.getText(7);
    this.iC = localTypedArray.getText(8);
    this.iD = localTypedArray.getResourceId(0, 0);
    this.iE = h(localTypedArray.getString(9));
    this.iF = h(localTypedArray.getString(10));
    int m;
    if (localTypedArray.hasValue(11))
      if (localTypedArray.getBoolean(11, false))
      {
        m = i;
        this.iG = m;
        label151: this.iH = localTypedArray.getBoolean(3, false);
        this.iI = localTypedArray.getBoolean(4, this.iw);
        this.iJ = localTypedArray.getBoolean(i, this.ix);
        this.iK = localTypedArray.getInt(13, -1);
        this.iO = localTypedArray.getString(12);
        this.iL = localTypedArray.getResourceId(14, 0);
        this.iM = localTypedArray.getString(15);
        this.iN = localTypedArray.getString(16);
        if (this.iN == null)
          break label316;
        label246: if ((i == 0) || (this.iL != 0) || (this.iM != null))
          break label321;
      }
    label316: label321: for (this.iP = ((n)a(this.iN, c.bv(), c.b(this.iQ))); ; this.iP = null)
    {
      localTypedArray.recycle();
      this.iy = false;
      return;
      m = 0;
      break;
      this.iG = this.iv;
      break label151;
      i = 0;
      break label246;
    }
  }

  public final boolean bA()
  {
    return this.iy;
  }

  public final void bx()
  {
    this.is = 0;
    this.it = 0;
    this.iu = 0;
    this.iv = 0;
    this.iw = true;
    this.ix = true;
  }

  public final void by()
  {
    this.iy = true;
    i(this.ir.add(this.is, this.iz, this.iA, this.iB));
  }

  public final SubMenu bz()
  {
    this.iy = true;
    SubMenu localSubMenu = this.ir.addSubMenu(this.is, this.iz, this.iA, this.iB);
    i(localSubMenu.getItem());
    return localSubMenu;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.e
 * JD-Core Version:    0.6.2
 */