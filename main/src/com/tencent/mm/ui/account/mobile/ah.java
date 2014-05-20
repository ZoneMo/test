package com.tencent.mm.ui.account.mobile;

import android.content.Intent;
import android.text.Spannable;
import android.text.Spannable.Factory;
import android.text.method.LinkMovementMethod;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;

public final class ah
  implements m, bd
{
  private int gsE = 0;
  private String gsu;
  private String gsv;
  private MobileInputUI gvT;

  private void aGp()
  {
    MobileInputUI localMobileInputUI1 = this.gvT;
    MobileInputUI localMobileInputUI2 = this.gvT;
    this.gvT.getString(n.ber);
    localMobileInputUI1.gqJ = h.a(localMobileInputUI2, this.gvT.getString(n.bvv), true, new ap(this));
    ag localag = new ag(this.gvT.gqK + this.gvT.gqL, 14, "", 0, "");
    be.uA().d(localag);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.MobileInputRegLogic", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.gvT.gqJ != null)
    {
      this.gvT.gqJ.dismiss();
      this.gvT.gqJ = null;
    }
    if (paramInt2 == -75);
    int i;
    do
    {
      h.c(this.gvT, n.bdo, n.buW);
      do
        return;
      while (paramx.getType() != 145);
      if ((paramInt2 == -41) || (paramInt2 == -59))
      {
        com.tencent.mm.d.a locala1 = com.tencent.mm.d.a.be(paramString);
        if (locala1 != null)
        {
          locala1.a(this.gvT, null, null);
          return;
        }
        h.c(this.gvT, n.bvA, n.bvB);
        return;
      }
      i = ((ag)paramx).vI();
      if (i == 12)
      {
        if ((paramInt2 == -36) || (paramInt2 == -35) || (paramInt2 == -3))
        {
          String str = ((ag)paramx).zD();
          if (!cj.hX(str))
            this.gvT.gqL = str.trim();
          this.gvT.gqL = com.tencent.mm.sdk.platformtools.bc.sL(this.gvT.gqL);
          this.gsv = (this.gvT.gqK + this.gvT.gqL);
          b.b(true, be.uv() + "," + getClass().getName() + ",R200_200," + be.ds("R200_200") + ",1");
          com.tencent.mm.d.a locala2 = com.tencent.mm.d.a.be(paramString);
          if (locala2 != null)
          {
            locala2.a(this.gvT, new an(this), new ao(this));
            return;
          }
          aGp();
          b.b(true, be.uv() + "," + getClass().getName() + ",R200_200," + be.ds("R200_200") + ",2");
          return;
        }
        if (paramInt2 == -34)
        {
          h.p(this.gvT, this.gvT.getString(n.beS), "");
          return;
        }
        MobileInputUI localMobileInputUI1 = this.gvT;
        MobileInputUI localMobileInputUI2 = this.gvT;
        int j = n.bfv;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(paramInt1);
        arrayOfObject[1] = Integer.valueOf(paramInt2);
        Toast.makeText(localMobileInputUI1, localMobileInputUI2.getString(j, arrayOfObject), 0).show();
      }
    }
    while (i != 14);
    b.ie("R200_300");
    Intent localIntent = new Intent();
    localIntent.putExtra("bindmcontact_mobile", this.gvT.gqK + " " + this.gvT.gqA.getText().toString());
    localIntent.putExtra("bindmcontact_shortmobile", this.gvT.gqL);
    localIntent.putExtra("country_name", this.gvT.cuq);
    localIntent.putExtra("couttry_code", this.gvT.cjJ);
    localIntent.putExtra("mobileverify_countdownsec", ((ag)paramx).zF());
    localIntent.putExtra("mobileverify_countdownstyle", ((ag)paramx).zG());
    localIntent.putExtra("mobileverify_fb", ((ag)paramx).zH());
    localIntent.putExtra("mobileverify_reg_qq", ((ag)paramx).zI());
    localIntent.putExtra("mobile_verify_purpose", 2);
    localIntent.setClass(this.gvT, MobileVerifyUI.class);
    this.gvT.startActivity(localIntent);
  }

  public final void a(MobileInputUI paramMobileInputUI)
  {
    this.gvT = paramMobileInputUI;
    String str1 = paramMobileInputUI.getString(n.bvK);
    if (com.tencent.mm.protocal.a.fxu)
      str1 = str1 + paramMobileInputUI.getString(n.bdl);
    paramMobileInputUI.vT(str1);
    paramMobileInputUI.dh(false);
    paramMobileInputUI.gsz.setVisibility(0);
    paramMobileInputUI.gsz.setText(n.bqe);
    paramMobileInputUI.gwf.setVisibility(0);
    if (paramMobileInputUI.gsx != null)
      paramMobileInputUI.gsx.setOnClickListener(new ai(this, paramMobileInputUI));
    String str2 = paramMobileInputUI.getString(n.bps);
    if (cj.azT())
    {
      String str6 = paramMobileInputUI.getString(n.bpt);
      Spannable localSpannable2 = Spannable.Factory.getInstance().newSpannable(str2 + "  " + str6);
      localSpannable2.setSpan(new aj(this, paramMobileInputUI), str2.length() + "  ".length(), str2.length() + str6.length() + "  ".length(), 33);
      paramMobileInputUI.gsw.setText(localSpannable2);
    }
    while (true)
    {
      paramMobileInputUI.gsw.setMovementMethod(LinkMovementMethod.getInstance());
      return;
      String str3 = paramMobileInputUI.getString(n.bpv);
      String str4 = paramMobileInputUI.getString(n.bpu);
      String str5 = paramMobileInputUI.getString(n.bdp);
      Spannable localSpannable1 = Spannable.Factory.getInstance().newSpannable(str2 + "  " + str3 + str5 + str4);
      localSpannable1.setSpan(new ak(this, paramMobileInputUI), str2.length() + "  ".length(), str2.length() + "  ".length() + str3.length(), 33);
      localSpannable1.setSpan(new al(this, paramMobileInputUI), str2.length() + str3.length() + "  ".length() + str5.length(), str2.length() + str3.length() + "  ".length() + str5.length() + str4.length(), 33);
      paramMobileInputUI.gsw.setText(localSpannable1);
    }
  }

  public final void a(bc parambc)
  {
    switch (aq.gvV[parambc.ordinal()])
    {
    default:
      return;
    case 1:
    }
    String str1 = this.gvT.gqK + this.gvT.gqL;
    if (this.gvT.gqJ != null)
    {
      aa.d("MicroMsg.MobileInputRegLogic", "already checking ");
      return;
    }
    MobileInputUI localMobileInputUI1 = this.gvT;
    MobileInputUI localMobileInputUI2 = this.gvT;
    this.gvT.getString(n.ber);
    localMobileInputUI1.gqJ = h.a(localMobileInputUI2, this.gvT.getString(n.bvv), true, new am(this));
    String str2 = this.gvT.gqA.getText().toString().trim();
    int i;
    if ((this.gsu != null) && (this.gsv != null) && (!str2.equals(this.gsu)) && (str2.equals(this.gsv)))
      i = 1;
    while (true)
    {
      ag localag = new ag(str1, 12, "", 0, "");
      localag.di(this.gsE);
      localag.dj(i);
      be.uA().d(localag);
      this.gsu = this.gvT.gqA.getText().toString().trim();
      this.gsE = (1 + this.gsE);
      return;
      if ((this.gsu != null) && (this.gsv != null) && (!this.gsv.equals(this.gsu)) && (!str2.equals(this.gsv)))
        i = 2;
      else
        i = 0;
    }
  }

  public final void start()
  {
    be.uA().a(145, this);
    b.id("R200_100");
    b.b(true, be.uv() + "," + getClass().getName() + ",R200_100," + be.ds("R200_100") + ",1");
    this.gsE = 0;
  }

  public final void stop()
  {
    be.uA().b(145, this);
    b.b(false, be.uv() + "," + getClass().getName() + ",R200_100," + be.ds("R200_100") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.ah
 * JD-Core Version:    0.6.2
 */