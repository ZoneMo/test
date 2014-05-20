package android.support.v7.internal.view.menu;

import android.content.Context;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.support.v7.internal.widget.CompatTextView;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.View.OnLongClickListener;
import android.widget.Toast;
import com.tencent.mm.e;
import com.tencent.mm.p;

public class ActionMenuItemView extends CompatTextView
  implements ah, i, View.OnClickListener, View.OnLongClickListener
{
  private Drawable hO;
  private CharSequence iU;
  private s jc;
  private q jd;
  private boolean je;
  private boolean jf;
  private int jg;
  private int jh;

  public ActionMenuItemView(Context paramContext)
  {
    this(paramContext, null);
  }

  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet)
  {
    this(paramContext, paramAttributeSet, 0);
  }

  public ActionMenuItemView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.je = paramContext.getResources().getBoolean(e.ZG);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bIX, 0, 0);
    this.jg = localTypedArray.getDimensionPixelSize(0, 0);
    localTypedArray.recycle();
    setOnClickListener(this);
    setOnLongClickListener(this);
    setTransformationMethod(new b(this));
    this.jh = -1;
  }

  private void bD()
  {
    int i;
    if (!TextUtils.isEmpty(this.iU))
    {
      i = 1;
      if (this.hO != null)
      {
        boolean bool1 = this.jc.cw();
        j = 0;
        if (!bool1)
          break label57;
        if (!this.je)
        {
          boolean bool2 = this.jf;
          j = 0;
          if (!bool2)
            break label57;
        }
      }
      int j = 1;
      label57: if ((i & j) == 0)
        break label79;
    }
    label79: for (CharSequence localCharSequence = this.iU; ; localCharSequence = null)
    {
      setText(localCharSequence);
      return;
      i = 0;
      break;
    }
  }

  public final void a(q paramq)
  {
    this.jd = paramq;
  }

  public final void a(s params)
  {
    this.jc = params;
    Drawable localDrawable = params.getIcon();
    this.hO = localDrawable;
    setCompoundDrawablesWithIntrinsicBounds(localDrawable, null, null, null);
    bD();
    this.iU = params.a(this);
    setContentDescription(this.iU);
    bD();
    setId(params.getItemId());
    if (params.isVisible());
    for (int i = 0; ; i = 8)
    {
      setVisibility(i);
      setEnabled(params.isEnabled());
      return;
    }
  }

  public final s bB()
  {
    return this.jc;
  }

  public final boolean bC()
  {
    return true;
  }

  public final boolean bE()
  {
    return (hasText()) && (this.jc.getIcon() == null);
  }

  public final boolean bF()
  {
    return hasText();
  }

  public final boolean hasText()
  {
    return !TextUtils.isEmpty(getText());
  }

  public void onClick(View paramView)
  {
    if (this.jd != null)
      this.jd.c(this.jc);
  }

  public boolean onLongClick(View paramView)
  {
    if (hasText())
      return false;
    int[] arrayOfInt = new int[2];
    Rect localRect = new Rect();
    getLocationOnScreen(arrayOfInt);
    getWindowVisibleDisplayFrame(localRect);
    Context localContext = getContext();
    int i = getWidth();
    int j = getHeight();
    int k = arrayOfInt[1] + j / 2;
    int m = localContext.getResources().getDisplayMetrics().widthPixels;
    Toast localToast = Toast.makeText(localContext, this.jc.getTitle(), 0);
    if (k < localRect.height())
      localToast.setGravity(53, m - arrayOfInt[0] - i / 2, j);
    while (true)
    {
      localToast.show();
      return true;
      localToast.setGravity(81, 0, j);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    boolean bool = hasText();
    if ((bool) && (this.jh >= 0))
      super.setPadding(this.jh, getPaddingTop(), getPaddingRight(), getPaddingBottom());
    super.onMeasure(paramInt1, paramInt2);
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getSize(paramInt1);
    int k = getMeasuredWidth();
    if (i == -2147483648);
    for (int m = Math.min(j, this.jg); ; m = this.jg)
    {
      if ((i != 1073741824) && (this.jg > 0) && (k < m))
        super.onMeasure(View.MeasureSpec.makeMeasureSpec(m, 1073741824), paramInt2);
      if ((!bool) && (this.hO != null))
        super.setPadding((getMeasuredWidth() - this.hO.getIntrinsicWidth()) / 2, getPaddingTop(), getPaddingRight(), getPaddingBottom());
      return;
    }
  }

  public void setPadding(int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    this.jh = paramInt1;
    super.setPadding(paramInt1, paramInt2, paramInt3, paramInt4);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.view.menu.ActionMenuItemView
 * JD-Core Version:    0.6.2
 */