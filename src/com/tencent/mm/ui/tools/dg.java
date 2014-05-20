package com.tencent.mm.ui.tools;

import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.widget.AbsListView;
import android.widget.AdapterView;
import android.widget.AdapterView.AdapterContextMenuInfo;
import android.widget.AdapterView.OnItemClickListener;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.ar;
import com.tencent.mm.ui.base.bm;
import com.tencent.mm.ui.base.bx;
import com.tencent.mm.ui.base.by;
import com.tencent.mm.ui.base.ca;
import com.tencent.mm.ui.base.cb;
import com.tencent.mm.ui.base.cc;
import com.tencent.mm.ui.base.cd;
import java.util.Iterator;
import java.util.List;

public final class dg
  implements AdapterView.OnItemClickListener
{
  private LayoutInflater ge;
  private bm hlh;
  private cc hli;
  private cd hlj;
  private bx hlk;
  private dj hll;
  private ca hlm;
  private cb hln;
  private Context mContext;

  public dg(Context paramContext)
  {
    this.mContext = paramContext;
    this.ge = LayoutInflater.from(paramContext);
    this.hlh = new bm(paramContext);
    this.hlk = new bx();
  }

  private void dismiss()
  {
    if (this.hlh.isShowing())
      this.hlh.dismiss();
  }

  public final void a(View paramView, int paramInt, long paramLong, View.OnCreateContextMenuListener paramOnCreateContextMenuListener, cd paramcd)
  {
    this.hlk.clear();
    AdapterView.AdapterContextMenuInfo localAdapterContextMenuInfo = new AdapterView.AdapterContextMenuInfo(paramView, paramInt, paramLong);
    paramOnCreateContextMenuListener.onCreateContextMenu(this.hlk, paramView, localAdapterContextMenuInfo);
    Iterator localIterator = this.hlk.aHf().iterator();
    while (localIterator.hasNext())
      ((by)localIterator.next()).a(localAdapterContextMenuInfo);
    aNy();
    this.hlj = paramcd;
  }

  public final void a(View paramView, View.OnCreateContextMenuListener paramOnCreateContextMenuListener, cd paramcd)
  {
    this.hlj = paramcd;
    aa.v("MicroMsg.MMSubMenuHelper", "registerForContextMenu");
    if ((paramView instanceof AbsListView))
    {
      aa.v("MicroMsg.MMSubMenuHelper", "registerForContextMenu AbsListView");
      ((AbsListView)paramView).setOnItemLongClickListener(new dh(this, paramOnCreateContextMenuListener));
      return;
    }
    aa.v("MicroMsg.MMSubMenuHelper", "registerForContextMenu normal view");
    paramView.setOnLongClickListener(new di(this, paramOnCreateContextMenuListener));
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

  public final ar aNy()
  {
    if (this.hli != null)
    {
      this.hlk.clear();
      this.hlk = new bx();
      this.hli.a(this.hlk);
    }
    if (this.hlk.aHh())
    {
      aa.w("MicroMsg.MMSubMenuHelper", "show, menu empty");
      return null;
    }
    if (this.hll == null)
      this.hll = new dj(this, (byte)0);
    this.hlh.a(this.hll);
    this.hlh.setOnItemClickListener(this);
    this.hlh.setTitle(this.hlk.aHg());
    this.hlh.show();
    return this.hlh;
  }

  public final void b(View paramView, View.OnCreateContextMenuListener paramOnCreateContextMenuListener, cd paramcd)
  {
    this.hlk.clear();
    paramOnCreateContextMenuListener.onCreateContextMenu(this.hlk, paramView, null);
    aNy();
    this.hlj = paramcd;
  }

  public final void b(cd paramcd)
  {
    this.hlj = paramcd;
  }

  public final void c(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    this.hlh.setOnCancelListener(paramOnCancelListener);
  }

  public final void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    by localby = (by)this.hlk.aHf().get(paramInt);
    if (localby.performClick())
    {
      aa.i("MicroMsg.MMSubMenuHelper", "onItemClick menu item has listener");
      dismiss();
      return;
    }
    if (this.hlj != null)
      this.hlj.d(localby, paramInt);
    dismiss();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.dg
 * JD-Core Version:    0.6.2
 */