package android.support.v7.app;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.support.v7.a.a;
import android.support.v7.internal.view.menu.af;
import android.support.v7.internal.view.menu.ag;
import android.support.v7.internal.view.menu.ai;
import android.support.v7.internal.view.menu.m;
import android.support.v7.internal.widget.ActionBarContainer;
import android.support.v7.internal.widget.ActionBarContextView;
import android.support.v7.internal.widget.ActionBarView;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.Window;
import android.widget.FrameLayout;
import com.tencent.mm.d;
import com.tencent.mm.i;

class f extends e
  implements af, android.support.v7.internal.view.menu.p
{
  private static final int[] he = arrayOfInt;
  private ActionBarView hf;
  private m hg;
  private android.support.v7.internal.view.menu.o hh;
  private a hi;
  private boolean hj;
  private boolean hk;
  private boolean hl;
  private boolean hm;
  private final Runnable hn = new g(this);

  static
  {
    int[] arrayOfInt = new int[1];
    arrayOfInt[0] = d.homeAsUpIndicator;
  }

  f(ActionBarActivity paramActionBarActivity)
  {
    super(paramActionBarActivity);
  }

  private android.support.v7.internal.view.menu.o bh()
  {
    android.support.v7.internal.view.menu.o localo = new android.support.v7.internal.view.menu.o(bf());
    localo.a(this);
    return localo;
  }

  private void c(android.support.v7.internal.view.menu.o paramo)
  {
    if (paramo == this.hh);
    do
    {
      return;
      if (this.hh != null)
        this.hh.b(this.hg);
      this.hh = paramo;
      if ((paramo != null) && (this.hg != null))
        paramo.a(this.hg);
    }
    while (this.hf == null);
    this.hf.a(paramo, this);
  }

  public final void a(android.support.v7.internal.view.menu.o paramo)
  {
    if ((this.hf != null) && (this.hf.bM()))
    {
      if (!this.hf.bL())
      {
        if (this.hf.getVisibility() == 0)
          this.hf.bH();
        return;
      }
      this.hf.bI();
      return;
    }
    paramo.close();
  }

  public final void a(android.support.v7.internal.view.menu.o paramo, boolean paramBoolean)
  {
    this.gZ.closeOptionsMenu();
  }

  public final boolean aX()
  {
    this.hl = true;
    return true;
  }

  public final void addContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    bg();
    if (this.hc)
    {
      ((ViewGroup)this.gZ.findViewById(i.akK)).addView(paramView, paramLayoutParams);
      return;
    }
    this.gZ.a(paramView, paramLayoutParams);
  }

  public final void b(CharSequence paramCharSequence)
  {
    if (this.hf != null)
      this.hf.d(paramCharSequence);
  }

  public final boolean b(android.support.v7.internal.view.menu.o paramo)
  {
    return false;
  }

  public ActionBar bb()
  {
    bg();
    return new k(this.gZ, this.gZ);
  }

  public final void bc()
  {
    if ((this.hc) && (this.hj))
      ((k)aW()).bc();
  }

  public final boolean bd()
  {
    if (this.hi != null)
    {
      this.hi.finish();
      return true;
    }
    if ((this.hf != null) && (this.hf.cK()))
    {
      this.hf.cL();
      return true;
    }
    return false;
  }

  final void bg()
  {
    boolean bool1;
    if ((this.hc) && (!this.hj))
    {
      if (!this.hd)
        break label207;
      this.gZ.w(com.tencent.mm.k.aRM);
      this.hf = ((ActionBarView)this.gZ.findViewById(i.akJ));
      this.hf.a(this.gZ);
      if (this.hk)
        this.hf.cH();
      if (this.hl)
        this.hf.cI();
      bool1 = "splitActionBarWhenNarrow".equals(be());
      if (!bool1)
        break label220;
    }
    label207: label220: boolean bool2;
    for (boolean bool3 = this.gZ.getResources().getBoolean(com.tencent.mm.e.ZI); ; bool3 = bool2)
    {
      ActionBarContainer localActionBarContainer = (ActionBarContainer)this.gZ.findViewById(i.aMi);
      if (localActionBarContainer != null)
      {
        this.hf.a(localActionBarContainer);
        this.hf.s(bool3);
        this.hf.t(bool1);
        ActionBarContextView localActionBarContextView = (ActionBarContextView)this.gZ.findViewById(i.akQ);
        localActionBarContextView.a(localActionBarContainer);
        localActionBarContextView.s(bool3);
        localActionBarContextView.t(bool1);
      }
      this.hj = true;
      u();
      return;
      this.gZ.w(com.tencent.mm.k.aRL);
      break;
      TypedArray localTypedArray = this.gZ.obtainStyledAttributes(com.tencent.mm.p.bIW);
      bool2 = localTypedArray.getBoolean(2, false);
      localTypedArray.recycle();
    }
  }

  public final boolean h(MenuItem paramMenuItem)
  {
    return this.gZ.onMenuItemSelected(0, paramMenuItem);
  }

  public final boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if (paramInt != 0)
      return this.gZ.a(paramInt, paramMenu);
    return false;
  }

  public final View onCreatePanelView(int paramInt)
  {
    View localView = null;
    ActionBarActivity localActionBarActivity;
    ag localag;
    if (paramInt == 0)
    {
      boolean bool = true;
      android.support.v7.internal.view.menu.o localo1 = this.hh;
      if (this.hi == null)
      {
        if (localo1 == null)
        {
          localo1 = bh();
          c(localo1);
          localo1.bX();
          bool = this.gZ.a(0, localo1);
        }
        if (bool)
        {
          localo1.bX();
          bool = this.gZ.a(0, null, localo1);
        }
      }
      if (!bool)
        break label212;
      localActionBarActivity = this.gZ;
      android.support.v7.internal.view.menu.o localo2 = this.hh;
      localag = null;
      if (localo2 == null)
      {
        localView = (View)localag;
        localo1.bY();
      }
    }
    else
    {
      return localView;
    }
    if (this.hg == null)
    {
      TypedArray localTypedArray = localActionBarActivity.obtainStyledAttributes(com.tencent.mm.p.bJz);
      int i = localTypedArray.getResourceId(4, com.tencent.mm.o.bIH);
      localTypedArray.recycle();
      this.hg = new m(com.tencent.mm.k.aRY, i);
      this.hg.a(this);
      this.hh.a(this.hg);
    }
    while (true)
    {
      localag = this.hg.b(new FrameLayout(localActionBarActivity));
      break;
      this.hg.j(false);
    }
    label212: c(null);
    return null;
  }

  public final boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (paramInt == 0)
      paramMenuItem = ai.l(paramMenuItem);
    return this.gZ.a(paramInt, paramMenuItem);
  }

  public final void onPostResume()
  {
    k localk = (k)aW();
    if (localk != null)
      localk.h(true);
  }

  public final boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    if (paramInt != 0)
      return this.gZ.a(paramInt, paramView, paramMenu);
    return false;
  }

  public final void onStop()
  {
    k localk = (k)aW();
    if (localk != null)
      localk.h(false);
  }

  public final void setContentView(int paramInt)
  {
    bg();
    if (this.hc)
    {
      ViewGroup localViewGroup = (ViewGroup)this.gZ.findViewById(i.akK);
      localViewGroup.removeAllViews();
      this.gZ.getLayoutInflater().inflate(paramInt, localViewGroup);
      return;
    }
    this.gZ.w(paramInt);
  }

  public final void setContentView(View paramView)
  {
    bg();
    if (this.hc)
    {
      ViewGroup localViewGroup = (ViewGroup)this.gZ.findViewById(i.akK);
      localViewGroup.removeAllViews();
      localViewGroup.addView(paramView);
      return;
    }
    this.gZ.D(paramView);
  }

  public final void setContentView(View paramView, ViewGroup.LayoutParams paramLayoutParams)
  {
    bg();
    if (this.hc)
    {
      ViewGroup localViewGroup = (ViewGroup)this.gZ.findViewById(i.akK);
      localViewGroup.removeAllViews();
      localViewGroup.addView(paramView, paramLayoutParams);
      return;
    }
    this.gZ.a(paramView, paramLayoutParams);
  }

  public final void u()
  {
    if (!this.hm)
    {
      this.hm = true;
      this.gZ.getWindow().getDecorView().post(this.hn);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.app.f
 * JD-Core Version:    0.6.2
 */