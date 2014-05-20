package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.support.v4.view.n;
import android.support.v7.internal.view.a;
import android.util.DisplayMetrics;
import android.util.SparseBooleanArray;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import com.tencent.mm.k;
import java.util.ArrayList;

public final class ActionMenuPresenter extends j
  implements android.support.v4.view.o
{
  int jA;
  private View jj;
  private boolean jk;
  private boolean jl;
  private int jm;
  private int jn;
  private int jo;
  private boolean jp;
  private boolean jq;
  private boolean jr;
  private boolean js;
  private int jt;
  private final SparseBooleanArray ju = new SparseBooleanArray();
  private View jv;
  private f jw;
  private c jx;
  private d jy;
  final g jz = new g(this, (byte)0);

  public ActionMenuPresenter(Context paramContext)
  {
    super(paramContext, k.aRS, k.aRR);
  }

  public final View a(s params, View paramView, ViewGroup paramViewGroup)
  {
    View localView = params.getActionView();
    if ((localView == null) || (params.cy()))
    {
      if (!(paramView instanceof ActionMenuItemView))
        paramView = null;
      localView = super.a(params, paramView, paramViewGroup);
    }
    if (params.isActionViewExpanded());
    for (int i = 8; ; i = 0)
    {
      localView.setVisibility(i);
      ActionMenuView localActionMenuView = (ActionMenuView)paramViewGroup;
      ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
      if (!localActionMenuView.checkLayoutParams(localLayoutParams))
        localView.setLayoutParams(ActionMenuView.a(localLayoutParams));
      return localView;
    }
  }

  public final void a(Context paramContext, o paramo)
  {
    super.a(paramContext, paramo);
    Resources localResources = paramContext.getResources();
    a locala = a.d(paramContext);
    boolean bool;
    int i;
    if (!this.jl)
    {
      if (Build.VERSION.SDK_INT >= 11)
      {
        bool = true;
        this.jk = bool;
      }
    }
    else
    {
      if (!this.jr)
        this.jm = locala.bq();
      if (!this.jp)
        this.jo = locala.bp();
      i = this.jm;
      if (!this.jk)
        break label172;
      if (this.jj == null)
      {
        this.jj = new e(this, this.jQ);
        int j = View.MeasureSpec.makeMeasureSpec(0, 0);
        this.jj.measure(j, j);
      }
      i -= this.jj.getMeasuredWidth();
    }
    while (true)
    {
      this.jn = i;
      this.jt = ((int)(56.0F * localResources.getDisplayMetrics().density));
      this.jv = null;
      return;
      bool = false;
      break;
      label172: this.jj = null;
    }
  }

  public final void a(o paramo, boolean paramBoolean)
  {
    bJ();
    super.a(paramo, paramBoolean);
  }

  public final void a(s params, ah paramah)
  {
    paramah.a(params);
    ActionMenuView localActionMenuView = (ActionMenuView)this.jV;
    ((ActionMenuItemView)paramah).a(localActionMenuView);
  }

  public final boolean a(ak paramak)
  {
    if (!paramak.hasVisibleItems())
      return false;
    for (ak localak = paramak; localak.cC() != this.hh; localak = (ak)localak.cC());
    MenuItem localMenuItem = localak.getItem();
    ViewGroup localViewGroup = (ViewGroup)this.jV;
    int j;
    View localView;
    if (localViewGroup != null)
    {
      int i = localViewGroup.getChildCount();
      j = 0;
      if (j < i)
      {
        localView = localViewGroup.getChildAt(j);
        if ((!(localView instanceof ah)) || (((ah)localView).bB() != localMenuItem));
      }
    }
    while (true)
    {
      if (localView != null)
        break label131;
      if (this.jj != null)
        break label126;
      return false;
      j++;
      break;
      localView = null;
    }
    label126: this.jA = paramak.getItem().getItemId();
    label131: this.jx = new c(this, paramak);
    this.jx.cl();
    super.a(paramak);
    return true;
  }

  public final ag b(ViewGroup paramViewGroup)
  {
    ag localag = super.b(paramViewGroup);
    ((ActionMenuView)localag).c(this);
    return localag;
  }

  public final boolean b(s params)
  {
    return params.ct();
  }

  public final boolean b(ViewGroup paramViewGroup, int paramInt)
  {
    if (paramViewGroup.getChildAt(paramInt) == this.jj)
      return false;
    return super.b(paramViewGroup, paramInt);
  }

  public final void bG()
  {
    this.jo = 2147483647;
    this.jp = true;
  }

  public final boolean bH()
  {
    if ((this.jk) && (!bL()) && (this.hh != null) && (this.jV != null) && (this.jy == null))
    {
      this.jy = new d(this, new f(this, this.mContext, this.hh, this.jj));
      ((View)this.jV).post(this.jy);
      super.a(null);
      return true;
    }
    return false;
  }

  public final boolean bI()
  {
    if ((this.jy != null) && (this.jV != null))
    {
      ((View)this.jV).removeCallbacks(this.jy);
      this.jy = null;
      return true;
    }
    f localf = this.jw;
    if (localf != null)
    {
      localf.dismiss();
      return true;
    }
    return false;
  }

  public final boolean bJ()
  {
    return bI() | bK();
  }

  public final boolean bK()
  {
    if (this.jx != null)
    {
      this.jx.dismiss();
      return true;
    }
    return false;
  }

  public final boolean bL()
  {
    return (this.jw != null) && (this.jw.isShowing());
  }

  public final boolean bM()
  {
    return this.jk;
  }

  public final boolean bN()
  {
    ArrayList localArrayList = this.hh.cb();
    int i = localArrayList.size();
    int j = this.jo;
    int k = this.jn;
    int m = View.MeasureSpec.makeMeasureSpec(0, 0);
    ViewGroup localViewGroup = (ViewGroup)this.jV;
    int n = 0;
    int i1 = 0;
    int i2 = 0;
    int i3 = 0;
    s locals3;
    if (i3 < i)
    {
      locals3 = (s)localArrayList.get(i3);
      if (locals3.cv())
      {
        n++;
        label80: if ((!this.js) || (!locals3.isActionViewExpanded()))
          break label801;
      }
    }
    label785: label801: for (int i27 = 0; ; i27 = j)
    {
      i3++;
      j = i27;
      break;
      if (locals3.cu())
      {
        i1++;
        break label80;
      }
      i2 = 1;
      break label80;
      if ((this.jk) && ((i2 != 0) || (n + i1 > j)))
        j--;
      int i4 = j - n;
      SparseBooleanArray localSparseBooleanArray = this.ju;
      localSparseBooleanArray.clear();
      int i6;
      int i5;
      if (this.jq)
      {
        int i25 = k / this.jt;
        int i26 = k % this.jt;
        i6 = this.jt + i26 / i25;
        i5 = i25;
      }
      while (true)
      {
        int i7 = 0;
        int i8 = 0;
        int i9 = i5;
        s locals1;
        View localView2;
        int i10;
        label295: int i12;
        int i23;
        if (i8 < i)
        {
          locals1 = (s)localArrayList.get(i8);
          if (locals1.cv())
          {
            localView2 = a(locals1, this.jv, localViewGroup);
            if (this.jv == null)
              this.jv = localView2;
            if (this.jq)
            {
              i10 = i9 - ActionMenuView.b(localView2, i6, i9, m, 0);
              i12 = localView2.getMeasuredWidth();
              i23 = k - i12;
              if (i7 != 0)
                break label785;
            }
          }
        }
        while (true)
        {
          int i24 = locals1.getGroupId();
          if (i24 != 0)
            localSparseBooleanArray.put(i24, true);
          locals1.q(true);
          int i11 = i23;
          int i13 = i4;
          while (true)
          {
            i8++;
            k = i11;
            i4 = i13;
            i7 = i12;
            i9 = i10;
            break;
            localView2.measure(m, m);
            i10 = i9;
            break label295;
            if (locals1.cu())
            {
              int i14 = locals1.getGroupId();
              boolean bool1 = localSparseBooleanArray.get(i14);
              boolean bool2;
              label440: View localView1;
              label508: int i21;
              label546: boolean bool3;
              int i15;
              if (((i4 > 0) || (bool1)) && (k > 0) && ((!this.jq) || (i9 > 0)))
              {
                bool2 = true;
                if (!bool2)
                  break label755;
                localView1 = a(locals1, this.jv, localViewGroup);
                if (this.jv == null)
                  this.jv = localView1;
                if (!this.jq)
                  break label619;
                int i22 = ActionMenuView.b(localView1, i6, i9, m, 0);
                i9 -= i22;
                if (i22 == 0)
                  bool2 = false;
                int i19 = localView1.getMeasuredWidth();
                k -= i19;
                if (i7 == 0)
                  i7 = i19;
                if (!this.jq)
                  break label637;
                if (k < 0)
                  break label631;
                i21 = 1;
                bool3 = bool2 & i21;
                i15 = i9;
              }
              while (true)
              {
                int i16;
                if ((bool3) && (i14 != 0))
                {
                  localSparseBooleanArray.put(i14, true);
                  i16 = i4;
                }
                while (true)
                {
                  if (bool3)
                    i16--;
                  locals1.q(bool3);
                  i12 = i7;
                  i11 = k;
                  i13 = i16;
                  i10 = i15;
                  break;
                  bool2 = false;
                  break label440;
                  label619: localView1.measure(m, m);
                  break label508;
                  label631: i21 = 0;
                  break label546;
                  label637: if (k + i7 > 0);
                  for (int i20 = 1; ; i20 = 0)
                  {
                    bool3 = bool2 & i20;
                    i15 = i9;
                    break;
                  }
                  if (bool1)
                  {
                    localSparseBooleanArray.put(i14, false);
                    int i17 = i4;
                    int i18 = 0;
                    while (i18 < i8)
                    {
                      s locals2 = (s)localArrayList.get(i18);
                      if (locals2.getGroupId() == i14)
                      {
                        if (locals2.ct())
                          i17++;
                        locals2.q(false);
                      }
                      i18++;
                      continue;
                      return true;
                    }
                    i16 = i17;
                  }
                  else
                  {
                    i16 = i4;
                  }
                }
                label755: bool3 = bool2;
                i15 = i9;
              }
            }
            i10 = i9;
            i11 = k;
            i12 = i7;
            i13 = i4;
          }
          i12 = i7;
        }
        i5 = 0;
        i6 = 0;
      }
    }
  }

  public final void bc()
  {
    if (!this.jp)
      this.jo = this.mContext.getResources().getInteger(com.tencent.mm.j.aRK);
    if (this.hh != null)
      this.hh.m(true);
  }

  public final void d(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      super.a(null);
      return;
    }
    this.hh.l(false);
  }

  public final void i(boolean paramBoolean)
  {
    this.js = paramBoolean;
  }

  public final void j(boolean paramBoolean)
  {
    int i = 1;
    super.j(paramBoolean);
    if (this.jV == null)
      return;
    if (this.hh != null)
    {
      ArrayList localArrayList2 = this.hh.cd();
      int n = localArrayList2.size();
      for (int i1 = 0; i1 < n; i1++)
      {
        n localn = ((s)localArrayList2.get(i1)).cx();
        if (localn != null)
          localn.a(this);
      }
    }
    ArrayList localArrayList1;
    int j;
    int k;
    int m;
    if (this.hh != null)
    {
      localArrayList1 = this.hh.ce();
      boolean bool = this.jk;
      j = 0;
      if (bool)
      {
        j = 0;
        if (localArrayList1 != null)
        {
          k = localArrayList1.size();
          if (k != i)
            break label255;
          if (((s)localArrayList1.get(0)).isActionViewExpanded())
            break label249;
          m = i;
          label145: j = m;
        }
      }
      if (j == 0)
        break label271;
      if (this.jj == null)
        this.jj = new e(this, this.jQ);
      ViewGroup localViewGroup = (ViewGroup)this.jj.getParent();
      if (localViewGroup != this.jV)
      {
        if (localViewGroup != null)
          localViewGroup.removeView(this.jj);
        ((ActionMenuView)this.jV).addView(this.jj, ActionMenuView.bP());
      }
    }
    while (true)
    {
      ((ActionMenuView)this.jV).k(this.jk);
      return;
      localArrayList1 = null;
      break;
      label249: m = 0;
      break label145;
      label255: if (k > 0);
      while (true)
      {
        j = i;
        break;
        i = 0;
      }
      label271: if ((this.jj != null) && (this.jj.getParent() == this.jV))
        ((ViewGroup)this.jV).removeView(this.jj);
    }
  }

  public final void y(int paramInt)
  {
    this.jm = paramInt;
    this.jq = true;
    this.jr = true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.ActionMenuPresenter
 * JD-Core Version:    0.6.2
 */