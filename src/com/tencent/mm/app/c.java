package com.tencent.mm.app;

import android.app.Activity;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.SharedPreferences.Editor;
import android.content.res.AssetManager;
import android.graphics.drawable.BitmapDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup.LayoutParams;
import android.view.WindowManager;
import android.view.WindowManager.LayoutParams;
import android.widget.FrameLayout;
import android.widget.ImageView.ScaleType;
import com.tencent.mm.model.bd;
import com.tencent.mm.model.be;
import com.tencent.mm.platformtools.b;
import com.tencent.mm.plugin.d.c.i;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.al;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.chatting.InitCallBackImageView;
import com.tencent.mm.ui.chatting.InitCallBackLayout;
import java.io.IOException;
import java.util.Random;

public final class c
{
  private static c bKF;
  private View aH;
  private FrameLayout bKG;
  private WindowManager bKH;
  private WindowManager.LayoutParams bKI;
  private ViewGroup.LayoutParams bKJ;
  private boolean bKK;
  private boolean bKL;
  private BitmapDrawable bKM = null;
  public Boolean bKN = Boolean.valueOf(false);
  private final int bKO = 5;
  protected Object mLock = new Object();

  private void a(Activity paramActivity, View paramView)
  {
    if ((paramActivity instanceof Activity))
      paramActivity.setContentView(paramView);
    while ((this.bKG != null) && (this.bKH != null))
      return;
    this.bKI = new WindowManager.LayoutParams();
    this.bKI.height = -1;
    this.bKI.width = -1;
    this.bKH = ((WindowManager)paramActivity.getSystemService("window"));
    this.bKI.x = 0;
    this.bKI.y = 0;
    this.bKI.type = 2002;
    this.aH = paramView;
    this.bKI.gravity = 51;
    this.bKI.format = 1;
    this.bKG = new FrameLayout(paramActivity);
    this.bKG.setPadding(0, 0, 0, 0);
    this.bKJ = new ViewGroup.LayoutParams(-1, -1);
    this.bKG.addView(this.aH, this.bKJ);
    this.bKH.addView(this.bKG, this.bKI);
    this.bKL = true;
  }

  public static c ny()
  {
    if (bKF == null)
      bKF = new c();
    return bKF;
  }

  public final void d(Activity paramActivity)
  {
    boolean bool1 = be.uD();
    boolean bool2 = bd.cik.t("login_user_name", "").equals("");
    int i;
    d locald;
    SharedPreferences localSharedPreferences;
    label112: label120: long l;
    if ((!bool1) && (bool2))
    {
      i = 1;
      i.hx(15);
      i.hx(16);
      if (this.bKL)
        nA();
      locald = new d(this);
      localSharedPreferences = al.getContext().getSharedPreferences(al.azs(), 0);
      switch (localSharedPreferences.getInt("is_user_52_welcome_key", 0))
      {
      case 1:
      default:
        this.bKN = Boolean.valueOf(false);
        l = System.currentTimeMillis();
        if (!this.bKN.booleanValue())
          if (i != 0)
          {
            InitCallBackLayout localInitCallBackLayout2 = (InitCallBackLayout)LayoutInflater.from(paramActivity).inflate(2130903869, null);
            localInitCallBackLayout2.a(locald);
            aa.v("MicroMsg.INIT", "KEVIN initWindow  Last1: " + (System.currentTimeMillis() - l));
            a(paramActivity, localInitCallBackLayout2);
          }
        break;
      case 0:
      case 2:
      }
    }
    while (true)
    {
      aa.v("MicroMsg.INIT", "KEVIN initWindow  Last: " + (System.currentTimeMillis() - l));
      aa.v("MicroMsg.INIT", "KEVIN APPCreate to Window Show Last: " + (System.currentTimeMillis() - MMApplication.bKT));
      return;
      i = 0;
      break;
      if (!cj.Bj())
        break label120;
      if (new Random().nextInt(5) == 0)
      {
        localSharedPreferences.edit().putInt("is_user_52_welcome_key", 2).commit();
        this.bKN = Boolean.valueOf(true);
        break label120;
      }
      localSharedPreferences.edit().putInt("is_user_52_welcome_key", 1).commit();
      break label112;
      this.bKN = Boolean.valueOf(true);
      break label120;
      this.bKM = null;
      try
      {
        this.bKM = new BitmapDrawable(b.decodeStream(paramActivity.getAssets().open("resource/welcome.jpg")));
        aa.v("MicroMsg.INIT", "KEVIN BitmapFactory.decodeStream " + (System.currentTimeMillis() - l));
        label398: InitCallBackImageView localInitCallBackImageView = new InitCallBackImageView(paramActivity, locald);
        localInitCallBackImageView.setImageDrawable(this.bKM);
        localInitCallBackImageView.setScaleType(ImageView.ScaleType.CENTER_CROP);
        a(paramActivity, localInitCallBackImageView);
        if ((i != 0) || (this.bKM == null))
          continue;
        this.bKM.setCallback(null);
        this.bKM = null;
        continue;
        InitCallBackLayout localInitCallBackLayout1 = (InitCallBackLayout)LayoutInflater.from(paramActivity).inflate(2130903870, null);
        localInitCallBackLayout1.a(locald);
        aa.v("MicroMsg.INIT", "KEVIN initWindow  Last1: " + (System.currentTimeMillis() - l));
        a(paramActivity, localInitCallBackLayout1);
      }
      catch (IOException localIOException)
      {
        break label398;
      }
    }
  }

  public final void nA()
  {
    try
    {
      synchronized (this.mLock)
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
        this.bKL = false;
        label70: this.bKL = false;
        return;
      }
    }
    catch (Exception localException)
    {
      break label70;
    }
  }

  public final boolean nz()
  {
    return this.bKL;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.app.c
 * JD-Core Version:    0.6.2
 */