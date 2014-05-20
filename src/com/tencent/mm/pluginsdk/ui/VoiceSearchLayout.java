package com.tencent.mm.pluginsdk.ui;

import android.annotation.TargetApi;
import android.content.Context;
import android.content.res.Resources;
import android.graphics.drawable.AnimationDrawable;
import android.media.MediaPlayer;
import android.net.Uri;
import android.util.AttributeSet;
import android.view.MotionEvent;
import android.view.View;
import android.view.animation.Animation;
import android.view.animation.AnimationUtils;
import android.widget.Button;
import android.widget.LinearLayout;
import android.widget.LinearLayout.LayoutParams;
import com.tencent.mm.aj.f;
import com.tencent.mm.b;
import com.tencent.mm.compatible.audio.e;
import com.tencent.mm.h;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.m;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.ay;

public class VoiceSearchLayout extends LinearLayout
{
  private static final int[] cSw;
  private static final int[] fnq;
  private static final int[] fnr = arrayOfInt3;
  private final ay cSR = new ay(new bd(this), true);
  private boolean dus = false;
  private View fng = null;
  private bh fnh = null;
  private Button fni;
  private boolean fnj = false;
  private int fnk = 0;
  private bi fnl;
  private View fnm;
  private AnimationDrawable fnn;
  private f fno;
  private boolean fnp = false;
  private int fns = 0;
  private int fnt = 0;
  private int fnu = 0;
  private int fnv = 0;

  static
  {
    int[] arrayOfInt1 = new int[14];
    arrayOfInt1[0] = h.akf;
    arrayOfInt1[1] = h.akg;
    arrayOfInt1[2] = h.akh;
    arrayOfInt1[3] = h.aki;
    arrayOfInt1[4] = h.ajT;
    arrayOfInt1[5] = h.ajU;
    arrayOfInt1[6] = h.ajV;
    arrayOfInt1[7] = h.ajW;
    arrayOfInt1[8] = h.ajX;
    arrayOfInt1[9] = h.ajY;
    arrayOfInt1[10] = h.ajZ;
    arrayOfInt1[11] = h.aka;
    arrayOfInt1[12] = h.akb;
    arrayOfInt1[13] = h.akc;
    cSw = arrayOfInt1;
    int[] arrayOfInt2 = new int[10];
    arrayOfInt2[0] = h.akf;
    arrayOfInt2[1] = h.akf;
    arrayOfInt2[2] = h.akf;
    arrayOfInt2[3] = h.akg;
    arrayOfInt2[4] = h.akh;
    arrayOfInt2[5] = h.akg;
    arrayOfInt2[6] = h.akf;
    arrayOfInt2[7] = h.aki;
    arrayOfInt2[8] = h.akf;
    arrayOfInt2[9] = h.akf;
    fnq = arrayOfInt2;
    int[] arrayOfInt3 = new int[5];
    arrayOfInt3[0] = h.akd;
    arrayOfInt3[1] = h.ake;
    arrayOfInt3[2] = h.ake;
    arrayOfInt3[3] = h.ake;
    arrayOfInt3[4] = h.akd;
  }

  public VoiceSearchLayout(Context paramContext)
  {
    super(paramContext);
    r(paramContext);
  }

  public VoiceSearchLayout(Context paramContext, AttributeSet paramAttributeSet)
  {
    super(paramContext, paramAttributeSet);
    r(paramContext);
  }

  @TargetApi(11)
  public VoiceSearchLayout(Context paramContext, AttributeSet paramAttributeSet, int paramInt)
  {
    super(paramContext, paramAttributeSet, paramInt);
    r(paramContext);
  }

