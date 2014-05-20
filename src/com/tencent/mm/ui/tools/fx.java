package com.tencent.mm.ui.tools;

import android.app.Activity;
import android.content.Context;
import android.content.DialogInterface.OnCancelListener;
import android.content.res.Resources;
import android.graphics.Rect;
import android.graphics.drawable.ColorDrawable;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import android.util.DisplayMetrics;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnKeyListener;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.view.Window;
import android.widget.AdapterView;
import android.widget.AdapterView.OnItemClickListener;
import android.widget.BaseAdapter;
import android.widget.FrameLayout;
import android.widget.ListAdapter;
import android.widget.ListView;
import android.widget.PopupWindow.OnDismissListener;
import com.tencent.mm.d;
import com.tencent.mm.f;
import com.tencent.mm.g;
import com.tencent.mm.h;
import com.tencent.mm.o;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.e;
import com.tencent.mm.ui.base.MMListPopupWindow;

public abstract class fx
  implements View.OnKeyListener, ViewTreeObserver.OnGlobalLayoutListener, AdapterView.OnItemClickListener, PopupWindow.OnDismissListener
{
  private BaseAdapter dDF;
  private int dividerHeight;
  private boolean gAx = false;
  private boolean hmA = false;
  private MMListPopupWindow hmv;
  private int hmw;
  private DialogInterface.OnCancelListener hmx;
  private int hmy = o.bIB;
  private PopupWindow.OnDismissListener hmz;
  private int lo;
  private View lp;
  private ViewTreeObserver lr;
  private ViewGroup lt;
  protected Context mContext;

  public fx(Context paramContext)
  {
    this.mContext = paramContext;
    Resources localResources = paramContext.getResources();
    this.lo = Math.min(4 * localResources.getDisplayMetrics().widthPixels / 5, localResources.getDimensionPixelSize(g.abc));
    ViewGroup localViewGroup;
    if ((this.mContext instanceof Activity))
    {
      localViewGroup = (ViewGroup)((Activity)this.mContext).getWindow().getDecorView();
      if (localViewGroup.getChildCount() <= 0)
        break label120;
    }
    label120: for (this.lp = localViewGroup.getChildAt(0); ; this.lp = localViewGroup)
    {
      this.dividerHeight = e.a(this.mContext, 1.0F);
      this.dDF = aFt();
      return;
    }
  }

  private int a(ListAdapter paramListAdapter)
  {
    int i = View.MeasureSpec.makeMeasureSpec(0, 0);
    int j = View.MeasureSpec.makeMeasureSpec(0, 0);
    int k = paramListAdapter.getCount();
    int m = 0;
    int n = 0;
    View localView1 = null;
    int i1 = 0;
    int i2;
    if (m < k)
    {
      i2 = paramListAdapter.getItemViewType(m);
      if (i2 == n)
        break label129;
    }
    for (View localView2 = null; ; localView2 = localView1)
    {
      if (this.lt == null)
        this.lt = new FrameLayout(this.mContext);
      localView1 = paramListAdapter.getView(m, localView2, this.lt);
      localView1.measure(i, j);
      i1 = Math.max(i1, localView1.getMeasuredWidth());
      m++;
      n = i2;
      break;
      return i1;
      label129: i2 = n;
    }
  }

  private boolean aNP()
  {
    DisplayMetrics localDisplayMetrics = this.mContext.getResources().getDisplayMetrics();
    return localDisplayMetrics.widthPixels > localDisplayMetrics.heightPixels;
  }

  protected abstract BaseAdapter aFt();

  public final void aNO()
  {
    this.gAx = false;
    this.hmy = o.bIB;
  }

  public final void c(DialogInterface.OnCancelListener paramOnCancelListener)
  {
    this.hmx = paramOnCancelListener;
  }

  public boolean cB()
  {
    if ((this.hmw == 0) && ((this.mContext instanceof Activity)))
    {
      Rect localRect = new Rect();
      ((Activity)this.mContext).getWindow().getDecorView().getWindowVisibleDisplayFrame(localRect);
      this.hmw = localRect.top;
    }
    this.hmA = aNP();
    this.hmv = new MMListPopupWindow(this.mContext, null, d.popupMenuStyle);
    this.hmv.setOnDismissListener(this);
    this.hmv.setOnItemClickListener(this);
    this.hmv.setAdapter(this.dDF);
    this.hmv.dk();
    this.hmv.setBackgroundDrawable(this.mContext.getResources().getDrawable(h.agD));
    this.hmv.setAnimationStyle(this.hmy);
    this.hmv.aHb();
    this.hmv.setAnchorView(this.lp);
    boolean bool;
    if (this.lp != null)
    {
      if (this.lr != null)
        break label405;
      bool = true;
      this.lr = this.lp.getViewTreeObserver();
      Object[] arrayOfObject = new Object[1];
      arrayOfObject[0] = Boolean.valueOf(bool);
      aa.f("MicroMsg.SubMenuHelperBase", "tryshow addGlobalListener:%b", arrayOfObject);
      if (bool)
        this.lr.addOnGlobalLayoutListener(this);
    }
    MMListPopupWindow localMMListPopupWindow = this.hmv;
    int i = this.hmw;
    int j;
    if ((this.mContext instanceof ActionBarActivity))
      j = ((ActionBarActivity)this.mContext).aW().getHeight();
    while (true)
    {
      localMMListPopupWindow.setVerticalOffset(j + i);
      this.hmv.dq(this.gAx);
      this.hmv.setContentWidth(Math.min(a(this.dDF), this.lo));
      this.hmv.dl();
      this.hmv.show();
      this.hmv.getListView().setOnKeyListener(this);
      this.hmv.getListView().setDivider(null);
      this.hmv.getListView().setSelector(new ColorDrawable(this.mContext.getResources().getColor(f.transparent)));
      this.hmv.getListView().setDividerHeight(0);
      this.hmv.getListView().setVerticalScrollBarEnabled(false);
      this.hmv.getListView().setHorizontalScrollBarEnabled(false);
      return true;
      label405: bool = false;
      break;
      DisplayMetrics localDisplayMetrics = this.mContext.getResources().getDisplayMetrics();
      if (localDisplayMetrics.widthPixels > localDisplayMetrics.heightPixels)
        j = e.a(this.mContext, 40.0F);
      else
        j = e.a(this.mContext, 49.0F);
    }
  }

  public final void dismiss()
  {
    if (isShowing())
      this.hmv.dismiss();
  }

  public final boolean isShowing()
  {
    return (this.hmv != null) && (this.hmv.isShowing());
  }

  public void onDismiss()
  {
    this.hmv = null;
    if (this.lr != null)
    {
      if (!this.lr.isAlive())
        this.lr = this.lp.getViewTreeObserver();
      this.lr.removeGlobalOnLayoutListener(this);
      this.lr = null;
    }
    if (this.hmx != null)
      this.hmx.onCancel(null);
    if (this.hmz != null)
      this.hmz.onDismiss();
  }

  public void onGlobalLayout()
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Boolean.valueOf(isShowing());
    arrayOfObject[1] = Boolean.valueOf(this.lp.isShown());
    aa.f("MicroMsg.SubMenuHelperBase", "onGlobalLayout showing:%b, anchorshown:%b", arrayOfObject);
    if (isShowing())
    {
      View localView = this.lp;
      if ((localView != null) && (localView.isShown()))
        break label65;
      dismiss();
    }
    label65: 
    while ((!isShowing()) || (this.hmA == aNP()))
      return;
    this.hmv.dismiss();
  }

  public void onItemClick(AdapterView paramAdapterView, View paramView, int paramInt, long paramLong)
  {
    dismiss();
  }

  public boolean onKey(View paramView, int paramInt, KeyEvent paramKeyEvent)
  {
    aa.v("MicroMsg.SubMenuHelperBase", "onKey");
    if ((paramKeyEvent.getAction() == 1) && (paramInt == 82))
    {
      dismiss();
      return true;
    }
    return false;
  }

  public final void setOnDismissListener(PopupWindow.OnDismissListener paramOnDismissListener)
  {
    this.hmz = paramOnDismissListener;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.fx
 * JD-Core Version:    0.6.2
 */