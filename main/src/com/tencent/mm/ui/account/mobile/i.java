package com.tencent.mm.ui.account.mobile;

import android.content.Intent;
import android.view.View;
import android.widget.Button;
import android.widget.EditText;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;

public final class i
  implements com.tencent.mm.n.m, bd
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
    localMobileInputUI1.gqJ = h.a(localMobileInputUI2, this.gvT.getString(n.bvv), true, new m(this));
    ag localag = new ag(this.gvT.gqK + this.gvT.gqL, 8, "", 0, "");
    be.uA().d(localag);
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.MobileInputForgetPwdLogic", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.gvT.gqJ != null)
    {
      this.gvT.gqJ.dismiss();
      this.gvT.gqJ = null;
    }
    if (paramInt2 == -75)
      h.c(this.gvT, n.bdo, n.buW);
    int i;
    do
    {
      do
      {
        return;
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
      }
      while (paramx.getType() != 145);
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
          b.b(true, be.uv() + "," + getClass().getName() + ",F200_200," + be.ds("F200_200") + ",1");
          com.tencent.mm.d.a locala2 = com.tencent.mm.d.a.be(paramString);
          if (locala2 != null)
          {
            locala2.a(this.gvT, new k(this), new l(this));
            return;
          }
          aGp();
          b.b(true, be.uv() + "," + getClass().getName() + ",F200_200," + be.ds("F200_200") + ",2");
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
    while ((i != 8) || (paramInt2 != 0));
    Intent localIntent = new Intent();
    localIntent.putExtra("bindmcontact_mobile", this.gvT.gqK + " " + this.gvT.gqA.getText().toString());
    localIntent.putExtra("bindmcontact_shortmobile", this.gvT.gqL);
    localIntent.putExtra("country_name", this.gvT.cuq);
    localIntent.putExtra("couttry_code", this.gvT.cjJ);
    localIntent.putExtra("mobileverify_countdownsec", ((ag)paramx).zF());
    localIntent.putExtra("mobileverify_countdownstyle", ((ag)paramx).zG());
    localIntent.putExtra("mobileverify_fb", ((ag)paramx).zH());
    localIntent.putExtra("mobileverify_reg_qq", ((ag)paramx).zI());
    localIntent.putExtra("mobile_verify_purpose", 3);
    localIntent.setClass(this.gvT, MobileVerifyUI.class);
    this.gvT.startActivity(localIntent);
  }

  public final void a(MobileInputUI paramMobileInputUI)
  {
    this.gvT = paramMobileInputUI;
    paramMobileInputUI.gqA.requestFocus();
    paramMobileInputUI.UY();
    String str = paramMobileInputUI.getString(n.bvL);
    if (com.tencent.mm.protocal.a.fxu)
      str = str + paramMobileInputUI.getString(n.bdl);
    paramMobileInputUI.vT(str);
    paramMobileInputUI.gwf.setVisibility(8);
    paramMobileInputUI.gsx.setVisibility(8);
    paramMobileInputUI.gsw.setVisibility(8);
  }

  public final void a(bc parambc)
  {
    switch (n.gvV[parambc.ordinal()])
    {
    default:
      return;
    case 1:
    }
    String str1 = this.gvT.gqK + this.gvT.gqL;
    if (this.gvT.gqJ != null)
    {
      aa.d("MicroMsg.MobileInputForgetPwdLogic", "already checking ");
      return;
    }
    MobileInputUI localMobileInputUI1 = this.gvT;
    MobileInputUI localMobileInputUI2 = this.gvT;
    this.gvT.getString(n.ber);
    localMobileInputUI1.gqJ = h.a(localMobileInputUI2, this.gvT.getString(n.bvv), true, new j(this));
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
    b.id("F200_100");
    b.b(true, be.uv() + "," + getClass().getName() + ",F200_100," + be.ds("F200_100") + ",1");
    this.gsE = 0;
  }

  public final void stop()
  {
    be.uA().b(145, this);
    b.b(false, be.uv() + "," + getClass().getName() + ",F200_100," + be.ds("F200_100") + ",2");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.i
 * JD-Core Version:    0.6.2
 */