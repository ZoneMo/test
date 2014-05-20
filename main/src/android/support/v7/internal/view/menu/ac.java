package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.support.v7.internal.widget.ListPopupWindow;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import com.tencent.mm.d;
import com.tencent.mm.g;
import com.tencent.mm.k;

public class ac
  implements ae, View.OnKeyListener, ViewTreeObserver.OnGlobalLayoutListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
{
  static final int lm = k.aSa;
  private LayoutInflater ge;
  private o hh;
  private af kO;
  boolean kj;
  private ListPopupWindow ln;
  private int lo;
  private View lp;
  private boolean lq;
  private ViewTreeObserver lr;
  private ad ls;
  private ViewGroup lt;
  private Context mContext;

  public ac(Context paramContext, o paramo, View paramView, boolean paramBoolean)
  {
    this.mContext = paramContext;
    this.ge = LayoutInflater.from(paramContext);
    this.hh = paramo;
    this.lq = paramBoolean;
    Resources localResources = paramContext.getResources();
    this.lo = Math.max(localResources.getDisplayMetrics().widthPixels / 2, localResources.getDimensionPixelSize(g.abc));
    this.lp = paramView;
    paramo.a(this);
  }

  public final void a(Context paramContext, o paramo)
  {
  }

  public final void a(af paramaf)
  {
    this.kO = paramaf;
  }

  public final void a(o paramo, boolean paramBoolean)
  {
    if (paramo != this.hh);
    do
    {
      return;
      dismiss();
    }
    while (this.kO == null);
    this.kO.a(paramo, paramBoolean);
  }

  public final boolean a(ak paramak)
  {
    ac localac;
    int j;
    if (paramak.hasVisibleItems())
    {
      localac = new ac(this.mContext, paramak, this.lp, false);
      localac.kO = this.kO;
      int i = paramak.size();
      j = 0;
      if (j >= i)
        break label119;
      MenuItem localMenuItem = paramak.getItem(j);
      if ((!localMenuItem.isVisible()) || (localMenuItem.getIcon() == null));
    }
    label119: for (boolean bool = true; ; bool = false)
    {
      localac.kj = bool;
      if (localac.cB())
      {
        if (this.kO != null)
          this.kO.b(paramak);
        return true;
        j++;
        break;
      }
      return false;
    }
  }

  public final boolean bN()
  {
    return false;
  }

  public final boolean cB()
  {
    int i = 0;
    this.ln = new ListPopupWindow(this.mContext, null, d.popupMenuStyle);
    this.ln.setOnDismissListener(this);
    this.ln.setOnItemClickListener(this);
    this.ls = new ad(this, this.hh);
    this.ln.setAdapter(this.ls);
    this.ln.dk();
    View localView1 = this.lp;
    int j;
    ListPopupWindow localListPopupWindow;
    ad localad;
    int k;
    int m;
    int i1;
    View localView2;
    int i2;
    label161: int i3;
    if (localView1 != null)
      if (this.lr == null)
      {
        j = 1;
        this.lr = localView1.getViewTreeObserver();
        if (j != 0)
          this.lr.addOnGlobalLayoutListener(this);
        this.ln.setAnchorView(localView1);
        localListPopupWindow = this.ln;
        localad = this.ls;
        k = View.MeasureSpec.makeMeasureSpec(0, 0);
        m = View.MeasureSpec.makeMeasureSpec(0, 0);
        int n = localad.getCount();
        i1 = 0;
        localView2 = null;
        i2 = 0;
        if (i1 >= n)
          break label264;
        i3 = localad.getItemViewType(i1);
        if (i3 == i)
          break label305;
      }
    for (View localView3 = null; ; localView3 = localView2)
    {
      if (this.lt == null)
        this.lt = new FrameLayout(this.mContext);
      localView2 = localad.getView(i1, localView3, this.lt);
      localView2.measure(k, m);
      i2 = Math.max(i2, localView2.getMeasuredWidth());
      i1++;
      i = i3;
      break label161;
      j = 0;
      break;
      return false;
      label264: localListPopupWindow.setContentWidth(Math.min(i2, this.lo));
      this.ln.dl();
      this.ln.show();
      this.ln.getListView().setOnKeyListener(this);
      return true;
      label305: i3 = i;
    }
  }

  public final boolean d(s params)
  {
    return false;
  }

  public final void dismiss()
  {
    if (isShowing())
      this.ln.dismiss();
  }

  public final boolean e(s params)
  {
    return false;
  }

  public final boolean isShowing()
  {
    return (this.ln != null) && (this.ln.isShowing());
  }

  public final void j(boolean paramBoolean)
  {
    if (this.ls != null)
      this.ls.notifyDataSetChanged();
  }

  public void onDismiss()
  {
    this.ln = null;
    this.hh.close();
    if (this.lr != null)
    {
      if (!this.lr.isAlive())
        this.lr = this.lp.getViewTreeObserver();
      this.lr.removeGlobalOnLayoutListener(this);
      this.lr = null;
    }
  }

  public void onGlobalLayout()
  {
    if (isShowing())
    {
      View localView = this.lp;
      if ((localView != null) && (localView.isShown()))
        break label28;
      dismiss();
    }
    label28: 
    while (!isShowing())
      return;
    this.ln.show();
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    ad localad = this.ls;
    ad.a(localad).c(localad.C(paramInt), 0);
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getAction() == 1) && (paramInt == 82))
    {
      dismiss();
      return true;
    }
    return false;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.ac
 * JD-Core Version:    0.6.2
 */