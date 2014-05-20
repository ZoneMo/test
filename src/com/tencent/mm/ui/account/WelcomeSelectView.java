package com.tencent.mm.ui.account;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.graphics.Canvas;
import android.util.AttributeSet;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.k;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.z;
import java.util.Locale;

public class WelcomeSelectView extends WelcomeView
{
  private Context context;
  private View grv;
  private View guE;
  private ImageView guF;
  private int guG = 130;
  private Button guH;
  private Button guI;
  private TextView guJ;
  private int ue = 800;

  public WelcomeSelectView(Context paramContext)
  {
    super(paramContext);
    aD(paramContext);
  }

  @TargetApi(11)
  public WelcomeSelectView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    aD(paramContext);
  }

  private void aD(Context paramContext)
  {
    this.context = paramContext;
    View localView = LayoutInflater.from(paramContext).inflate(k.bbZ, this);
    this.grv = localView.findViewById(com.tencent.mm.i.aIL);
    this.guE = localView.findViewById(com.tencent.mm.i.aRo);
    this.guF = ((ImageView)localView.findViewById(com.tencent.mm.i.aRs));
    this.guG = com.tencent.mm.an.a.fromDPToPix(paramContext, 87);
    this.guH = ((Button)localView.findViewById(com.tencent.mm.i.aIK));
    this.guI = ((Button)localView.findViewById(com.tencent.mm.i.aIM));
    this.guJ = ((TextView)localView.findViewById(com.tencent.mm.i.aRp));
    this.guF.setVisibility(8);
    this.grv.setVisibility(8);
    this.guJ.setVisibility(8);
    this.guJ.setText(com.tencent.mm.plugin.a.a.cHT.t(paramContext));
    this.ue = paramContext.getResources().getDisplayMetrics().heightPixels;
    this.guJ.setOnClickListener(new lp(this));
    this.guH.setOnClickListener(new lq(this, paramContext));
    this.guI.setOnClickListener(new lr(this, paramContext));
    init();
  }

  private void init()
  {
    SharedPreferences localSharedPreferences = this.context.getSharedPreferences(al.azs(), 0);
    String str = z.b(localSharedPreferences);
    this.guJ.setText(com.tencent.mm.plugin.a.a.cHT.t(this.context));
    if ((str != null) && (!str.equals("language_default")))
      if (str.equals("zh_CN"))
        this.guF.setImageResource(h.akx);
    while (true)
    {
      if ((str != null) && (str.equals("language_default")))
        this.guJ.setText(this.context.getString(n.bpX));
      this.guH.setText(n.bph);
      this.guI.setText(n.bpg);
      return;
      this.guF.setImageResource(h.aky);
      continue;
      if (Locale.getDefault().equals(Locale.CHINA))
        this.guF.setImageResource(h.akx);
      else
        this.guF.setImageResource(h.aky);
    }
  }

  public final void aGn()
  {
    int i = (-150 + this.ue) / 5;
    if (this.guG > i);
    while (true)
    {
      this.guG = i;
      View localView = this.guE;
      float f = -this.guG;
      TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, 0.0F, f);
      localTranslateAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
      localTranslateAnimation.setDuration(1700L);
      localTranslateAnimation.setStartOffset(0L);
      localTranslateAnimation.setAnimationListener(new ls(this, localView, f));
      localView.startAnimation(localTranslateAnimation);
      return;
      i = this.guG;
    }
  }

  protected void dispatchDraw(Canvas paramCanvas)
  {
    super.dispatchDraw(paramCanvas);
    com.tencent.mm.plugin.d.c.i.hy(15);
  }

  public final void onPause()
  {
  }

  public final void onResume()
  {
    init();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.WelcomeSelectView
 * JD-Core Version:    0.6.2
 */