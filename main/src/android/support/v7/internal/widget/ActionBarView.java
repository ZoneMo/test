package android.support.v7.internal.widget;

import android.app.Activity;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.TypedArray;
import android.graphics.drawable.Drawable;
import android.graphics.drawable.Drawable.ConstantState;
import android.os.Build.VERSION;
import android.os.Parcelable;
import android.support.v7.app.ActionBar.LayoutParams;
import android.support.v7.internal.view.menu.ActionMenuPresenter;
import android.support.v7.internal.view.menu.ActionMenuView;
import android.support.v7.internal.view.menu.af;
import android.support.v7.internal.view.menu.o;
import android.support.v7.internal.view.menu.s;
import android.text.TextUtils;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.MeasureSpec;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.view.ViewGroup.LayoutParams;
import android.view.ViewParent;
import android.view.Window.Callback;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.d;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.p;

public class ActionBarView extends a
{
  private Drawable hO;
  private ActionBarContextView hx;
  private ScrollingTabContainerView hz;
  private CharSequence iU;
  private TextView kb;
  private LinearLayout lY;
  private int lZ;
  private o mA;
  private android.support.v7.internal.view.menu.a mB;
  private android.support.v7.app.b mC;
  private Context mContext;
  private Runnable mD;
  private h mE;
  View mF;
  Window.Callback mG;
  private final y mH = new e(this);
  private final View.OnClickListener mI = new f(this);
  private final View.OnClickListener mJ = new g(this);
  private int ma;
  private int mf;
  private int mg = -1;
  private CharSequence mh;
  private Drawable mi;
  private ActionBarView.HomeView mj;
  private ActionBarView.HomeView mk;
  private TextView ml;
  private View mm;
  private ap mn;
  private LinearLayout mo;
  private View mp;
  private ProgressBarICS mq;
  private ProgressBarICS mr;
  private int ms;
  private int mt;
  private int mu;
  private int mv;
  private boolean mw;
  private boolean mx;
  private boolean my;
  private boolean mz;

