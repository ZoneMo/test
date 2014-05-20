package android.support.v7.internal.widget;

import android.content.Context;
import android.content.DialogInterface;
import android.content.DialogInterface.OnClickListener;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.widget.SpinnerAdapter;
import com.tencent.mm.p;

final class ap extends AbsSpinnerICS
  implements DialogInterface.OnClickListener
{
  private int dL;
  private Rect du = new Rect();
  int oq;
  private ar pA;
  private au pz;

  ap(Context paramContext, int paramInt)
  {
    this(paramContext, paramInt, (byte)0);
  }

  private ap(Context paramContext, int paramInt, byte paramByte)
  {
    super(paramContext, paramInt);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(null, p.bJy, paramInt, 0);
    switch (localTypedArray.getInt(7, 0))
    {
    default:
    case 0:
    case 1:
    }
    while (true)
    {
      this.dL = localTypedArray.getInt(0, 17);
      this.pz.f(localTypedArray.getString(6));
      localTypedArray.recycle();
      if (this.pA != null)
      {
        this.pz.setAdapter(this.pA);
        this.pA = null;
      }
      return;
      this.pz = new aq(this, (byte)0);
      continue;
      as localas = new as(this, paramContext, paramInt);
      this.oq = localTypedArray.getLayoutDimension(3, -2);
      localas.setBackgroundDrawable(localTypedArray.getDrawable(2));
      int i = localTypedArray.getDimensionPixelOffset(5, 0);
      if (i != 0)
        localas.setVerticalOffset(i);
      int j = localTypedArray.getDimensionPixelOffset(4, 0);
      if (j != 0)
        localas.setHorizontalOffset(j);
      this.pz = localas;
    }
  }

  private void H(View paramView)
  {
    ViewGroup.LayoutParams localLayoutParams = paramView.getLayoutParams();
    if (localLayoutParams == null)
      localLayoutParams = generateDefaultLayoutParams();
    addViewInLayout(paramView, 0, localLayoutParams);
    paramView.setSelected(hasFocus());
    int i = ViewGroup.getChildMeasureSpec(this.lF, this.lM.top + this.lM.bottom, localLayoutParams.height);
    paramView.measure(ViewGroup.getChildMeasureSpec(this.lG, this.lM.left + this.lM.right, localLayoutParams.width), i);
    int j = this.lM.top + (getMeasuredHeight() - this.lM.bottom - this.lM.top - paramView.getMeasuredHeight()) / 2;
    int k = j + paramView.getMeasuredHeight();
    paramView.layout(0, j, 0 + paramView.getMeasuredWidth(), k);
  }

  private View Q(int paramInt)
  {
    if (!this.nP)
    {
      View localView2 = this.lN.F(paramInt);
      if (localView2 != null)
      {
        H(localView2);
        return localView2;
      }
    }
    View localView1 = this.lE.getView(paramInt, null, this);
    H(localView1);
    return localView1;
  }

  final int a(SpinnerAdapter paramSpinnerAdapter, Drawable paramDrawable)
  {
    if (paramSpinnerAdapter == null)
      return 0;
    int i = View.MeasureSpec.makeMeasureSpec(0, 0);
    int j = View.MeasureSpec.makeMeasureSpec(0, 0);
    int k = Math.max(0, this.nQ);
    int m = Math.min(paramSpinnerAdapter.getCount(), k + 15);
    int n = Math.max(0, k - (15 - (m - k)));
    View localView1 = null;
    int i1 = 0;
    int i2 = 0;
    int i3;
    if (n < m)
    {
      i3 = paramSpinnerAdapter.getItemViewType(n);
      if (i3 == i2)
        break label200;
    }
    for (View localView2 = null; ; localView2 = localView1)
    {
      localView1 = paramSpinnerAdapter.getView(n, localView2, this);
      if (localView1.getLayoutParams() == null)
        localView1.setLayoutParams(new ViewGroup.LayoutParams(-2, -2));
      localView1.measure(i, j);
      i1 = Math.max(i1, localView1.getMeasuredWidth());
      n++;
      i2 = i3;
      break;
      if (paramDrawable != null)
      {
        paramDrawable.getPadding(this.du);
        return i1 + (this.du.left + this.du.right);
      }
      return i1;
      label200: i3 = i2;
    }
  }

  public final void a(w paramw)
  {
    throw new RuntimeException("setOnItemClickListener cannot be used with a spinner.");
  }

  final void b(w paramw)
  {
    super.a(paramw);
  }

  public final int getBaseline()
  {
    int i = -1;
    View localView;
    if (getChildCount() > 0)
      localView = getChildAt(0);
    while (true)
    {
      if (localView != null)
      {
        int k = localView.getBaseline();
        if (k >= 0)
          i = k + localView.getTop();
      }
      return i;
      SpinnerAdapter localSpinnerAdapter = this.lE;
      localView = null;
      if (localSpinnerAdapter != null)
      {
        int j = this.lE.getCount();
        localView = null;
        if (j > 0)
        {
          localView = Q(0);
          this.lN.b(0, localView);
          removeAllViewsInLayout();
        }
      }
    }
  }

  public final void onClick(DialogInterface paramDialogInterface, int paramInt)
  {
    setSelection(paramInt);
    paramDialogInterface.dismiss();
  }

  protected final void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if ((this.pz != null) && (this.pz.isShowing()))
      this.pz.dismiss();
  }

  protected final void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    this.ao = true;
    int i = this.lM.left;
    int j = getRight() - getLeft() - this.lM.left - this.lM.right;
    if (this.nP)
      handleDataChanged();
    if (this.nV == 0)
    {
      cF();
      this.ao = false;
      return;
    }
    if (this.nQ >= 0)
      K(this.nQ);
    int k = getChildCount();
    c localc = this.lN;
    int m = this.nF;
    for (int n = 0; n < k; n++)
    {
      View localView2 = getChildAt(n);
      localc.b(m + n, localView2);
    }
    removeAllViewsInLayout();
    this.nF = this.nS;
    View localView1 = Q(this.nS);
    int i1 = localView1.getMeasuredWidth();
    switch (0x7 & this.dL)
    {
    default:
    case 1:
    case 5:
    }
    while (true)
    {
      localView1.offsetLeftAndRight(i);
      this.lN.clear();
      invalidate();
      dh();
      this.nP = false;
      this.nK = false;
      L(this.nS);
      break;
      i = i + j / 2 - i1 / 2;
      continue;
      i = i + j - i1;
    }
  }

  protected final void onMeasure(int paramInt1, int paramInt2)
  {
    super.onMeasure(paramInt1, paramInt2);
    if ((this.pz != null) && (View.MeasureSpec.getMode(paramInt1) == -2147483648))
      setMeasuredDimension(Math.min(Math.max(getMeasuredWidth(), a(this.lE, getBackground())), View.MeasureSpec.getSize(paramInt1)), getMeasuredHeight());
  }

  public final boolean performClick()
  {
    boolean bool = super.performClick();
    if (!bool)
    {
      bool = true;
      if (!this.pz.isShowing())
        this.pz.show();
    }
    return bool;
  }

  public final void setAdapter(SpinnerAdapter paramSpinnerAdapter)
  {
    super.setAdapter(paramSpinnerAdapter);
    if (this.pz != null)
    {
      this.pz.setAdapter(new ar(paramSpinnerAdapter));
      return;
    }
    this.pA = new ar(paramSpinnerAdapter);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ap
 * JD-Core Version:    0.6.2
 */