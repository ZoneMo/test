package android.support.v7.internal.widget;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.database.DataSetObserver;
import android.graphics.drawable.Drawable;
import android.support.v4.view.n;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewTreeObserver;
import android.view.ViewTreeObserver.OnGlobalLayoutListener;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.PopupWindow.OnDismissListener;
import com.tencent.mm.g;
import com.tencent.mm.i;
import com.tencent.mm.k;

public class ActivityChooserView extends ViewGroup
{
  private final s nh;
  private final t ni;
  private final LinearLayout nj;
  private final Drawable nk;
  private final FrameLayout nl;
  private final ImageView nm;
  private final FrameLayout nn;
  private final ImageView no;
  private final int np;
  n nq;
  private final DataSetObserver nr = new p(this);
  private final ViewTreeObserver.OnGlobalLayoutListener ns = new q(this);
  private ListPopupWindow nt;
  private PopupWindow.OnDismissListener nu;
  private boolean nv;
  private int nw = 4;
  private boolean nx;
  private int ny;

  public ActivityChooserView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ActivityChooserView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, com.tencent.mm.p.bJa, paramInt, 0);
    this.nw = localTypedArray.getInt(0, 4);
    Drawable localDrawable = localTypedArray.getDrawable(1);
    localTypedArray.recycle();
    LayoutInflater.from(getContext()).inflate(k.aRT, this, true);
    this.ni = new t(this, (byte)0);
    this.nj = ((LinearLayout)findViewById(i.akU));
    this.nk = this.nj.getBackground();
    this.nn = ((FrameLayout)findViewById(i.aqY));
    this.nn.setOnClickListener(this.ni);
    this.nn.setOnLongClickListener(this.ni);
    this.no = ((ImageView)this.nn.findViewById(i.awm));
    this.nl = ((FrameLayout)findViewById(i.asT));
    this.nl.setOnClickListener(this.ni);
    this.nm = ((ImageView)this.nl.findViewById(i.awm));
    this.nm.setImageDrawable(localDrawable);
    this.nh = new s(this, (byte)0);
    this.nh.registerDataSetObserver(new r(this));
    Resources localResources = paramContext.getResources();
    this.np = Math.max(localResources.getDisplayMetrics().widthPixels / 2, localResources.getDimensionPixelSize(g.abc));
  }

  private ListPopupWindow db()
  {
    if (this.nt == null)
    {
      this.nt = new ListPopupWindow(getContext());
      this.nt.setAdapter(this.nh);
      this.nt.setAnchorView(this);
      this.nt.dk();
      this.nt.setOnItemClickListener(this.ni);
      this.nt.setOnDismissListener(this.ni);
    }
    return this.nt;
  }

  public final boolean cZ()
  {
    if (db().isShowing())
    {
      db().dismiss();
      ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
      if (localViewTreeObserver.isAlive())
        localViewTreeObserver.removeGlobalOnLayoutListener(this.ns);
    }
    return true;
  }

  public final boolean da()
  {
    return db().isShowing();
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    j localj = this.nh.dd();
    if (localj != null)
      localj.registerObserver(this.nr);
    this.nx = true;
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    j localj = this.nh.dd();
    if (localj != null)
      localj.unregisterObserver(this.nr);
    ViewTreeObserver localViewTreeObserver = getViewTreeObserver();
    if (localViewTreeObserver.isAlive())
      localViewTreeObserver.removeGlobalOnLayoutListener(this.ns);
    if (db().isShowing())
      cZ();
    this.nx = false;
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.nj.layout(0, 0, paramInt3 - paramInt1, paramInt4 - paramInt2);
    if (!db().isShowing())
      cZ();
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    LinearLayout localLinearLayout = this.nj;
    if (this.nn.getVisibility() != 0)
      paramInt2 = View.MeasureSpec.makeMeasureSpec(View.MeasureSpec.getSize(paramInt2), 1073741824);
    measureChild(localLinearLayout, paramInt1, paramInt2);
    setMeasuredDimension(localLinearLayout.getMeasuredWidth(), localLinearLayout.getMeasuredHeight());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ActivityChooserView
 * JD-Core Version:    0.6.2
 */