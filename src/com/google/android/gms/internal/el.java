package com.google.android.gms.internal;

import android.content.Context;
import android.content.pm.PackageManager.NameNotFoundException;
import android.content.res.Resources;
import android.graphics.Color;
import android.graphics.Point;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.TypedValue;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.FrameLayout.LayoutParams;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.google.android.gms.common.c;
import com.google.android.gms.common.d;
import com.google.android.gms.common.e;
import com.google.android.gms.plus.a;

public class el extends LinearLayout
  implements c, d
{
  private static final int Nh = Color.parseColor("#666666");
  protected int LL = 1;
  protected a Nb;
  protected boolean Ni;
  protected int Nj = 0;
  protected final LinearLayout Nk;
  protected final FrameLayout Nl;
  protected final CompoundButton Nm;
  private final ProgressBar Nn;
  protected final bs No;
  private final bd[] Np = new bd[4];
  private int Nq = 2;
  private Uri[] Nr;
  protected be Ns;
  protected final Resources Nt;
  protected final LayoutInflater Nu;
  private bp Nv = new bp(this);
  private int cT = 3;

  public el(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    i.c(paramContext, "Context must not be null.");
    String str1;
    int j;
    label96: String str2;
    int k;
    if (e.i(paramContext) != 0)
    {
      this.Nt = null;
      this.Nu = null;
      str1 = n.a("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "size", paramContext, paramAttributeSet);
      if (!"SMALL".equalsIgnoreCase(str1))
        break label259;
      j = 0;
      this.cT = j;
      str2 = n.a("http://schemas.android.com/apk/lib/com.google.android.gms.plus", "annotation", paramContext, paramAttributeSet);
      if (!"INLINE".equalsIgnoreCase(str2))
        break label305;
      k = 2;
    }
    Point localPoint;
    while (true)
    {
      this.Nq = k;
      localPoint = new Point();
      a(localPoint);
      if (!isInEditMode())
        break label335;
      TextView localTextView = new TextView(paramContext);
      localTextView.setGravity(17);
      localTextView.setText("[ +1 ]");
      addView(localTextView, new LinearLayout.LayoutParams(localPoint.x, localPoint.y));
      this.No = null;
      this.Nn = null;
      this.Nm = null;
      this.Nl = null;
      this.Nk = null;
      return;
      Context localContext = iV();
      this.Nt = localContext.getResources();
      this.Nu = ((LayoutInflater)localContext.getSystemService("layout_inflater"));
      break;
      label259: if ("MEDIUM".equalsIgnoreCase(str1))
      {
        j = 1;
        break label96;
      }
      if ("TALL".equalsIgnoreCase(str1))
      {
        j = 2;
        break label96;
      }
      "STANDARD".equalsIgnoreCase(str1);
      j = 3;
      break label96;
      label305: if ("NONE".equalsIgnoreCase(str2))
      {
        k = 0;
      }
      else
      {
        "BUBBLE".equalsIgnoreCase(str2);
        k = 1;
      }
    }
    label335: setFocusable(true);
    this.Nk = new LinearLayout(paramContext);
    this.Nk.setGravity(17);
    this.Nk.setOrientation(0);
    addView(this.Nk);
    this.Nm = new br(this, paramContext);
    this.Nm.setBackgroundDrawable(null);
    bs localbs = new bs(paramContext);
    localbs.setFocusable(false);
    localbs.jb();
    localbs.setSingleLine();
    localbs.Q(TypedValue.applyDimension(2, r(this.cT, this.Nq), paramContext.getResources().getDisplayMetrics()));
    localbs.setTextColor(Nh);
    localbs.setVisibility(0);
    this.No = localbs;
    FrameLayout localFrameLayout = new FrameLayout(paramContext);
    localFrameLayout.setFocusable(false);
    this.Nl = localFrameLayout;
    this.Nl.addView(this.Nm, new FrameLayout.LayoutParams(localPoint.x, localPoint.y, 17));
    b(localPoint);
    ProgressBar localProgressBar = new ProgressBar(paramContext, null, 16843400);
    localProgressBar.setFocusable(false);
    localProgressBar.setIndeterminate(true);
    this.Nn = localProgressBar;
    this.Nn.setVisibility(4);
    this.Nl.addView(this.Nn, new FrameLayout.LayoutParams(localPoint.x, localPoint.y, 17));
    int m = this.Np.length;
    while (i < m)
    {
      bd[] arrayOfbd = this.Np;
      bd localbd = new bd(getContext());
      localbd.setVisibility(8);
      arrayOfbd[i] = localbd;
      i++;
    }
    setType(1);
    this.Nn.setVisibility(4);
    iZ();
  }

  private void a(Point paramPoint)
  {
    int i = 24;
    int j = 20;
    switch (this.cT)
    {
    default:
      int k = i;
      i = 38;
      j = k;
    case 1:
    case 0:
    case 2:
    }
    while (true)
    {
      DisplayMetrics localDisplayMetrics = getResources().getDisplayMetrics();
      float f1 = TypedValue.applyDimension(1, i, localDisplayMetrics);
      float f2 = TypedValue.applyDimension(1, j, localDisplayMetrics);
      paramPoint.x = ((int)(0.5D + f1));
      paramPoint.y = ((int)(0.5D + f2));
      return;
      i = 32;
      continue;
      j = 14;
      continue;
      i = 50;
    }
  }

  private void b(Point paramPoint)
  {
    paramPoint.y = ((int)(paramPoint.y - TypedValue.applyDimension(1, 6.0F, getResources().getDisplayMetrics())));
    paramPoint.x = paramPoint.y;
  }

  private Context iV()
  {
    try
    {
      Context localContext = getContext().createPackageContext("com.google.android.gms", 4);
      return localContext;
    }
    catch (PackageManager.NameNotFoundException localNameNotFoundException)
    {
      Log.isLoggable("PlusOneButton", 5);
    }
    return null;
  }

  private void iX()
  {
    int i = 1;
    int j = (int)TypedValue.applyDimension(i, 5.0F, getContext().getResources().getDisplayMetrics());
    int k = (int)TypedValue.applyDimension(i, 1.0F, getContext().getResources().getDisplayMetrics());
    int m = this.Np.length;
    int n = 0;
    if (n < m)
    {
      LinearLayout.LayoutParams localLayoutParams;
      if (this.Np[n].getVisibility() == 0)
      {
        localLayoutParams = new LinearLayout.LayoutParams(this.Np[n].getLayoutParams());
        if (i == 0)
          break label120;
        localLayoutParams.setMargins(j, 0, k, 0);
        i = 0;
      }
      while (true)
      {
        this.Np[n].setLayoutParams(localLayoutParams);
        n++;
        break;
        label120: localLayoutParams.setMargins(k, 0, k, 0);
      }
    }
  }

  private void iZ()
  {
    CompoundButton localCompoundButton = this.Nm;
    Drawable localDrawable;
    if (this.Nt == null)
    {
      localDrawable = null;
      localCompoundButton.setButtonDrawable(localDrawable);
    }
    switch (this.LL)
    {
    default:
      this.Nm.setEnabled(false);
      this.Nm.setChecked(false);
      return;
      Resources localResources1 = this.Nt;
      Resources localResources2 = this.Nt;
      String str;
      switch (this.cT)
      {
      default:
        str = "ic_plusone_standard";
      case 0:
      case 1:
      case 2:
      }
      while (true)
      {
        localDrawable = localResources1.getDrawable(localResources2.getIdentifier(str, "drawable", "com.google.android.gms"));
        break;
        str = "ic_plusone_small";
        continue;
        str = "ic_plusone_medium";
        continue;
        str = "ic_plusone_tall";
      }
    case 0:
      this.Nm.setEnabled(true);
      this.Nm.setChecked(true);
      return;
    case 1:
      this.Nm.setEnabled(true);
      this.Nm.setChecked(false);
      return;
    case 2:
    }
    this.Nm.setEnabled(false);
    this.Nm.setChecked(true);
  }

  private void ja()
  {
    int i = 0;
    if ((this.Nr != null) && (this.Nq == 2))
    {
      Point localPoint = new Point();
      a(localPoint);
      localPoint.x = localPoint.y;
      int k = this.Np.length;
      int m = this.Nr.length;
      int n = 0;
      if (n < k)
      {
        Uri localUri;
        if (n < m)
        {
          localUri = this.Nr[n];
          label78: if (localUri != null)
            break label107;
          this.Np[n].setVisibility(8);
        }
        while (true)
        {
          n++;
          break;
          localUri = null;
          break label78;
          label107: this.Np[n].setLayoutParams(new LinearLayout.LayoutParams(localPoint.x, localPoint.y));
          this.Np[n].a(localUri, localPoint.y);
          this.Np[n].setVisibility(0);
        }
      }
    }
    else
    {
      int j = this.Np.length;
      while (i < j)
      {
        this.Np[i].setVisibility(8);
        i++;
      }
    }
    iX();
  }

  private static int r(int paramInt1, int paramInt2)
  {
    switch (paramInt1)
    {
    case 1:
    default:
    case 2:
      do
        return 13;
      while (paramInt2 == 2);
      return 15;
    case 0:
    }
    return 11;
  }

  private void setType(int paramInt)
  {
    int i = 0;
    int j = this.cT;
    this.LL = paramInt;
    this.cT = j;
    String str;
    label163: LinearLayout.LayoutParams localLayoutParams;
    label213: int k;
    label224: int m;
    label242: int n;
    int i1;
    if (!isInEditMode())
    {
      this.Nk.removeAllViews();
      Point localPoint = new Point();
      a(localPoint);
      this.Nm.setLayoutParams(new FrameLayout.LayoutParams(localPoint.x, localPoint.y, 17));
      b(localPoint);
      this.Nn.setLayoutParams(new FrameLayout.LayoutParams(localPoint.x, localPoint.y, 17));
      if (this.Nq != 1)
        break label449;
      bs localbs3 = this.No;
      switch (this.cT)
      {
      default:
        str = "global_count_bubble_standard";
        localbs3.d(j.T(str));
        ja();
        bs localbs1 = this.No;
        switch (this.Nq)
        {
        default:
          localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
          if (this.cT == 2)
          {
            k = 1;
            localLayoutParams.bottomMargin = k;
            if (this.cT != 2)
              break label497;
            m = 0;
            localLayoutParams.leftMargin = m;
            localbs1.setLayoutParams(localLayoutParams);
            float f = TypedValue.applyDimension(2, r(this.cT, this.Nq), getContext().getResources().getDisplayMetrics());
            this.No.Q(f);
            bs localbs2 = this.No;
            n = (int)TypedValue.applyDimension(1, 3.0F, getContext().getResources().getDisplayMetrics());
            i1 = (int)TypedValue.applyDimension(1, 5.0F, getContext().getResources().getDisplayMetrics());
            if (this.Nq != 2)
              break label503;
            label347: if ((this.cT != 2) || (this.Nq != 1))
              break label509;
            label363: localbs2.setPadding(i1, 0, 0, n);
            if ((this.cT != 2) || (this.Nq != 1))
              break label515;
            this.Nk.setOrientation(1);
            this.Nk.addView(this.No);
            this.Nk.addView(this.Nl);
          }
          break;
        case 2:
        case 1:
        }
        break;
      case 1:
      case 0:
      case 2:
      }
    }
    while (true)
    {
      requestLayout();
      return;
      str = "global_count_bubble_medium";
      break;
      str = "global_count_bubble_small";
      break;
      str = "global_count_bubble_tall";
      break;
      label449: this.No.d(null);
      break label163;
      localLayoutParams = new LinearLayout.LayoutParams(-2, -1);
      break label213;
      localLayoutParams = new LinearLayout.LayoutParams(-2, -2);
      break label213;
      k = 0;
      break label224;
      label497: m = 1;
      break label242;
      label503: i1 = 0;
      break label347;
      label509: n = 0;
      break label363;
      label515: this.Nk.setOrientation(0);
      this.Nk.addView(this.Nl);
      int i2 = this.Np.length;
      while (i < i2)
      {
        this.Nk.addView(this.Np[i]);
        i++;
      }
      this.Nk.addView(this.No);
    }
  }

  public final void iW()
  {
    setOnClickListener(new bo(this));
  }

  public final void iY()
  {
    setType(2);
    this.Nn.setVisibility(0);
    iZ();
  }

  protected void onAttachedToWindow()
  {
    super.onAttachedToWindow();
    if (this.Nb != null)
    {
      if (!this.Nb.b(this))
        this.Nb.a(this);
      if (!this.Nb.b(this))
        this.Nb.a(this);
    }
  }

  protected void onDetachedFromWindow()
  {
    super.onDetachedFromWindow();
    if (this.Nb != null)
    {
      if (this.Nb.b(this))
        this.Nb.c(this);
      if (this.Nb.b(this))
        this.Nb.c(this);
    }
  }

  public boolean performClick()
  {
    return this.Nm.performClick();
  }

  public void setOnClickListener(View.OnClickListener paramOnClickListener)
  {
    this.Nm.setOnClickListener(paramOnClickListener);
    this.No.setOnClickListener(paramOnClickListener);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.el
 * JD-Core Version:    0.6.2
 */