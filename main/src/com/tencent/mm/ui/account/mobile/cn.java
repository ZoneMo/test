package com.tencent.mm.ui.account.mobile;

import android.app.ProgressDialog;
import android.content.Intent;
import android.graphics.Bitmap.CompressFormat;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.a.c;
import com.tencent.mm.model.bd;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cm;
import com.tencent.mm.modelfriend.ag;
import com.tencent.mm.modelsimple.ad;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.pluginsdk.model.k;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.account.RegSetInfoUI;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.applet.i;
import java.io.File;

public final class cn
  implements m, dq
{
  private String grN;
  private MobileVerifyUI gwE;

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.MobileVerifyRegLogic", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.gwE.cIr != null)
    {
      this.gwE.cIr.dismiss();
      this.gwE.cIr = null;
    }
    if (paramx.getType() == 255)
    {
      be.uA().b(255, this);
      if ((paramInt1 != 0) || (paramInt2 != 0))
        this.gwE.aFR();
    }
    do
    {
      int j;
      do
      {
        do
        {
          return;
          if (paramx.getType() != 145)
            break;
          be.uA().b(145, this);
          j = ((ag)paramx).vI();
        }
        while (j != 15);
        if ((paramInt1 != 0) || (paramInt2 != 0))
          break;
      }
      while (j != 15);
      if (this.gwE.gwQ.booleanValue())
      {
        String str6 = ((ag)paramx).zC();
        be.uA().a(126, this);
        ad localad = new ad("", this.gwE.gws, this.gwE.cie, 0, "", this.gwE.bTR, str6, this.gwE.cxC, "", "", "", true, this.gwE.gwP.booleanValue());
        be.uA().d(localad);
        MobileVerifyUI localMobileVerifyUI3 = this.gwE;
        MobileVerifyUI localMobileVerifyUI4 = this.gwE;
        this.gwE.getString(n.ber);
        localMobileVerifyUI3.cIr = com.tencent.mm.ui.base.h.a(localMobileVerifyUI4, this.gwE.getString(n.bvS), true, new cp(this, localad));
        return;
      }
      b.ie("R200_900_phone");
      Intent localIntent3 = new Intent();
      localIntent3.putExtra("regsetinfo_ticket", ((ag)paramx).zC());
      localIntent3.putExtra("regsetinfo_user", this.gwE.bTR);
      localIntent3.putExtra("regsetinfo_ismobile", 1);
      localIntent3.putExtra("regsetinfo_NextControl", ((ag)paramx).zE());
      localIntent3.setClass(this.gwE, RegSetInfoUI.class);
      this.gwE.startActivity(localIntent3);
      return;
      if (paramInt2 == -212)
      {
        Intent localIntent2 = new Intent(this.gwE, MobileLoginOrForceReg.class);
        localIntent2.putExtra("ticket", ((ag)paramx).zC());
        localIntent2.putExtra("moble", this.gwE.bTR);
        localIntent2.putExtra("next_controll", ((ag)paramx).zE());
        localIntent2.putExtra("username", ((ag)paramx).getUsername());
        localIntent2.putExtra("password", ((ag)paramx).zB());
        localIntent2.putExtra("nickname", ((ag)paramx).zK());
        localIntent2.putExtra("avatar_url", ((ag)paramx).zJ());
        if (this.gwE.gwQ.booleanValue())
        {
          localIntent2.putExtra("kintent_nickname", this.gwE.cie);
          localIntent2.putExtra("kintent_password", this.gwE.gws);
          localIntent2.putExtra("kintent_hasavatar", this.gwE.gwP);
        }
        this.gwE.startActivity(localIntent2);
        return;
      }
      if (paramInt2 == -51)
      {
        com.tencent.mm.d.a locala = com.tencent.mm.d.a.be(paramString);
        if (locala != null)
        {
          locala.a(this.gwE, null, null);
          return;
        }
        com.tencent.mm.ui.base.h.c(this.gwE, n.bfw, n.anM);
        return;
        if ((paramx.getType() == 126) && (paramInt1 == 0) && (paramInt2 == 0))
        {
          String str1 = this.gwE.bTR;
          Boolean localBoolean = this.gwE.gwP;
          String str2 = this.gwE.gws;
          String str3 = this.gwE.cie;
          be.uI();
          be.P(true);
          if (localBoolean.booleanValue())
          {
            String str4 = com.tencent.mm.storage.h.ggB + "temp.avatar";
            String str5 = com.tencent.mm.storage.h.ggB + "temp.avatar.hd";
            new File(str4).renameTo(new File(str5));
            c.deleteFile(str4);
            com.tencent.mm.sdk.platformtools.h.a(str5, 96, 96, Bitmap.CompressFormat.JPEG, 90, str4, true);
            new k(this.gwE, com.tencent.mm.storage.h.ggB + "temp.avatar").a(new cu(this, paramx, str1), new cv(this, paramx, str1));
          }
          while (paramInt2 == -6)
            if (this.gwE.gof == null)
            {
              this.gwE.gof = i.a(this.gwE, n.bvU, false, ((ad)paramx).zR(), ((ad)paramx).zS(), "", new cw(this, str2, str3, paramx, localBoolean), null, new cy(this), new cz(this, str2, str3, paramx, localBoolean));
              return;
              this.grN = ((ad)paramx).Cx();
              bd.cik.s("login_user_name", str1);
              Intent localIntent1 = com.tencent.mm.plugin.a.a.cHS.w(this.gwE);
              localIntent1.addFlags(67108864);
              localIntent1.putExtra("LauncherUI.enter_from_reg", true);
              this.gwE.startActivity(localIntent1);
              b.ie("RE900_100");
              b.b(false, be.uv() + "," + getClass().getName() + ",RE200_300," + be.ds("RE200_300") + ",4");
              this.gwE.finish();
            }
            else
            {
              this.gwE.gof.b(false, ((ad)paramx).zR(), ((ad)paramx).zS(), "");
              return;
            }
        }
      }
    }
    while ((this.gwE.i(paramInt1, paramInt2, paramString)) || ((paramInt1 == 0) && (paramInt2 == 0)));
    MobileVerifyUI localMobileVerifyUI1 = this.gwE;
    MobileVerifyUI localMobileVerifyUI2 = this.gwE;
    int i = n.bfv;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    Toast.makeText(localMobileVerifyUI1, localMobileVerifyUI2.getString(i, arrayOfObject), 0).show();
  }

  public final void a(MobileVerifyUI paramMobileVerifyUI)
  {
    this.gwE = paramMobileVerifyUI;
  }

  public final boolean a(dp paramdp)
  {
    switch (cq.gwG[paramdp.ordinal()])
    {
    default:
      return false;
    case 1:
      com.tencent.mm.ui.base.h.a(this.gwE, this.gwE.getString(n.brJ), "", this.gwE.getString(n.brK), this.gwE.getString(n.brL), new cr(this), new cs(this));
      return true;
    case 2:
      be.uA().a(145, this);
      ag localag3 = new ag(this.gwE.bTR, 15, this.gwE.grF.getText().toString().trim(), 0, "");
      be.uA().d(localag3);
      MobileVerifyUI localMobileVerifyUI3 = this.gwE;
      MobileVerifyUI localMobileVerifyUI4 = this.gwE;
      this.gwE.getString(n.ber);
      localMobileVerifyUI3.cIr = com.tencent.mm.ui.base.h.a(localMobileVerifyUI4, this.gwE.getString(n.bfu), true, new ct(this, localag3));
      return false;
    case 3:
      if (cm.vs().vt() > 0)
        b.id("RE200_250");
      b.jdMethod_if(be.uv() + "," + getClass().getName() + ",R200_400," + be.ds("R200_400") + ",1");
      be.uA().a(145, this);
      ag localag2 = new ag(this.gwE.bTR, 14, "", 0, "");
      be.uA().d(localag2);
      return false;
    case 4:
    }
    b.jdMethod_if(be.uv() + "," + getClass().getName() + ",R200_350_auto," + be.ds("R200_350_auto") + ",1");
    be.uA().a(145, this);
    ag localag1 = new ag(this.gwE.bTR, 15, this.gwE.grF.getText().toString().trim(), 0, "");
    be.uA().d(localag1);
    MobileVerifyUI localMobileVerifyUI1 = this.gwE;
    MobileVerifyUI localMobileVerifyUI2 = this.gwE;
    this.gwE.getString(n.ber);
    localMobileVerifyUI1.cIr = com.tencent.mm.ui.base.h.a(localMobileVerifyUI2, this.gwE.getString(n.bfu), true, new co(this, localag1));
    return false;
  }

  public final void start()
  {
    if (cm.vs().vt() == 0)
    {
      b.id("R200_300");
      b.b(true, be.uv() + "," + getClass().getName() + ",R200_300," + be.ds("R200_300") + ",1");
      return;
    }
    b.id("RE200_250");
    b.b(true, be.uv() + "," + getClass().getName() + ",RE200_300," + be.ds("RE200_300") + ",1");
  }

  public final void stop()
  {
    if (cm.vs().vt() == 0)
    {
      int i = 2;
      if (this.gwE.grY != -1)
        i = this.gwE.grY;
      b.b(false, be.uv() + "," + getClass().getName() + ",R200_300," + be.ds("R200_300") + "," + i);
      return;
    }
    b.ie("RE900_100");
    b.b(true, be.uv() + "," + getClass().getName() + ",RE200_300," + be.ds("RE200_300") + ",1");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.cn
 * JD-Core Version:    0.6.2
 */