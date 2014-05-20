package com.tencent.mm.ui.base;

import android.annotation.TargetApi;
import android.content.Context;
import android.util.AttributeSet;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.view.animation.ScaleAnimation;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.b;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.sdk.platformtools.d;

public class TalkRoomPopupNav extends LinearLayout
{
  private View dln;
  private ei gEF;
  private LinearLayout gEG;
  private LinearLayout gEH;
  private LinearLayout gEI;
  private ImageView gEJ;
  private ImageView gEK;
  private ScaleAnimation gEL;
  private Animation gEM;
  private int gEN = 0;
  private int gEO = 0;
  private ScaleAnimation gEP;
  private Animation gEQ;
  private AlphaAnimation gER;
  private AlphaAnimation gES;

  public TalkRoomPopupNav(Context paramContext)
  {
    super(paramContext);
    FR();
  }

  public TalkRoomPopupNav(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    FR();
  }

  @TargetApi(11)
  public TalkRoomPopupNav(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    FR();
  }

  private void FR()
  {
    inflate(getContext(), k.baO, this);
    this.gEG = ((LinearLayout)findViewById(i.aCq));
    this.gEH = ((LinearLayout)findViewById(i.aro));
    this.gEI = ((LinearLayout)findViewById(i.arm));
    this.dln = findViewById(i.aCo);
    this.gEJ = ((ImageView)findViewById(i.aMH));
    this.gEK = ((ImageView)findViewById(i.aMI));
    this.gEK.setVisibility(8);
    this.gEG.setOnClickListener(new dz(this));
    ((Button)findViewById(i.aoT)).setOnClickListener(new ea(this));
    ((Button)findViewById(i.aoU)).setOnClickListener(new eb(this));
    this.gEN = this.dln.getLayoutParams().height;
    this.gEO = this.gEH.getLayoutParams().height;
  }

  public final void a(ei paramei)
  {
    this.gEF = paramei;
  }

  public final void aHR()
  {
    if (this.gEL == null)
    {
      this.gEL = new ScaleAnimation(1.0F, 1.0F, 1.0F * this.gEN / this.gEO, 1.0F);
      this.gEL.setDuration(300L);
      this.gEL.setAnimationListener(new ec(this));
    }
    if (this.gEM == null)
    {
      this.gEM = AnimationUtils.loadAnimation(getContext(), b.YD);
      this.gEM.setFillAfter(true);
      this.gEM.setAnimationListener(new ed(this));
    }
    ViewGroup.LayoutParams localLayoutParams = this.dln.getLayoutParams();
    localLayoutParams.height = this.gEO;
    this.dln.setLayoutParams(localLayoutParams);
    this.dln.startAnimation(this.gEL);
    this.gEG.startAnimation(this.gEM);
    this.gEH.startAnimation(AnimationUtils.loadAnimation(getContext(), b.YC));
    this.gEH.setVisibility(0);
  }

  public final void nm(int paramInt)
  {
    if (this.dln != null)
      this.dln.setBackgroundResource(paramInt);
  }

  public final void nn(int paramInt)
  {
    if (this.gEJ != null)
      this.gEJ.setImageResource(paramInt);
  }

  public final void no(int paramInt)
  {
    if (paramInt < 0)
      if (this.gEK != null)
        this.gEK.setVisibility(8);
    while (this.gEK == null)
      return;
    this.gEK.setImageResource(paramInt);
    this.gEK.setVisibility(0);
  }

  public final void start()
  {
    if ((this.gER == null) || (this.gES == null))
    {
      this.gER = new AlphaAnimation(0.0F, 1.0F);
      this.gER.setDuration(1000L);
      this.gER.setStartOffset(0L);
      this.gES = new AlphaAnimation(1.0F, 0.0F);
      this.gES.setDuration(1000L);
      this.gES.setStartOffset(0L);
      this.gER.setAnimationListener(new eg(this));
      this.gES.setAnimationListener(new eh(this));
      this.gEK.startAnimation(this.gER);
    }
  }

  public final void stop()
  {
    if ((this.gER != null) && (this.gES != null))
    {
      d.a(this.gEK, this.gER);
      d.a(this.gEK, this.gES);
      this.gEK.clearAnimation();
      this.gER = null;
      this.gES = null;
    }
  }

  public final void wk(String paramString)
  {
    ((TextView)findViewById(i.aNI)).setText(paramString);
  }

  public final void wl(String paramString)
  {
    ((TextView)findViewById(i.aNH)).setText(paramString);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.TalkRoomPopupNav
 * JD-Core Version:    0.6.2
 */