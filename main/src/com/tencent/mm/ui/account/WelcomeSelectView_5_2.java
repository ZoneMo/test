package com.tencent.mm.ui.account;

import android.content.Context;
import android.content.SharedPreferences;
import android.util.AttributeSet;
import android.view.LayoutInflater;
import android.view.View;
import android.view.animation.AccelerateDecelerateInterpolator;
import android.view.animation.TranslateAnimation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.z;
import java.util.Locale;

public class WelcomeSelectView_5_2 extends WelcomeView
{
  private Context context;
  private Button guI;
  private TextView guJ;
  private TextView guP;
  private TextView guQ;
  private ImageView guR;
  private ImageView guS;
  private LinearLayout guT;
  private LinearLayout guU;
  private TextView guV;
  private TextView guW;
  private ImageView guX;

  public WelcomeSelectView_5_2(Context paramContext)
  {
    super(paramContext);
    aD(paramContext);
  }

  public WelcomeSelectView_5_2(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    aD(paramContext);
  }

  private void aD(Context paramContext)
  {
    this.context = paramContext;
    View localView = LayoutInflater.from(paramContext).inflate(k.bca, this);
    this.guP = ((TextView)localView.findViewById(i.aRr));
    this.guQ = ((TextView)localView.findViewById(i.aRq));
    this.guI = ((Button)localView.findViewById(i.aIM));
    this.guX = ((ImageView)localView.findViewById(i.aRj));
    this.guR = ((ImageView)localView.findViewById(i.aRu));
    this.guS = ((ImageView)localView.findViewById(i.aRt));
    this.guU = ((LinearLayout)localView.findViewById(i.aRm));
    this.guT = ((LinearLayout)localView.findViewById(i.aRn));
    this.guV = ((TextView)localView.findViewById(i.aRk));
    this.guW = ((TextView)localView.findViewById(i.aRl));
    this.guJ = ((TextView)localView.findViewById(i.aRp));
    this.guJ.setText(a.cHT.t(paramContext));
    this.guJ.setOnClickListener(new lv(this));
    lw locallw = new lw(this, paramContext);
    this.guP.setOnClickListener(locallw);
    this.guQ.setOnClickListener(locallw);
    this.guI.setOnClickListener(new lx(this, paramContext));
    init();
  }

  private void init()
  {
    SharedPreferences localSharedPreferences = this.context.getSharedPreferences(al.azs(), 0);
    String str = z.b(localSharedPreferences);
    this.guJ.setText(a.cHT.t(this.context));
    if ((str != null) && (str.equals("language_default")))
      this.guJ.setText(this.context.getString(n.bpX));
    if ((str != null) && (!str.equals("language_default")))
      if (str.equals("zh_CN"))
      {
        this.guV.setVisibility(4);
        this.guW.setVisibility(4);
        this.guX.setImageResource(h.akv);
      }
    while (true)
    {
      this.guP.setText(n.bph);
      this.guQ.setText(n.bHK);
      this.guI.setText(n.bpg);
      return;
      this.guV.setVisibility(0);
      this.guW.setVisibility(0);
      this.guV.setText("voice, text, photos");
      this.guW.setText("free forever");
      this.guX.setImageResource(h.akw);
      continue;
      if (Locale.getDefault().equals(Locale.CHINA))
      {
        this.guV.setVisibility(4);
        this.guW.setVisibility(4);
        this.guX.setImageResource(h.akv);
      }
      else
      {
        this.guV.setVisibility(0);
        this.guW.setVisibility(0);
        this.guV.setText("voice, text, photos");
        this.guW.setText("free forever");
        this.guX.setImageResource(h.akw);
      }
    }
  }

  public final void aGn()
  {
    this.guU.post(new ly(this));
  }

  public final void d(View paramView, float paramFloat)
  {
    TranslateAnimation localTranslateAnimation = new TranslateAnimation(0.0F, 0.0F, 0.0F, paramFloat);
    localTranslateAnimation.setInterpolator(new AccelerateDecelerateInterpolator());
    localTranslateAnimation.setDuration(1000L);
    localTranslateAnimation.setStartOffset(0L);
    localTranslateAnimation.setAnimationListener(new lz(this, paramView, paramFloat));
    paramView.startAnimation(localTranslateAnimation);
  }

  public final void onPause()
  {
    b.id("RE100_100_new");
  }

  public final void onResume()
  {
    init();
    b.id("RE100_100_new");
    b.b(true, be.uv() + "," + getClass().getName() + ",RE100_100_new," + be.ds("RE100_100_new") + ",1");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.WelcomeSelectView_5_2
 * JD-Core Version:    0.6.2
 */