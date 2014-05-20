package android.support.v7.internal.view.menu;

import android.content.Context;
import android.view.ContextThemeWrapper;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.ListAdapter;
import com.tencent.mm.k;

public final class m
  implements ae, AdapterView.OnItemClickListener
{
  LayoutInflater ge;
  o hh;
  private af jS;
  int jU;
  ExpandedMenuView kk;
  private int kl;
  int km;
  n kn;
  Context mContext;

  public m(int paramInt1, int paramInt2)
  {
    this.jU = paramInt1;
    this.km = paramInt2;
  }

  public final void a(Context paramContext, o paramo)
  {
    if (this.km != 0)
    {
      this.mContext = new ContextThemeWrapper(paramContext, this.km);
      this.ge = LayoutInflater.from(this.mContext);
    }
    while (true)
    {
      this.hh = paramo;
      if (this.kn != null)
        this.kn.notifyDataSetChanged();
      return;
      if (this.mContext != null)
      {
        this.mContext = paramContext;
        if (this.ge == null)
          this.ge = LayoutInflater.from(this.mContext);
      }
    }
  }

  public final void a(af paramaf)
  {
    this.jS = paramaf;
  }

  public final void a(o paramo, boolean paramBoolean)
  {
    if (this.jS != null)
      this.jS.a(paramo, paramBoolean);
  }

  public final boolean a(ak paramak)
  {
    if (!paramak.hasVisibleItems())
      return false;
    new r(paramak).cl();
    if (this.jS != null)
      this.jS.b(paramak);
    return true;
  }

  public final ag b(ViewGroup paramViewGroup)
  {
    if (this.kn == null)
      this.kn = new n(this);
    if (!this.kn.isEmpty())
    {
      if (this.kk == null)
      {
        this.kk = ((ExpandedMenuView)this.ge.inflate(k.aRV, paramViewGroup, false));
        this.kk.setAdapter(this.kn);
        this.kk.setOnItemClickListener(this);
      }
      return this.kk;
    }
    return null;
  }

  public final boolean bN()
  {
    return false;
  }

  public final boolean d(s params)
  {
    return false;
  }

  public final boolean e(s params)
  {
    return false;
  }

  public final ListAdapter getAdapter()
  {
    if (this.kn == null)
      this.kn = new n(this);
    return this.kn;
  }

  public final void j(boolean paramBoolean)
  {
    if (this.kn != null)
      this.kn.notifyDataSetChanged();
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    this.hh.c(this.kn.C(paramInt), 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.m
 * JD-Core Version:    0.6.2
 */