package android.support.v4.view;

import android.content.Context;
import android.content.res.ColorStateList;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.os.Build.VERSION;
import android.text.TextUtils.TruncateAt;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.View.MeasureSpec;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.TextView;
import java.lang.ref.WeakReference;

public class PagerTitleStrip extends ViewGroup
  implements bv
{
  private static final int[] dQ = { 16842804, 16842901, 16842904, 16842927 };
  private static final int[] dR = { 16843660 };
  private static final ar dU = new as();
  ViewPager dE;
  TextView dF;
  TextView dG;
  TextView dH;
  private int dI = -1;
  private float dJ = -1.0F;
  private int dK;
  private int dL;
  private boolean dM;
  private boolean dN;
  private final aq dO = new aq(this, (byte)0);
  private WeakReference dP;
  private int dS;
  int dT;

  static
  {
    if (Build.VERSION.SDK_INT >= 14)
    {
      dU = new at();
      return;
    }
  }

  public PagerTitleStrip(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    TextView localTextView1 = new TextView(paramContext);
    this.dF = localTextView1;
    addView(localTextView1);
    TextView localTextView2 = new TextView(paramContext);
    this.dG = localTextView2;
    addView(localTextView2);
    TextView localTextView3 = new TextView(paramContext);
    this.dH = localTextView3;
    addView(localTextView3);
    TypedArray localTypedArray1 = paramContext.obtainStyledAttributes(paramAttributeSet, dQ);
    int i = localTypedArray1.getResourceId(0, 0);
    if (i != 0)
    {
      this.dF.setTextAppearance(paramContext, i);
      this.dG.setTextAppearance(paramContext, i);
      this.dH.setTextAppearance(paramContext, i);
    }
    int j = localTypedArray1.getDimensionPixelSize(1, 0);
    if (j != 0)
    {
      float f = j;
      this.dF.setTextSize(0, f);
      this.dG.setTextSize(0, f);
      this.dH.setTextSize(0, f);
    }
    if (localTypedArray1.hasValue(2))
    {
      int m = localTypedArray1.getColor(2, 0);
      this.dF.setTextColor(m);
      this.dG.setTextColor(m);
      this.dH.setTextColor(m);
    }
    this.dL = localTypedArray1.getInteger(3, 80);
    localTypedArray1.recycle();
    this.dT = this.dG.getTextColors().getDefaultColor();
    this.dS = 153;
    int k = this.dS << 24 | 0xFFFFFF & this.dT;
    this.dF.setTextColor(k);
    this.dH.setTextColor(k);
    this.dF.setEllipsize(TextUtils.TruncateAt.END);
    this.dG.setEllipsize(TextUtils.TruncateAt.END);
    this.dH.setEllipsize(TextUtils.TruncateAt.END);
    boolean bool = false;
    if (i != 0)
    {
      TypedArray localTypedArray2 = paramContext.obtainStyledAttributes(i, dR);
      bool = localTypedArray2.getBoolean(0, false);
      localTypedArray2.recycle();
    }
    if (bool)
    {
      a(this.dF);
      a(this.dG);
      a(this.dH);
    }
    while (true)
    {
      this.dK = ((int)(16.0F * paramContext.getResources().getDisplayMetrics().density));
      return;
      this.dF.setSingleLine();
      this.dG.setSingleLine();
      this.dH.setSingleLine();
    }
  }

  private static void a(TextView paramTextView)
  {
    dU.a(paramTextView);
  }

  void a(int paramInt, float paramFloat, boolean paramBoolean)
  {
    int i;
    int k;
    int n;
    int i1;
    int i2;
    int i3;
    int i4;
    int i5;
    int i9;
    int i10;
    int i15;
    int i16;
    int i17;
    int i21;
    int i23;
    int i24;
    int i25;
    if (paramInt != this.dI)
    {
      a(paramInt, this.dE.ai());
      this.dN = true;
      i = this.dF.getMeasuredWidth();
      int j = this.dG.getMeasuredWidth();
      k = this.dH.getMeasuredWidth();
      int m = j / 2;
      n = getWidth();
      i1 = getHeight();
      i2 = getPaddingLeft();
      i3 = getPaddingRight();
      i4 = getPaddingTop();
      i5 = getPaddingBottom();
      int i6 = i2 + m;
      int i7 = i3 + m;
      int i8 = n - i6 - i7;
      float f = 0.5F + paramFloat;
      if (f > 1.0F)
        f -= 1.0F;
      i9 = n - i7 - (int)(f * i8) - m;
      i10 = i9 + j;
      int i11 = this.dF.getBaseline();
      int i12 = this.dG.getBaseline();
      int i13 = this.dH.getBaseline();
      int i14 = Math.max(Math.max(i11, i12), i13);
      i15 = i14 - i11;
      i16 = i14 - i12;
      i17 = i14 - i13;
      int i18 = i15 + this.dF.getMeasuredHeight();
      int i19 = i16 + this.dG.getMeasuredHeight();
      int i20 = i17 + this.dH.getMeasuredHeight();
      i21 = Math.max(Math.max(i18, i19), i20);
      switch (0x70 & this.dL)
      {
      default:
        i23 = i4 + i15;
        i24 = i4 + i16;
        i25 = i4 + i17;
      case 16:
      case 80:
      }
    }
    while (true)
    {
      this.dG.layout(i9, i24, i10, i24 + this.dG.getMeasuredHeight());
      int i26 = Math.min(i2, i9 - this.dK - i);
      this.dF.layout(i26, i23, i + i26, i23 + this.dF.getMeasuredHeight());
      int i27 = Math.max(n - i3 - k, i10 + this.dK);
      this.dH.layout(i27, i25, i27 + k, i25 + this.dH.getMeasuredHeight());
      this.dJ = paramFloat;
      this.dN = false;
      return;
      if ((paramBoolean) || (paramFloat != this.dJ))
        break;
      return;
      int i28 = (i1 - i4 - i5 - i21) / 2;
      i23 = i28 + i15;
      i24 = i28 + i16;
      i25 = i28 + i17;
      continue;
      int i22 = i1 - i5 - i21;
      i23 = i22 + i15;
      i24 = i22 + i16;
      i25 = i22 + i17;
    }
  }

  final void a(int paramInt, an paraman)
  {
    if (paraman != null)
      paraman.getCount();
    this.dM = true;
    this.dF.setText(null);
    this.dG.setText(null);
    this.dH.setText(null);
    int i = getWidth() - getPaddingLeft() - getPaddingRight();
    int j = getHeight() - getPaddingTop() - getPaddingBottom();
    int k = View.MeasureSpec.makeMeasureSpec((int)(0.8F * i), -2147483648);
    int m = View.MeasureSpec.makeMeasureSpec(j, -2147483648);
    this.dF.measure(k, m);
    this.dG.measure(k, m);
    this.dH.measure(k, m);
    this.dI = paramInt;
    if (!this.dN)
      a(paramInt, this.dJ, false);
    this.dM = false;
  }

  final void a(an paraman1, an paraman2)
  {
    if (paraman1 != null)
    {
      paraman1.unregisterDataSetObserver(this.dO);
      this.dP = null;
    }
    if (paraman2 != null)
    {
      paraman2.registerDataSetObserver(this.dO);
      this.dP = new WeakReference(paraman2);
    }
    if (this.dE != null)
    {
      this.dI = -1;
      this.dJ = -1.0F;
      a(this.dE.ak(), paraman2);
      requestLayout();
    }
  }

  public final int af()
  {
    return this.dK;
  }

  int getMinHeight()
  {
    Drawable localDrawable = getBackground();
    int i = 0;
    if (localDrawable != null)
      i = localDrawable.getIntrinsicHeight();
    return i;
  }

  public void i(int paramInt)
  {
    this.dK = paramInt;
    requestLayout();
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    ViewParent localViewParent = getParent();
    if (!(localViewParent instanceof ViewPager))
      throw new IllegalStateException("PagerTitleStrip must be a direct child of a ViewPager.");
    ViewPager localViewPager = (ViewPager)localViewParent;
    an localan1 = localViewPager.ai();
    localViewPager.b(this.dO);
    localViewPager.a(this.dO);
    this.dE = localViewPager;
    if (this.dP != null);
    for (an localan2 = (an)this.dP.get(); ; localan2 = null)
    {
      a(localan2, localan1);
      return;
    }
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.dE != null)
    {
      a(this.dE.ai(), null);
      this.dE.b(null);
      this.dE.a(null);
      this.dE = null;
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    if (this.dE != null)
    {
      boolean bool = this.dJ < 0.0F;
      float f = 0.0F;
      if (!bool)
        f = this.dJ;
      a(this.dI, f, true);
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = View.MeasureSpec.getMode(paramInt1);
    int j = View.MeasureSpec.getMode(paramInt2);
    int k = View.MeasureSpec.getSize(paramInt1);
    int m = View.MeasureSpec.getSize(paramInt2);
    if (i != 1073741824)
      throw new IllegalStateException("Must measure with an exact width");
    int n = getMinHeight();
    int i1 = getPaddingTop() + getPaddingBottom();
    int i2 = m - i1;
    int i3 = View.MeasureSpec.makeMeasureSpec((int)(0.8F * k), -2147483648);
    int i4 = View.MeasureSpec.makeMeasureSpec(i2, -2147483648);
    this.dF.measure(i3, i4);
    this.dG.measure(i3, i4);
    this.dH.measure(i3, i4);
    if (j == 1073741824)
    {
      setMeasuredDimension(k, m);
      return;
    }
    setMeasuredDimension(k, Math.max(n, i1 + this.dG.getMeasuredHeight()));
  }

  public void requestLayout()
  {
    if (!this.dM)
      super.requestLayout();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.view.PagerTitleStrip
 * JD-Core Version:    0.6.2
 */