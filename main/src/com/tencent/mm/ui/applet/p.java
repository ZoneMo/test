package com.tencent.mm.ui.applet;

import android.content.Context;
import android.content.res.Resources;
import android.os.Handler;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.ar.a;
import com.tencent.mm.ar.e;
import com.tencent.mm.ar.f;

public final class p
{
  private View aH;
  private FrameLayout bKG;
  private WindowManager bKH;
  private WindowManager.LayoutParams bKI;
  private ViewGroup.LayoutParams bKJ;
  private ImageView cXH;
  private Context context;
  private TextView dLo;
  f gxA = new q(this);
  e gxB;
  private int gxC = 0;
  private Handler gxD = new t(this);
  private boolean gxy = false;
  private ProgressBar gxz;

  public p(Context paramContext, View paramView)
  {
    if ((this.bKG != null) && (this.bKH != null))
      return;
    a.aDD().a(this.gxA);
    this.dLo = ((TextView)paramView.findViewById(2131362255));
    this.cXH = ((ImageView)paramView.findViewById(2131361901));
    ((ImageView)paramView.findViewById(2131364022)).setOnClickListener(new r(this));
    this.gxz = ((ProgressBar)paramView.findViewById(2131364021));
    this.gxz.setVisibility(8);
    this.context = paramContext;
    this.bKI = new WindowManager.LayoutParams();
    this.bKI.height = -2;
    this.bKI.width = -2;
    this.bKH = ((WindowManager)paramContext.getSystemService("window"));
    this.bKI.x = 0;
    this.bKI.y = 0;
    this.bKI.flags = 40;
    this.bKI.type = 2002;
    this.aH = paramView;
    this.dLo.setVisibility(8);
    this.bKI.gravity = 51;
    this.bKI.format = 1;
    this.bKG = new FrameLayout(paramContext);
    this.bKG.setPadding(4, 4, 4, 4);
    this.bKJ = new ViewGroup.LayoutParams(-2, -2);
    this.bKG.addView(this.aH, this.bKJ);
    DisplayMetrics localDisplayMetrics = paramContext.getResources().getDisplayMetrics();
    this.bKG.setOnTouchListener(new s(this, localDisplayMetrics));
  }

  private void aGz()
  {
    this.dLo.setText(this.gxC);
    this.gxD.sendEmptyMessageDelayed(0, 1000L);
  }

  private void bU(Context paramContext)
  {
    this.cXH.setVisibility(0);
    this.gxz.setVisibility(4);
    boolean bool1 = this.gxy;
    boolean bool2 = false;
    if (!bool1)
      bool2 = true;
    this.gxy = bool2;
    this.cXH.setBackgroundDrawable(paramContext.getResources().getDrawable(2130839571));
    this.dLo.setVisibility(8);
  }

  public final void nA()
  {
    try
    {
      if (this.bKH != null)
      {
        if (this.bKG != null)
          this.bKH.removeView(this.bKG);
        this.bKH = null;
      }
      if (this.bKG != null)
      {
        this.bKG.removeAllViews();
        this.bKG = null;
      }
      this.aH = null;
      return;
    }
    catch (Exception localException)
    {
    }
  }

  public final void show()
  {
    this.bKH.addView(this.bKG, this.bKI);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.applet.p
 * JD-Core Version:    0.6.2
 */