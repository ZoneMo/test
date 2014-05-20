package com.tencent.mm.ui;

import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.s;
import android.support.v4.view.ViewPager;
import android.support.v4.view.bz;
import com.tencent.mm.sdk.platformtools.aa;

public final class au extends s
  implements bz, ay
{
  private final ViewPager dew;
  private com.tencent.mm.ui.contact.m gmm;
  private boolean gmn = false;
  private int gmo = 0;

  public au(LauncherUI paramLauncherUI, FragmentActivity paramFragmentActivity, ViewPager paramViewPager)
  {
    super(paramFragmentActivity.w());
    this.dew = paramViewPager;
    this.dew.a(this);
    this.dew.a(this);
  }

  public final void a(int paramInt, float paramFloat)
  {
    LauncherUI.a(this.gmk).b(paramInt, paramFloat);
    if (0.0F != paramFloat)
    {
      if (this.gmm == null)
        this.gmm = ((com.tencent.mm.ui.contact.m)this.gmk.mr(2));
      this.gmm.dQ(false);
      return;
    }
    if (this.gmm != null)
    {
      this.gmm.dQ(true);
      this.gmm = null;
    }
    this.gmk.aY(LauncherUI.i(this.gmk), LauncherUI.j(this.gmk));
    this.gmk.mp(paramInt);
  }

  public final Fragment f(int paramInt)
  {
    return this.gmk.mr(paramInt);
  }

  public final int getCount()
  {
    return 3;
  }

  public final void j(int paramInt)
  {
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.LauncherUI", "on page selected changed to %d", arrayOfObject1);
    Object[] arrayOfObject2 = new Object[2];
    arrayOfObject2[0] = Integer.valueOf(this.gmo);
    arrayOfObject2[1] = Integer.valueOf(paramInt);
    aa.f("MicroMsg.LauncherUI", "reportSwitch clickCount:%d, pos:%d", arrayOfObject2);
    if (this.gmo > 0)
    {
      this.gmo = (-1 + this.gmo);
      switch (paramInt)
      {
      default:
      case 0:
      case 1:
      case 2:
      case 3:
      }
    }
    while (true)
    {
      this.gmn = false;
      LauncherUI.a(this.gmk, LauncherUI.j(this.gmk));
      LauncherUI.b(this.gmk, paramInt);
      LauncherUI.a(this.gmk).mu(paramInt);
      this.gmk.mr(paramInt);
      cy.aFp();
      this.gmk.u();
      return;
      com.tencent.mm.plugin.d.c.m.dZN.j(10957, "1");
      continue;
      com.tencent.mm.plugin.d.c.m.dZN.j(10957, "2");
      continue;
      com.tencent.mm.plugin.d.c.m.dZN.j(10957, "3");
      continue;
      com.tencent.mm.plugin.d.c.m.dZN.j(10957, "4");
      continue;
      switch (paramInt)
      {
      default:
        break;
      case 0:
        com.tencent.mm.plugin.d.c.m.dZN.j(10957, "5");
        break;
      case 1:
        com.tencent.mm.plugin.d.c.m.dZN.j(10957, "6");
        break;
      case 2:
        com.tencent.mm.plugin.d.c.m.dZN.j(10957, "7");
      }
    }
  }

  public final void k(int paramInt)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt);
    aa.e("MicroMsg.LauncherUI", "onPageScrollStateChanged state %d", arrayOfObject);
  }

  public final void mt(int paramInt)
  {
    if (paramInt == LauncherUI.j(this.gmk))
    {
      aa.d("MicroMsg.LauncherUI", "on click same index");
      cy localcy = this.gmk.mr(paramInt);
      if ((localcy instanceof a))
        ((a)localcy).aDM();
      return;
    }
    this.gmn = true;
    this.gmo = (1 + this.gmo);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(this.gmo);
    aa.f("MicroMsg.LauncherUI", "onTabClick count:%d", arrayOfObject);
    this.dew.m(paramInt);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.au
 * JD-Core Version:    0.6.2
 */