  private void cm(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      this.fni.setBackgroundResource(h.ajP);
      this.fnn = ((AnimationDrawable)this.fni.getBackground());
      if (this.fnn != null)
        this.fnn.start();
      return;
    }
    this.fni.setBackgroundResource(h.ajR);
  }

  private void cn(boolean paramBoolean)
  {
    if (paramBoolean)
    {
      aa.d("MicroMsg.VoiceSearchLayout", "pauseMusic");
      com.tencent.mm.model.be.uB().pk();
    }
    while (true)
    {
      MediaPlayer localMediaPlayer = new MediaPlayer();
      if (paramBoolean);
      try
      {
        localMediaPlayer.setDataSource(getContext(), Uri.parse("android.resource://" + getContext().getPackageName() + "/" + m.bcH));
        while (true)
        {
          localMediaPlayer.setAudioStreamType(5);
          localMediaPlayer.setOnCompletionListener(new be(this));
          localMediaPlayer.setOnErrorListener(new bf(this));
          localMediaPlayer.prepare();
          localMediaPlayer.setLooping(false);
          localMediaPlayer.start();
          return;
          pl();
          break;
          localMediaPlayer.setDataSource(getContext(), Uri.parse("android.resource://" + getContext().getPackageName() + "/" + m.bcG));
        }
      }
      catch (Exception localException)
      {
      }
    }
  }

  private static void pl()
  {
    aa.d("MicroMsg.VoiceSearchLayout", "resumeMusic");
    com.tencent.mm.model.be.uB().pl();
  }

  private void r(Context paramContext)
  {
    this.fng = inflate(paramContext, k.bbm, this);
    this.fni = ((Button)this.fng.findViewById(i.aPh));
    this.fnm = this.fng.findViewById(i.aPg);
    cm(false);
    reset();
  }

  public final void T()
  {
    aa.d("MicroMsg.VoiceSearchLayout", "doStop");
    if (this.fno != null)
      this.fno.stop();
  }

  public final void a(bh parambh)
  {
    this.fnh = parambh;
  }

  public final void a(bi parambi)
  {
    this.fnl = parambi;
  }

  public final void arK()
  {
    aa.d("MicroMsg.VoiceSearchLayout", "checkStop " + this.dus);
    if (this.dus)
    {
      arO();
      this.dus = false;
    }
  }

  public final void arL()
  {
    this.fni.setOnClickListener(new bc(this));
  }

  public final void arM()
  {
    this.fnp = true;
  }

  public final void arN()
  {
    this.fng.findViewById(i.aPf).setBackgroundResource(0);
  }

  public final void arO()
  {
    aa.d("MicroMsg.VoiceSearchLayout", "doCancel " + this.dus);
    if (this.dus)
    {
      this.dus = false;
      if (this.fnh != null)
        this.fnh.arU();
    }
    reset();
    if (getVisibility() == 0)
    {
      setVisibility(8);
      if (this.fnl != null)
        this.fnl.co(false);
    }
    pl();
    if (this.fno != null)
      this.fno.cancel();
    if (this.cSR != null)
      this.cSR.azn();
  }

  public final void arP()
  {
    this.fni.setBackgroundDrawable(null);
    this.fnm.setBackgroundDrawable(null);
    this.fnn = null;
  }

  public final void ki(int paramInt)
  {
    aa.d("MicroMsg.VoiceSearchLayout", "doStart " + this.dus);
    this.fnk = paramInt;
    this.dus = true;
    this.fnj = false;
    if (this.fnh != null)
      this.fnh.arT();
    setVisibility(0);
    this.cSR.bO(50L);
    cn(true);
    this.fnv = 0;
    this.fno = new f(new bg(this), paramInt);
    this.fno.start();
  }

  public final void kj(int paramInt)
  {
    LinearLayout.LayoutParams localLayoutParams = (LinearLayout.LayoutParams)this.fnm.getLayoutParams();
    localLayoutParams.topMargin = paramInt;
    this.fnm.setLayoutParams(localLayoutParams);
  }

  public boolean onTouchEvent(MotionEvent paramMotionEvent)
  {
    if (!this.fnj)
      arK();
    return true;
  }

  public final void reset()
  {
    this.dus = false;
    this.fnj = false;
    cm(false);
    this.dus = false;
    this.fnj = false;
    this.fni.setBackgroundResource(h.ajR);
    this.fnm.setBackgroundDrawable(getResources().getDrawable(h.ajQ));
  }

  public void setVisibility(int paramInt)
  {
    Animation localAnimation;
    bi localbi;
    if ((super.getVisibility() != paramInt) && (!this.fnp))
    {
      if (paramInt != 8)
        break label70;
      localAnimation = AnimationUtils.loadAnimation(getContext(), b.YD);
      startAnimation(localAnimation);
      super.setVisibility(paramInt);
      if (this.fnl != null)
      {
        localbi = this.fnl;
        if (paramInt != 0)
          break label84;
      }
    }
    label70: label84: for (boolean bool = true; ; bool = false)
    {
      localbi.co(bool);
      return;
      localAnimation = AnimationUtils.loadAnimation(getContext(), b.YC);
      break;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.pluginsdk.ui.VoiceSearchLayout
 * JD-Core Version:    0.6.2
 */