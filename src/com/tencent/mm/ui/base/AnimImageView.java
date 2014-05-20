package com.tencent.mm.ui.base;

import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.graphics.drawable.Drawable;
import android.util.AttributeSet;
import android.view.animation.AlphaAnimation;
import android.widget.TextView;
import com.tencent.mm.an.a;
import com.tencent.mm.h;
import com.tencent.mm.ui.MMActivity;

public class AnimImageView extends TextView
{
  private MMActivity bLH;
  private boolean ckb = false;
  private boolean gyf = false;
  private AlphaAnimation gyg;
  private AnimationDrawable gyh;
  private AnimationDrawable gyi;
  private int type = 1;

  public AnimImageView(Context paramContext)
  {
    super(paramContext);
    this.bLH = ((MMActivity)paramContext);
    aGD();
  }

  public AnimImageView(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    this.bLH = ((MMActivity)paramContext);
    aGD();
  }

  public AnimImageView(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    this.bLH = ((MMActivity)paramContext);
    aGD();
  }

  public static void aGB()
  {
  }

  private void aGD()
  {
    this.gyg = new AlphaAnimation(0.1F, 1.0F);
    this.gyg.setDuration(1000L);
    this.gyg.setRepeatCount(-1);
    this.gyg.setRepeatMode(2);
    this.gyh = new AnimationDrawable();
    Drawable localDrawable1 = getResources().getDrawable(h.adh);
    localDrawable1.setBounds(0, 0, localDrawable1.getIntrinsicWidth(), localDrawable1.getIntrinsicHeight());
    this.gyh.addFrame(localDrawable1, 300);
    Drawable localDrawable2 = getResources().getDrawable(h.adi);
    localDrawable2.setBounds(0, 0, localDrawable2.getIntrinsicWidth(), localDrawable2.getIntrinsicHeight());
    this.gyh.addFrame(localDrawable2, 300);
    Drawable localDrawable3 = getResources().getDrawable(h.adj);
    localDrawable3.setBounds(0, 0, localDrawable3.getIntrinsicWidth(), localDrawable3.getIntrinsicHeight());
    this.gyh.addFrame(localDrawable3, 300);
    this.gyh.setOneShot(false);
    this.gyh.setVisible(true, true);
    this.gyi = new AnimationDrawable();
    Drawable localDrawable4 = getResources().getDrawable(h.adt);
    localDrawable4.setBounds(0, 0, localDrawable4.getIntrinsicWidth(), localDrawable4.getIntrinsicHeight());
    this.gyi.addFrame(localDrawable4, 300);
    Drawable localDrawable5 = getResources().getDrawable(h.adu);
    localDrawable5.setBounds(0, 0, localDrawable5.getIntrinsicWidth(), localDrawable5.getIntrinsicHeight());
    this.gyi.addFrame(localDrawable5, 300);
    Drawable localDrawable6 = getResources().getDrawable(h.adv);
    localDrawable6.setBounds(0, 0, localDrawable6.getIntrinsicWidth(), localDrawable6.getIntrinsicHeight());
    this.gyi.addFrame(localDrawable6, 300);
    this.gyi.setOneShot(false);
    this.gyi.setVisible(true, true);
  }

  public final void RC()
  {
    switch (this.type)
    {
    default:
    case 1:
      do
        return;
      while (this.ckb);
      this.ckb = true;
      if (this.gyf)
      {
        setCompoundDrawablesWithIntrinsicBounds(this.gyh, null, null, null);
        this.gyh.stop();
        this.gyh.start();
        return;
      }
      setCompoundDrawablesWithIntrinsicBounds(null, null, this.gyi, null);
      this.gyi.stop();
      this.gyi.start();
      return;
    case 0:
    }
    if (this.gyf)
      setBackgroundDrawable(a.k(this.bLH, h.adg));
    while (true)
    {
      setAnimation(this.gyg);
      this.gyg.startNow();
      return;
      setBackgroundDrawable(a.k(this.bLH, h.adr));
    }
  }

  public final void aGA()
  {
    if (this.gyf)
    {
      setBackgroundDrawable(a.k(this.bLH, h.adg));
      return;
    }
    setBackgroundDrawable(a.k(this.bLH, h.adr));
  }

  public final void aGC()
  {
    if ((this.gyg != null) && (this.gyg.isInitialized()))
      setAnimation(null);
    if (this.type == 1)
    {
      this.ckb = false;
      setCompoundDrawablesWithIntrinsicBounds(null, null, null, null);
      this.gyh.stop();
      this.gyi.stop();
    }
  }

  public final void dn(boolean paramBoolean)
  {
    this.gyf = paramBoolean;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.AnimImageView
 * JD-Core Version:    0.6.2
 */