package com.tencent.mm.ui;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.graphics.Bitmap.Config;
import android.graphics.Canvas;
import android.graphics.Matrix;
import android.os.Handler;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.View.OnClickListener;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.ImageView.ScaleType;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import android.widget.RelativeLayout;
import android.widget.RelativeLayout.LayoutParams;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.platformtools.au;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.e;
import com.tencent.mm.sdk.platformtools.z;

public class LauncherUITabView extends RelativeLayout
{
  protected int fiI = 0;
  protected az gmA;
  protected az gmB;
  protected View.OnClickListener gmC = new aw(this);
  private Handler gmD = new ax(this);
  private boolean gmq = false;
  private boolean gmr = false;
  private int gms = 0;
  private int gmt;
  private Bitmap gmu;
  private ImageView gmv;
  private Matrix gmw = new Matrix();
  private ay gmx;
  protected az gmy;
  protected az gmz;

  public LauncherUITabView(Context paramContext)
  {
    super(paramContext);
    init();
  }

  public LauncherUITabView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    init();
  }

  public LauncherUITabView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    init();
  }

  private static void a(az paramaz, String paramString)
  {
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = paramString;
    arrayOfObject[1] = Integer.valueOf(paramaz.gkk.getVisibility());
    aa.f("MicroMsg.LauncherUITabView", "update tab tips content %s, visibility:%d", arrayOfObject);
    if (au.hX(paramString))
    {
      paramaz.gkk.setVisibility(4);
      return;
    }
    paramaz.gkk.setText(paramString);
    paramaz.gkk.setVisibility(0);
  }

  private void init()
  {
    String str = z.azj();
    if ((str.equalsIgnoreCase("zh_CN")) || (str.equalsIgnoreCase("zh_TW")));
    for (boolean bool = true; ; bool = false)
    {
      this.gmq = bool;
      this.gmr = str.equalsIgnoreCase("en");
      if (this.gmq)
        this.gms = e.a(getContext(), 2.0F);
      LinearLayout localLinearLayout = new LinearLayout(getContext());
      localLinearLayout.setId(2307141);
      localLinearLayout.setOrientation(0);
      addView(localLinearLayout, new RelativeLayout.LayoutParams(-1, -2));
      aEH();
      this.gmy = c(localLinearLayout);
      this.gmA = e(localLinearLayout);
      this.gmz = d(localLinearLayout);
      this.gmB = f(localLinearLayout);
      return;
    }
  }

  protected az a(int paramInt, ViewGroup paramViewGroup)
  {
    LayoutInflater localLayoutInflater = LayoutInflater.from(getContext());
    az localaz = new az(this);
    localaz.elC = localLayoutInflater.inflate(2130903381, paramViewGroup, false);
    localaz.elC.setTag(Integer.valueOf(paramInt));
    localaz.elC.setOnClickListener(this.gmC);
    localaz.daV = ((TextView)localaz.elC.findViewById(2131362888));
    localaz.gkk = ((TextView)localaz.elC.findViewById(2131362890));
    localaz.gmI = localaz.elC.findViewById(2131362889);
    if (this.gmq)
    {
      localaz.daV.setTextSize(0, localaz.daV.getTextSize() + this.gms);
      localaz.daV.setTypeface(null, 0);
    }
    while (!this.gmr)
      return localaz;
    localaz.daV.setTypeface(null, 1);
    return localaz;
  }

  public final void a(ay paramay)
  {
    this.gmx = paramay;
  }

  protected void aEH()
  {
    this.gmv = new ImageView(getContext());
    this.gmv.setImageMatrix(this.gmw);
    this.gmv.setScaleType(ImageView.ScaleType.MATRIX);
    this.gmv.setId(2307142);
    RelativeLayout.LayoutParams localLayoutParams = new RelativeLayout.LayoutParams(-1, a.fromDPToPix(getContext(), 4));
    localLayoutParams.addRule(8, 2307141);
    addView(this.gmv, localLayoutParams);
  }

  protected void aZ(int paramInt1, int paramInt2)
  {
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(paramInt2 - paramInt1);
    aa.e("MicroMsg.LauncherUITabView", "on layout, width %d", arrayOfObject);
    this.gmt = ((paramInt2 - paramInt1) / 3);
    mv(this.gmt);
    mu(this.fiI);
  }

  public void b(int paramInt, float paramFloat)
  {
    this.gmw.setTranslate(this.gmt * (paramFloat + paramInt), 0.0F);
    this.gmv.setImageMatrix(this.gmw);
  }

  protected az c(LinearLayout paramLinearLayout)
  {
    az localaz = a(0, paramLinearLayout);
    localaz.daV.setText(2131165582);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, getResources().getDimensionPixelSize(2131558457));
    localLayoutParams.weight = 1.0F;
    paramLinearLayout.addView(localaz.elC, localLayoutParams);
    return localaz;
  }

  protected az d(LinearLayout paramLinearLayout)
  {
    az localaz = a(2, paramLinearLayout);
    localaz.daV.setText(2131165583);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, getResources().getDimensionPixelSize(2131558457));
    localLayoutParams.weight = 1.0F;
    paramLinearLayout.addView(localaz.elC, localLayoutParams);
    return localaz;
  }

  public final void db(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.gmA.gmI.setVisibility(0);
      return;
    }
    this.gmA.gmI.setVisibility(4);
  }

  protected az e(LinearLayout paramLinearLayout)
  {
    az localaz = a(1, paramLinearLayout);
    localaz.daV.setText(2131165584);
    LinearLayout.LayoutParams localLayoutParams = new LinearLayout.LayoutParams(0, getResources().getDimensionPixelSize(2131558457));
    localLayoutParams.weight = 1.0F;
    paramLinearLayout.addView(localaz.elC, localLayoutParams);
    return localaz;
  }

  protected az f(LinearLayout paramLinearLayout)
  {
    az localaz = a(3, paramLinearLayout);
    localaz.daV.setText(2131165585);
    new LinearLayout.LayoutParams(0, getResources().getDimensionPixelSize(2131558455)).weight = 1.0F;
    return localaz;
  }

  public void mu(int paramInt)
  {
    this.fiI = paramInt;
    this.gmy.daV.setTextColor(getResources().getColor(2131492915));
    this.gmz.daV.setTextColor(getResources().getColor(2131492915));
    this.gmA.daV.setTextColor(getResources().getColor(2131492915));
    switch (paramInt)
    {
    default:
      return;
    case 0:
      this.gmy.daV.setTextColor(getResources().getColor(2131492922));
      return;
    case 2:
      this.gmz.daV.setTextColor(getResources().getColor(2131492922));
      return;
    case 1:
    }
    this.gmA.daV.setTextColor(getResources().getColor(2131492922));
  }

  protected void mv(int paramInt)
  {
    Object[] arrayOfObject;
    if ((this.gmu == null) || (this.gmu.getWidth() != paramInt))
    {
      arrayOfObject = new Object[2];
      if (this.gmu != null)
        break label119;
    }
    label119: for (int i = -1; ; i = this.gmu.getWidth())
    {
      arrayOfObject[0] = Integer.valueOf(i);
      arrayOfObject[1] = Integer.valueOf(paramInt);
      aa.c("MicroMsg.LauncherUITabView", "sharp width changed, from %d to %d", arrayOfObject);
      this.gmu = Bitmap.createBitmap(paramInt, a.fromDPToPix(getContext(), 4), Bitmap.Config.ARGB_8888);
      new Canvas(this.gmu).drawColor(getResources().getColor(2131492922));
      b(this.fiI, 0.0F);
      this.gmv.setImageBitmap(this.gmu);
      return;
    }
  }

  public final void mw(int paramInt)
  {
    if (paramInt > 0)
    {
      if (paramInt > 99)
      {
        a(this.gmy, getContext().getString(2131167869));
        return;
      }
      a(this.gmy, String.valueOf(paramInt));
      return;
    }
    a(this.gmy, null);
  }

  public final void mx(int paramInt)
  {
    if (paramInt > 0)
    {
      if (paramInt > 99)
      {
        a(this.gmz, getContext().getString(2131167869));
        return;
      }
      a(this.gmz, String.valueOf(paramInt));
      return;
    }
    a(this.gmz, null);
  }

  public final void my(int paramInt)
  {
    if (paramInt > 0)
    {
      if (paramInt > 99)
      {
        a(this.gmA, getContext().getString(2131167869));
        return;
      }
      a(this.gmA, String.valueOf(paramInt));
      return;
    }
    a(this.gmA, null);
  }

  protected void onLayout(boolean paramBoolean, int paramInt1, int paramInt2, int paramInt3, int paramInt4)
  {
    super.onLayout(paramBoolean, paramInt1, paramInt2, paramInt3, paramInt4);
    aZ(paramInt1, paramInt3);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.LauncherUITabView
 * JD-Core Version:    0.6.2
 */