  public ActionBarView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.mContext = paramContext;
    setBackgroundResource(0);
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, p.bIU, d.actionBarStyle, 0);
    ApplicationInfo localApplicationInfo = paramContext.getApplicationInfo();
    PackageManager localPackageManager = paramContext.getPackageManager();
    this.mf = localTypedArray.getInt(2, 0);
    this.iU = localTypedArray.getText(0);
    this.mh = localTypedArray.getText(4);
    this.mi = localTypedArray.getDrawable(8);
    if ((this.mi != null) || (Build.VERSION.SDK_INT < 9) || ((paramContext instanceof Activity)));
    try
    {
      this.mi = localPackageManager.getActivityLogo(((Activity)paramContext).getComponentName());
      label158: if (this.mi == null)
        this.mi = localApplicationInfo.loadLogo(localPackageManager);
      this.hO = localTypedArray.getDrawable(7);
      if ((this.hO != null) || ((paramContext instanceof Activity)));
      try
      {
        this.hO = localPackageManager.getActivityIcon(((Activity)paramContext).getComponentName());
        label216: if (this.hO == null)
          this.hO = localApplicationInfo.loadIcon(localPackageManager);
        LayoutInflater localLayoutInflater = LayoutInflater.from(paramContext);
        int i = localTypedArray.getResourceId(14, k.aRN);
        this.mj = ((ActionBarView.HomeView)localLayoutInflater.inflate(i, this, false));
        this.mk = ((ActionBarView.HomeView)localLayoutInflater.inflate(i, this, false));
        this.mk.v(true);
        this.mk.setOnClickListener(this.mI);
        this.mk.setContentDescription(getResources().getText(n.bcL));
        this.lZ = localTypedArray.getResourceId(5, 0);
        this.ma = localTypedArray.getResourceId(6, 0);
        this.mu = localTypedArray.getResourceId(15, 0);
        this.mv = localTypedArray.getResourceId(16, 0);
        this.ms = localTypedArray.getDimensionPixelOffset(17, 0);
        this.mt = localTypedArray.getDimensionPixelOffset(18, 0);
        setDisplayOptions(localTypedArray.getInt(3, 0));
        int j = localTypedArray.getResourceId(13, 0);
        if (j != 0)
        {
          this.mp = localLayoutInflater.inflate(j, this, false);
          this.mf = 0;
          setDisplayOptions(0x10 | this.mg);
        }
        this.lC = localTypedArray.getLayoutDimension(1, 0);
        localTypedArray.recycle();
        this.mB = new android.support.v7.internal.view.menu.a(paramContext, this.iU);
        this.mj.setOnClickListener(this.mJ);
        this.mj.setClickable(true);
        this.mj.setFocusable(true);
        return;
      }
      catch (PackageManager.NameNotFoundException localNameNotFoundException1)
      {
        break label216;
      }
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException2)
    {
      break label158;
    }
  }

  private void cN()
  {
    boolean bool1 = true;
    boolean bool2;
    boolean bool3;
    label200: int i;
    label217: LinearLayout localLinearLayout;
    if (this.lY == null)
    {
      this.lY = ((LinearLayout)LayoutInflater.from(getContext()).inflate(k.aRQ, this, false));
      this.kb = ((TextView)this.lY.findViewById(i.akP));
      this.ml = ((TextView)this.lY.findViewById(i.akO));
      this.mm = this.lY.findViewById(i.aNV);
      this.lY.setOnClickListener(this.mJ);
      if (this.lZ != 0)
        this.kb.setTextAppearance(this.mContext, this.lZ);
      if (this.iU != null)
        this.kb.setText(this.iU);
      if (this.ma != 0)
        this.ml.setTextAppearance(this.mContext, this.ma);
      if (this.mh != null)
      {
        this.ml.setText(this.mh);
        this.ml.setVisibility(0);
      }
      if ((0x4 & this.mg) == 0)
        break label289;
      bool2 = bool1;
      if ((0x2 & this.mg) == 0)
        break label294;
      bool3 = bool1;
      View localView = this.mm;
      if (bool3)
        break label305;
      if (!bool2)
        break label299;
      i = 0;
      localView.setVisibility(i);
      localLinearLayout = this.lY;
      if ((!bool2) || (bool3))
        break label312;
    }
    while (true)
    {
      localLinearLayout.setEnabled(bool1);
      addView(this.lY);
      if ((this.mF != null) || ((TextUtils.isEmpty(this.iU)) && (TextUtils.isEmpty(this.mh))))
        this.lY.setVisibility(8);
      return;
      label289: bool2 = false;
      break;
      label294: bool3 = false;
      break label200;
      label299: i = 4;
      break label217;
      label305: i = 8;
      break label217;
      label312: bool1 = false;
    }
  }

  private void e(o paramo)
  {
    if (paramo != null)
    {
      paramo.a(this.lz);
      paramo.a(this.mE);
    }
    while (true)
    {
      this.lz.j(true);
      this.mE.j(true);
      return;
      this.lz.a(this.mContext, null);
      this.mE.a(this.mContext, null);
    }
  }

  private void e(CharSequence paramCharSequence)
  {
    this.iU = paramCharSequence;
    int i;
    LinearLayout localLinearLayout;
    int j;
    if (this.kb != null)
    {
      this.kb.setText(paramCharSequence);
      if ((this.mF != null) || ((0x8 & this.mg) == 0) || ((TextUtils.isEmpty(this.iU)) && (TextUtils.isEmpty(this.mh))))
        break label96;
      i = 1;
      localLinearLayout = this.lY;
      j = 0;
      if (i == 0)
        break label101;
    }
    while (true)
    {
      localLinearLayout.setVisibility(j);
      if (this.mB != null)
        this.mB.setTitle(paramCharSequence);
      return;
      label96: i = 0;
      break;
      label101: j = 8;
    }
  }

  public final void G(View paramView)
  {
    if ((0x10 & this.mg) != 0);
    for (int i = 1; ; i = 0)
    {
      if ((this.mp != null) && (i != 0))
        removeView(this.mp);
      this.mp = paramView;
      if ((this.mp != null) && (i != 0))
        addView(this.mp);
      return;
    }
  }

  public final void a(android.support.v4.a.a.a parama, af paramaf)
  {
    if (parama == this.mA)
      return;
    if (this.mA != null)
    {
      this.mA.b(this.lz);
      this.mA.b(this.mE);
    }
    o localo = (o)parama;
    this.mA = localo;
    if (this.ly != null)
    {
      ViewGroup localViewGroup3 = (ViewGroup)this.ly.getParent();
      if (localViewGroup3 != null)
        localViewGroup3.removeView(this.ly);
    }
    if (this.lz == null)
    {
      this.lz = new ActionMenuPresenter(this.mContext);
      this.lz.a(paramaf);
      this.lz.setId(i.akR);
      this.mE = new h(this, (byte)0);
    }
    ViewGroup.LayoutParams localLayoutParams = new ViewGroup.LayoutParams(-2, -1);
    ActionMenuView localActionMenuView;
    if (!this.lA)
    {
      this.lz.i(getResources().getBoolean(com.tencent.mm.e.ZF));
      e(localo);
      localActionMenuView = (ActionMenuView)this.lz.b(this);
      ViewGroup localViewGroup2 = (ViewGroup)localActionMenuView.getParent();
      if ((localViewGroup2 != null) && (localViewGroup2 != this))
        localViewGroup2.removeView(localActionMenuView);
      addView(localActionMenuView, localLayoutParams);
    }
    while (true)
    {
      this.ly = localActionMenuView;
      return;
      this.lz.i(false);
      this.lz.y(getContext().getResources().getDisplayMetrics().widthPixels);
      this.lz.bG();
      localLayoutParams.width = -1;
      e(localo);
      localActionMenuView = (ActionMenuView)this.lz.b(this);
      if (this.hy != null)
      {
        ViewGroup localViewGroup1 = (ViewGroup)localActionMenuView.getParent();
        if ((localViewGroup1 != null) && (localViewGroup1 != this.hy))
          localViewGroup1.removeView(localActionMenuView);
        localActionMenuView.setVisibility(super.cD());
        this.hy.addView(localActionMenuView, localLayoutParams);
      }
      else
      {
        localActionMenuView.setLayoutParams(localLayoutParams);
      }
    }
  }

  public final void a(ActionBarContextView paramActionBarContextView)
  {
    this.hx = paramActionBarContextView;
  }

  public final void a(Window.Callback paramCallback)
  {
    this.mG = paramCallback;
  }

  public final void aR()
  {
    Drawable localDrawable = this.mContext.getResources().getDrawable(2130837603);
    this.hO = localDrawable;
    if ((localDrawable != null) && (((0x1 & this.mg) == 0) || (this.mi == null)))
      this.mj.setIcon(localDrawable);
    if (this.mF != null)
      this.mk.setIcon(this.hO.getConstantState().newDrawable(getResources()));
  }

  public final void b(ScrollingTabContainerView paramScrollingTabContainerView)
  {
    if (this.hz != null)
      removeView(this.hz);
    this.hz = paramScrollingTabContainerView;
    if (paramScrollingTabContainerView != null);
    for (boolean bool = true; ; bool = false)
    {
      this.mx = bool;
      if ((this.mx) && (this.mf == 2))
      {
        addView(this.hz);
        ViewGroup.LayoutParams localLayoutParams = this.hz.getLayoutParams();
        localLayoutParams.width = -2;
        localLayoutParams.height = -1;
        paramScrollingTabContainerView.x(true);
      }
      return;
    }
  }

  public final void cH()
  {
    this.mq = new ProgressBarICS(this.mContext, this.mu);
    this.mq.setId(i.progress_horizontal);
    this.mq.setMax(10000);
    this.mq.setVisibility(8);
    addView(this.mq);
  }

  public final void cI()
  {
    this.mr = new ProgressBarICS(this.mContext, this.mv);
    this.mr.setId(i.aED);
    this.mr.setVisibility(8);
    addView(this.mr);
  }

  public final boolean cJ()
  {
    return this.lA;
  }

  public final boolean cK()
  {
    return (this.mE != null) && (this.mE.mL != null);
  }

  public final void cL()
  {
    if (this.mE == null);
    for (s locals = null; ; locals = this.mE.mL)
    {
      if (locals != null)
        locals.collapseActionView();
      return;
    }
  }

  public final View cM()
  {
    return this.mp;
  }

  public final boolean cO()
  {
    return this.mz;
  }

  public final void d(CharSequence paramCharSequence)
  {
    if (!this.mw)
      e(paramCharSequence);
  }

  protected ViewGroup.LayoutParams generateDefaultLayoutParams()
  {
    return new ActionBar.LayoutParams((byte)0);
  }

  public ViewGroup.LayoutParams generateLayoutParams(AttributeSet paramAttributeSet)
  {
    return new ActionBar.LayoutParams(getContext(), paramAttributeSet);
  }

  public ViewGroup.LayoutParams generateLayoutParams(ViewGroup.LayoutParams paramLayoutParams)
  {
    if (paramLayoutParams == null)
      paramLayoutParams = generateDefaultLayoutParams();
    return paramLayoutParams;
  }

  public final int getDisplayOptions()
  {
    return this.mg;
  }

  public final int getNavigationMode()
  {
    return this.mf;
  }

  protected void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.kb = null;
    this.ml = null;
    this.mm = null;
    if ((this.lY != null) && (this.lY.getParent() == this))
      removeView(this.lY);
    this.lY = null;
    if ((0x8 & this.mg) != 0)
      cN();
    if ((this.hz != null) && (this.mx))
    {
      ViewGroup.LayoutParams localLayoutParams = this.hz.getLayoutParams();
      if (localLayoutParams != null)
      {
        localLayoutParams.width = -2;
        localLayoutParams.height = -1;
      }
      this.hz.x(true);
    }
  }

  public void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    removeCallbacks(this.mD);
    if (this.lz != null)
    {
      this.lz.bI();
      this.lz.bK();
    }
  }

  protected void onFinishInflate()
  {
    super.onFinishInflate();
    addView(this.mj);
    if ((this.mp != null) && ((0x10 & this.mg) != 0))
    {
      ViewParent localViewParent = this.mp.getParent();
      if (localViewParent != this)
      {
        if ((localViewParent instanceof ViewGroup))
          ((ViewGroup)localViewParent).removeView(this.mp);
        addView(this.mp);
      }
    }
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    int i = getPaddingLeft();
    int j = getPaddingTop();
    int k = paramInt4 - paramInt2 - getPaddingTop() - getPaddingBottom();
    if (k <= 0)
      return;
    ActionBarView.HomeView localHomeView;
    label47: int i21;
    if (this.mF != null)
    {
      localHomeView = this.mk;
      if (localHomeView.getVisibility() == 8)
        break label921;
      i21 = localHomeView.cQ();
    }
    label908: label921: for (int m = i + (i21 + a(localHomeView, i + i21, j, k)); ; m = i)
    {
      int i20;
      if (this.mF == null)
      {
        if ((this.lY == null) || (this.lY.getVisibility() == 8) || ((0x8 & this.mg) == 0))
          break label616;
        i20 = 1;
        label125: if (i20 != 0)
          m += a(this.lY, m, j, k);
      }
      label180: int n;
      label184: int i1;
      switch (this.mf)
      {
      default:
        n = m;
        i1 = paramInt3 - paramInt1 - getPaddingRight();
        if ((this.ly != null) && (this.ly.getParent() == this))
        {
          b(this.ly, i1, j, k);
          i1 -= this.ly.getMeasuredWidth();
        }
        if ((this.mr != null) && (this.mr.getVisibility() != 8))
          b(this.mr, i1, j, k);
        break;
      case 0:
      case 1:
      case 2:
      }
      for (int i2 = i1 - this.mr.getMeasuredWidth(); ; i2 = i1)
      {
        View localView;
        if (this.mF != null)
          localView = this.mF;
        while (true)
        {
          label297: ActionBar.LayoutParams localLayoutParams1;
          label324: int i4;
          label336: int i5;
          int i6;
          int i9;
          int i7;
          int i8;
          if (localView != null)
          {
            ViewGroup.LayoutParams localLayoutParams = localView.getLayoutParams();
            if (!(localLayoutParams instanceof ActionBar.LayoutParams))
              break label749;
            localLayoutParams1 = (ActionBar.LayoutParams)localLayoutParams;
            if (localLayoutParams1 == null)
              break label755;
            i4 = localLayoutParams1.gravity;
            i5 = localView.getMeasuredWidth();
            if (localLayoutParams1 == null)
              break label891;
            int i16 = n + localLayoutParams1.leftMargin;
            int i17 = i2 - localLayoutParams1.rightMargin;
            int i18 = localLayoutParams1.topMargin;
            int i19 = localLayoutParams1.bottomMargin;
            i6 = i17;
            i9 = i18;
            i7 = i16;
            i8 = i19;
          }
          while (true)
          {
            int i10 = i4 & 0x7;
            int i15;
            int i11;
            if (i10 == 1)
            {
              i15 = (getWidth() - i5) / 2;
              if (i15 < i7)
                i11 = 3;
            }
            while (true)
            {
              label432: label471: int i13;
              switch (i11)
              {
              case 2:
              case 4:
              default:
                i7 = 0;
              case 3:
                int i12 = i4 & 0x70;
                if (i4 == -1)
                  i12 = 16;
                i13 = 0;
                switch (i12)
                {
                default:
                case 16:
                case 48:
                case 80:
                }
                break;
              case 1:
              case 5:
              }
              while (true)
              {
                localView.layout(i7, i13, i7 + localView.getMeasuredWidth(), i13 + localView.getMeasuredHeight());
                if (this.mq == null)
                  break;
                this.mq.bringToFront();
                int i3 = this.mq.getMeasuredHeight() / 2;
                this.mq.layout(this.ms, -i3, this.ms + this.mq.getMeasuredWidth(), i3);
                return;
                localHomeView = this.mj;
                break label47;
                label616: i20 = 0;
                break label125;
                n = m;
                break label184;
                if (this.mo == null)
                  break label180;
                if (i20 != 0)
                  m += this.mt;
                n = m + (a(this.mo, m, j, k) + this.mt);
                break label184;
                if (this.hz == null)
                  break label180;
                if (i20 != 0)
                  m += this.mt;
                n = m + (a(this.hz, m, j, k) + this.mt);
                break label184;
                if (((0x10 & this.mg) == 0) || (this.mp == null))
                  break label908;
                localView = this.mp;
                break label297;
                label749: localLayoutParams1 = null;
                break label324;
                label755: i4 = 19;
                break label336;
                if (i15 + i5 > i6)
                  i10 = 5;
                i11 = i10;
                break label432;
                if (i4 != -1)
                  break label884;
                i11 = 3;
                break label432;
                i7 = (getWidth() - i5) / 2;
                break label471;
                i7 = i6 - i5;
                break label471;
                int i14 = getPaddingTop();
                i13 = (getHeight() - getPaddingBottom() - i14 - localView.getMeasuredHeight()) / 2;
                continue;
                i13 = i9 + getPaddingTop();
                continue;
                i13 = getHeight() - getPaddingBottom() - localView.getMeasuredHeight() - i8;
              }
              label884: i11 = i10;
            }
            label891: i6 = i2;
            i7 = n;
            i8 = 0;
            i9 = 0;
          }
          localView = null;
        }
      }
    }
  }

  protected void onMeasure(int paramInt1, int paramInt2)
  {
    int i = getChildCount();
    if (this.my)
    {
      int i35 = 0;
      for (int i36 = 0; i36 < i; i36++)
      {
        View localView2 = getChildAt(i36);
        if ((localView2.getVisibility() != 8) && ((localView2 != this.ly) || (this.ly.getChildCount() != 0)))
          i35++;
      }
      if (i35 == 0)
      {
        setMeasuredDimension(0, 0);
        this.mz = true;
        return;
      }
    }
    this.mz = false;
    if (View.MeasureSpec.getMode(paramInt1) != 1073741824)
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_width=\"MATCH_PARENT\" (or fill_parent)");
    if (View.MeasureSpec.getMode(paramInt2) != -2147483648)
      throw new IllegalStateException(getClass().getSimpleName() + " can only be used with android:layout_height=\"wrap_content\"");
    int j = View.MeasureSpec.getSize(paramInt1);
    int k;
    label199: int m;
    int i2;
    int i3;
    int i4;
    int i5;
    ActionBarView.HomeView localHomeView;
    label268: ViewGroup.LayoutParams localLayoutParams2;
    int i33;
    label303: int i7;
    int i6;
    if (this.lC > 0)
    {
      k = this.lC;
      m = getPaddingTop() + getPaddingBottom();
      int n = getPaddingLeft();
      int i1 = getPaddingRight();
      i2 = k - m;
      i3 = View.MeasureSpec.makeMeasureSpec(i2, -2147483648);
      i4 = j - n - i1;
      i5 = i4 / 2;
      if (this.mF == null)
        break label879;
      localHomeView = this.mk;
      if (localHomeView.getVisibility() == 8)
        break label1305;
      localLayoutParams2 = localHomeView.getLayoutParams();
      if (localLayoutParams2.width >= 0)
        break label888;
      i33 = View.MeasureSpec.makeMeasureSpec(i4, -2147483648);
      localHomeView.measure(i33, View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
      int i34 = localHomeView.getMeasuredWidth() + localHomeView.cQ();
      i7 = Math.max(0, i4 - i34);
      i6 = Math.max(0, i7 - i34);
    }
    while (true)
    {
      if ((this.ly != null) && (this.ly.getParent() == this))
      {
        i7 = c(this.ly, i7, i3);
        i5 = Math.max(0, i5 - this.ly.getMeasuredWidth());
      }
      if ((this.mr != null) && (this.mr.getVisibility() != 8))
      {
        i7 = c(this.mr, i7, i3);
        i5 = Math.max(0, i5 - this.mr.getMeasuredWidth());
      }
      int i8;
      label480: int i9;
      label512: int i10;
      View localView1;
      if ((this.lY != null) && (this.lY.getVisibility() != 8) && ((0x8 & this.mg) != 0))
      {
        i8 = 1;
        if (this.mF == null);
        switch (this.mf)
        {
        default:
          i9 = i6;
          i10 = i7;
          if (this.mF != null)
            localView1 = this.mF;
          break;
        case 1:
        case 2:
        }
      }
      while (true)
      {
        label533: ActionBar.LayoutParams localLayoutParams;
        label564: int i15;
        int i16;
        label623: int i17;
        int i18;
        label669: int i19;
        label689: int i20;
        int i21;
        if (localView1 != null)
        {
          ViewGroup.LayoutParams localLayoutParams1 = generateLayoutParams(localView1.getLayoutParams());
          if (!(localLayoutParams1 instanceof ActionBar.LayoutParams))
            break label1160;
          localLayoutParams = (ActionBar.LayoutParams)localLayoutParams1;
          int i14 = 0;
          i15 = 0;
          if (localLayoutParams != null)
          {
            i15 = localLayoutParams.leftMargin + localLayoutParams.rightMargin;
            i14 = localLayoutParams.topMargin + localLayoutParams.bottomMargin;
          }
          if ((this.lC <= 0) || (localLayoutParams1.height == -2))
            break label1166;
          i16 = 1073741824;
          if (localLayoutParams1.height >= 0)
            i2 = Math.min(localLayoutParams1.height, i2);
          i17 = Math.max(0, i2 - i14);
          if (localLayoutParams1.width == -2)
            break label1174;
          i18 = 1073741824;
          if (localLayoutParams1.width < 0)
            break label1182;
          i19 = Math.min(localLayoutParams1.width, i10);
          i20 = Math.max(0, i19 - i15);
          if (localLayoutParams == null)
            break label1189;
          i21 = localLayoutParams.gravity;
          label712: if (((i21 & 0x7) != 1) || (localLayoutParams1.width != -1))
            break label1292;
        }
        label1160: label1292: for (int i22 = 2 * Math.min(i9, i5); ; i22 = i20)
        {
          localView1.measure(View.MeasureSpec.makeMeasureSpec(i22, i18), View.MeasureSpec.makeMeasureSpec(i17, i16));
          i10 -= i15 + localView1.getMeasuredWidth();
          if ((this.mF == null) && (i8 != 0))
          {
            c(this.lY, i10, View.MeasureSpec.makeMeasureSpec(this.lC, 1073741824));
            Math.max(0, i9 - this.lY.getMeasuredWidth());
          }
          int i11;
          int i12;
          label833: int i13;
          if (this.lC <= 0)
          {
            i11 = 0;
            i12 = 0;
            if (i12 < i)
            {
              i13 = m + getChildAt(i12).getMeasuredHeight();
              if (i13 <= i11)
                break label1285;
            }
          }
          while (true)
          {
            i12++;
            i11 = i13;
            break label833;
            k = View.MeasureSpec.getSize(paramInt2);
            break label199;
            label879: localHomeView = this.mj;
            break label268;
            label888: i33 = View.MeasureSpec.makeMeasureSpec(localLayoutParams2.width, 1073741824);
            break label303;
            i8 = 0;
            break label480;
            if (this.mo == null)
              break label512;
            if (i8 != 0);
            for (int i28 = 2 * this.mt; ; i28 = this.mt)
            {
              int i29 = Math.max(0, i7 - i28);
              int i30 = Math.max(0, i6 - i28);
              this.mo.measure(View.MeasureSpec.makeMeasureSpec(i29, -2147483648), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
              int i31 = this.mo.getMeasuredWidth();
              int i32 = Math.max(0, i29 - i31);
              i9 = Math.max(0, i30 - i31);
              i10 = i32;
              break;
            }
            if (this.hz == null)
              break label512;
            if (i8 != 0);
            for (int i23 = 2 * this.mt; ; i23 = this.mt)
            {
              int i24 = Math.max(0, i7 - i23);
              int i25 = Math.max(0, i6 - i23);
              this.hz.measure(View.MeasureSpec.makeMeasureSpec(i24, -2147483648), View.MeasureSpec.makeMeasureSpec(i2, 1073741824));
              int i26 = this.hz.getMeasuredWidth();
              int i27 = Math.max(0, i24 - i26);
              i9 = Math.max(0, i25 - i26);
              i10 = i27;
              break;
            }
            if (((0x10 & this.mg) == 0) || (this.mp == null))
              break label1299;
            localView1 = this.mp;
            break label533;
            localLayoutParams = null;
            break label564;
            label1166: i16 = -2147483648;
            break label623;
            label1174: i18 = -2147483648;
            break label669;
            label1182: i19 = i10;
            break label689;
            label1189: i21 = 19;
            break label712;
            setMeasuredDimension(j, i11);
            while (true)
            {
              if (this.hx != null)
                this.hx.E(getMeasuredHeight());
              if ((this.mq == null) || (this.mq.getVisibility() == 8))
                break;
              this.mq.measure(View.MeasureSpec.makeMeasureSpec(j - 2 * this.ms, 1073741824), View.MeasureSpec.makeMeasureSpec(getMeasuredHeight(), -2147483648));
              return;
              setMeasuredDimension(j, k);
            }
            i13 = i11;
          }
        }
        label1285: label1299: localView1 = null;
      }
      label1305: i6 = i5;
      i7 = i4;
    }
  }

  public void onRestoreInstanceState(Parcelable paramParcelable)
  {
    ActionBarView.SavedState localSavedState = (ActionBarView.SavedState)paramParcelable;
    super.onRestoreInstanceState(localSavedState.getSuperState());
    if ((localSavedState.mQ != 0) && (this.mE != null) && (this.mA != null))
    {
      android.support.v4.a.a.b localb = (android.support.v4.a.a.b)this.mA.findItem(localSavedState.mQ);
      if (localb != null)
        localb.expandActionView();
    }
    if (localSavedState.mR)
      super.cE();
  }

  public Parcelable onSaveInstanceState()
  {
    ActionBarView.SavedState localSavedState = new ActionBarView.SavedState(super.onSaveInstanceState());
    if ((this.mE != null) && (this.mE.mL != null))
      localSavedState.mQ = this.mE.mL.getItemId();
    localSavedState.mR = super.bL();
    return localSavedState;
  }

  public final void s(boolean paramBoolean)
  {
    int i;
    if (this.lA != paramBoolean)
    {
      if (this.ly != null)
      {
        ViewGroup localViewGroup = (ViewGroup)this.ly.getParent();
        if (localViewGroup != null)
          localViewGroup.removeView(this.ly);
        if (!paramBoolean)
          break label138;
        if (this.hy != null)
          this.hy.addView(this.ly);
        this.ly.getLayoutParams().width = -1;
        this.ly.requestLayout();
      }
      if (this.hy != null)
      {
        ActionBarContainer localActionBarContainer = this.hy;
        if (!paramBoolean)
          break label161;
        i = 0;
        label99: localActionBarContainer.setVisibility(i);
      }
      if (this.lz != null)
      {
        if (paramBoolean)
          break label167;
        this.lz.i(getResources().getBoolean(com.tencent.mm.e.ZF));
      }
    }
    while (true)
    {
      super.s(paramBoolean);
      return;
      label138: addView(this.ly);
      this.ly.getLayoutParams().width = -2;
      break;
      label161: i = 8;
      break label99;
      label167: this.lz.i(false);
      this.lz.y(getContext().getResources().getDisplayMetrics().widthPixels);
      this.lz.bG();
    }
  }

  public final void setDisplayOptions(int paramInt)
  {
    int i = 8;
    int j = -1;
    boolean bool1 = true;
    boolean bool2;
    label38: int k;
    label53: boolean bool5;
    label78: boolean bool4;
    label121: Drawable localDrawable;
    label138: label163: boolean bool3;
    if (this.mg == j)
    {
      this.mg = paramInt;
      if ((j & 0x1F) == 0)
        break label371;
      if ((paramInt & 0x2) == 0)
        break label299;
      bool2 = bool1;
      if ((!bool2) || (this.mF != null))
        break label305;
      k = 0;
      this.mj.setVisibility(k);
      if ((j & 0x4) != 0)
      {
        if ((paramInt & 0x4) == 0)
          break label311;
        bool5 = bool1;
        this.mj.v(bool5);
        if (bool5)
          setHomeButtonEnabled(bool1);
      }
      if ((j & 0x1) != 0)
      {
        if ((this.mi == null) || ((paramInt & 0x1) == 0))
          break label317;
        bool4 = bool1;
        ActionBarView.HomeView localHomeView = this.mj;
        if (!bool4)
          break label323;
        localDrawable = this.mi;
        localHomeView.setIcon(localDrawable);
      }
      if ((j & 0x8) != 0)
      {
        if ((paramInt & 0x8) == 0)
          break label332;
        cN();
      }
      if ((this.lY != null) && ((j & 0x6) != 0))
      {
        if ((0x4 & this.mg) == 0)
          break label343;
        bool3 = bool1;
        label190: View localView = this.mm;
        if (!bool2)
        {
          if (!bool3)
            break label349;
          i = 0;
        }
        label208: localView.setVisibility(i);
        LinearLayout localLinearLayout = this.lY;
        if ((bool2) || (!bool3))
          break label354;
        label230: localLinearLayout.setEnabled(bool1);
      }
      if (((j & 0x10) != 0) && (this.mp != null))
      {
        if ((paramInt & 0x10) == 0)
          break label360;
        addView(this.mp);
      }
      label266: requestLayout();
    }
    while (true)
    {
      if (this.mj.isEnabled())
        break label378;
      this.mj.setContentDescription(null);
      return;
      j = paramInt ^ this.mg;
      break;
      label299: bool2 = false;
      break label38;
      label305: k = i;
      break label53;
      label311: bool5 = false;
      break label78;
      label317: bool4 = false;
      break label121;
      label323: localDrawable = this.hO;
      break label138;
      label332: removeView(this.lY);
      break label163;
      label343: bool3 = false;
      break label190;
      label349: i = 4;
      break label208;
      label354: bool1 = false;
      break label230;
      label360: removeView(this.mp);
      break label266;
      label371: invalidate();
    }
    label378: if ((paramInt & 0x4) != 0)
    {
      this.mj.setContentDescription(this.mContext.getResources().getText(n.bcL));
      return;
    }
    this.mj.setContentDescription(this.mContext.getResources().getText(n.bcK));
  }

  public final void setHomeButtonEnabled(boolean paramBoolean)
  {
    this.mj.setEnabled(paramBoolean);
    this.mj.setFocusable(paramBoolean);
    if (!paramBoolean)
    {
      this.mj.setContentDescription(null);
      return;
    }
    if ((0x4 & this.mg) != 0)
    {
      this.mj.setContentDescription(this.mContext.getResources().getText(n.bcL));
      return;
    }
    this.mj.setContentDescription(this.mContext.getResources().getText(n.bcK));
  }

  public final void setLogo(int paramInt)
  {
    Drawable localDrawable = this.mContext.getResources().getDrawable(paramInt);
    this.mi = localDrawable;
    if ((localDrawable != null) && ((0x1 & this.mg) != 0))
      this.mj.setIcon(localDrawable);
  }

  public final void setSubtitle(CharSequence paramCharSequence)
  {
    this.mh = paramCharSequence;
    int i;
    int j;
    label76: LinearLayout localLinearLayout;
    int k;
    if (this.ml != null)
    {
      this.ml.setText(paramCharSequence);
      TextView localTextView = this.ml;
      if (paramCharSequence == null)
        break label98;
      i = 0;
      localTextView.setVisibility(i);
      if ((this.mF != null) || ((0x8 & this.mg) == 0) || ((TextUtils.isEmpty(this.iU)) && (TextUtils.isEmpty(this.mh))))
        break label104;
      j = 1;
      localLinearLayout = this.lY;
      k = 0;
      if (j == 0)
        break label110;
    }
    while (true)
    {
      localLinearLayout.setVisibility(k);
      return;
      label98: i = 8;
      break;
      label104: j = 0;
      break label76;
      label110: k = 8;
    }
  }

  public final void setTitle(CharSequence paramCharSequence)
  {
    this.mw = true;
    e(paramCharSequence);
  }

  public boolean shouldDelayChildPressedState()
  {
    return false;
  }

  public final void u(boolean paramBoolean)
  {
    this.my = paramBoolean;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.ActionBarView
 * JD-Core Version:    0.6.2
 */