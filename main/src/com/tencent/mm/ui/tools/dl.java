package com.tencent.mm.ui.tools;

import android.content.Context;
import android.view.LayoutInflater;
import android.view.View;
import android.widget.AdapterView;
import android.widget.BaseAdapter;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.bx;
import com.tencent.mm.ui.base.ca;
import com.tencent.mm.ui.base.cb;
import com.tencent.mm.ui.base.cc;
import com.tencent.mm.ui.base.cd;

public final class dl extends fx
{
  private boolean eCL = true;
  private LayoutInflater ge;
  private cc hli;
  private cd hlj;
  private bx hlk;
  private ca hlm;
  private cb hln;
  private dm hlr;

  public dl(Context paramContext)
  {
    super(paramContext);
    this.ge = LayoutInflater.from(paramContext);
    this.hlk = new bx();
  }

  public final void a(ca paramca)
  {
    this.hlm = paramca;
  }

  public final void a(cb paramcb)
  {
    this.hln = paramcb;
  }

  public final void a(cc paramcc)
  {
    this.hli = paramcc;
  }

  protected final BaseAdapter aFt()
  {
    if (this.hlr == null)
      this.hlr = new dm(this, (byte)0);
    return this.hlr;
  }

  public final void b(cd paramcd)
  {
    this.hlj = paramcd;
  }

  public final boolean cB()
  {
    if (this.hli != null)
      this.hli.a(this.hlk);
    if (!cj.hX(this.hlk.aHg()));
    for (boolean bool = true; ; bool = false)
    {
      this.eCL = bool;
      return super.cB();
    }
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    if ((this.eCL) && (paramInt == 0))
      return;
    if (this.eCL)
      paramInt--;
    if (this.hlj != null)
      this.hlj.d(this.hlk.getItem(paramInt), paramInt);
    dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.dl
 * JD-Core Version:    0.6.2
 */