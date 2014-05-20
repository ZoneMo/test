package com.tencent.mm.ui.account;

import android.content.Intent;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.os.Handler;
import android.view.KeyEvent;
import android.widget.ListView;
import android.widget.ProgressBar;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.protocal.a;
import com.tencent.mm.sdk.platformtools.bc;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.account.mobile.MobileVerifyUI;
import java.util.ArrayList;
import java.util.List;
import java.util.Random;

public class RegByMobileWaitingSMSUI extends MMActivity
{
  private String bTR;
  private ProgressBar cZV;
  private String eaA;
  private ListView eyU;
  private boolean grL = false;
  private int grP = 30;
  private TextView gtg;
  private CountDownTimer gth;
  private ln gti;
  private il gtj;
  private List gtk = new ArrayList();
  String[] gtl = { "你好", "可以请你喝一杯吗？", "Здравствуйте!", "Darf ich Ihnen einen Drink ausgeben?", "Ich habe Gefühle für Dich.", "Bonjour!", "Prends soins de toi.", "?Hola! ", "Soy un ingeniero.", "Tu novio es un hombre bonito", "今日は!", "カッコいいですね", "Buona notte!", "Ayons une fête ce soir!", "Let's enjoy the holidays.", "Hello!" };
  private Drawable gtm;
  private List gtn = new ArrayList();
  private lo gto = new ig(this);

  private void goBack()
  {
    com.tencent.mm.ui.base.h.a(this, getString(n.brJ), "", getString(n.brK), getString(n.brL), new ij(this), new ik(this));
  }

  private void wa(String paramString)
  {
    try
    {
      if (this.gti != null)
      {
        this.gti.aGm();
        this.gti = null;
      }
      if (this.gth != null)
      {
        if (this.gth != null)
        {
          this.gth.cancel();
          this.gth = null;
        }
        Intent localIntent = getIntent();
        localIntent.putExtra("mobile_verify_purpose", 2);
        if ((paramString != null) && (paramString.length() > 0))
          localIntent.putExtra("MicroMsg.MobileVerifyUIIntent_sms_code", paramString);
        a(MobileVerifyUI.class, localIntent);
        finish();
      }
      return;
    }
    finally
    {
    }
  }

  protected final void FR()
  {
    int i = 0;
    this.gtg = ((TextView)findViewById(i.aPE));
    this.cZV = ((ProgressBar)findViewById(i.aPG));
    this.eyU = ((ListView)findViewById(i.aPF));
    this.grL = false;
    String str1 = getString(n.bfl);
    if (a.fxu)
      str1 = getString(n.amt) + getString(n.bdl);
    vT(str1);
    this.bTR = getIntent().getExtras().getString("bindmcontact_mobile");
    this.bTR = bc.sL(this.bTR);
    this.grP = getIntent().getIntExtra("mobileverify_countdownsec", this.grP);
    Random localRandom = new Random();
    for (int j = 0; j < this.grP; j++)
      this.gtk.add(Integer.valueOf(localRandom.nextInt(1000)));
    int k = localRandom.nextInt(1000) % this.gtn.size();
    this.gtm = ((Drawable)this.gtn.get(k));
    this.gtn.remove(k);
    a(new if(this));
    new bc();
    String str2 = "86";
    if (this.bTR.startsWith("+"))
    {
      this.bTR = this.bTR.replace("+", "");
      str2 = bc.sK(this.bTR);
      if (str2 != null)
        this.bTR = this.bTR.substring(str2.length());
    }
    String str3 = bc.aO(str2, this.bTR);
    if ((str2 != null) && (str2.length() > 0))
      this.gtg.setText("+" + str2 + " " + str3);
    String[] arrayOfString;
    while (true)
    {
      if (this.gth == null)
      {
        this.gth = new ih(this, 1000 * this.grP);
        this.cZV.setMax(this.grP);
        this.gth.start();
      }
      arrayOfString = new String[5];
      while (i < 5)
      {
        arrayOfString[i] = this.gtl[i];
        i++;
      }
      this.gtg.setText(str3);
    }
    this.gtj = new il(this, this, arrayOfString);
    this.eyU.setAdapter(this.gtj);
  }

  protected final int getLayoutId()
  {
    return k.aXw;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.gtn.add(getResources().getDrawable(com.tencent.mm.h.aeX));
    this.gtn.add(getResources().getDrawable(com.tencent.mm.h.aeY));
    this.gtn.add(getResources().getDrawable(com.tencent.mm.h.aeZ));
    this.gtn.add(getResources().getDrawable(com.tencent.mm.h.afa));
    this.gtn.add(getResources().getDrawable(com.tencent.mm.h.afb));
    this.gtn.add(getResources().getDrawable(com.tencent.mm.h.afc));
    FR();
    this.gti = new ln(this, new Handler(), this.gto);
    this.gti.aGl();
    this.eaA = b.FL();
  }

  protected void onDestroy()
  {
    if (this.gti != null)
    {
      this.gti.aGm();
      this.gti = null;
    }
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    super.onPause();
    b.id("RE200_250");
    b.ie(this.eaA);
    b.b(false, be.uv() + "," + getClass().getName() + ",RE200_250," + be.ds("RE200_250") + ",2");
  }

  protected void onResume()
  {
    super.onResume();
    b.b(true, be.uv() + "," + getClass().getName() + ",RE200_250," + be.ds("RE200_250") + ",1");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.RegByMobileWaitingSMSUI
 * JD-Core Version:    0.6.2
 */