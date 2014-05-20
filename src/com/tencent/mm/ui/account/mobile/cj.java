package com.tencent.mm.ui.account.mobile;

import android.app.ProgressDialog;
import android.content.Intent;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.c.a.cq;
import com.tencent.mm.c.a.cs;
import com.tencent.mm.c.a.ct;
import com.tencent.mm.c.a.cu;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.ai;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.c;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.sdk.b.f;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.friend.FindMContactAddUI;
import java.util.List;

public final class cj
  implements m, dq
{
  private String grN = null;
  private String grR = "";
  private int grS = 2;
  private MobileVerifyUI gwE;

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.MobileVerifyQQRegLogic", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.gwE.cIr != null)
    {
      this.gwE.cIr.dismiss();
      this.gwE.cIr = null;
    }
    if (paramx.getType() == 132)
    {
      be.uA().b(132, this);
      if ((((ai)paramx).vI() == 2) && (paramInt1 == 0) && (paramInt2 == 0))
      {
        be.uI();
        localList = c.aR(this.gwE);
        j = 0;
        if (localList != null)
        {
          k = localList.size();
          j = 0;
          if (k != 0)
            j = 1;
        }
        if ((this.grR == null) || (!this.grR.contains("1")) || (j == 0))
          break label286;
        b.ie("R300_300_QQ");
        localIntent2 = new Intent(this.gwE, FindMContactAddUI.class);
        localIntent2.addFlags(67108864);
        localIntent2.putExtra("regsetinfo_ticket", this.grN);
        localIntent2.putExtra("regsetinfo_NextStep", this.grR);
        localIntent2.putExtra("regsetinfo_NextStyle", this.grS);
        localIntent2.putExtra("login_type", 1);
        localIntent3 = com.tencent.mm.plugin.a.a.cHS.w(this.gwE);
        localIntent3.addFlags(67108864);
        MMWizardActivity.b(this.gwE, localIntent2, localIntent3);
        this.gwE.finish();
      }
    }
    label286: 
    while ((this.gwE.i(paramInt1, paramInt2, paramString)) || ((paramInt1 == 0) && (paramInt2 == 0)))
    {
      List localList;
      int j;
      int k;
      Intent localIntent2;
      Intent localIntent3;
      return;
      Intent localIntent1 = com.tencent.mm.plugin.a.a.cHS.w(this.gwE);
      localIntent1.addFlags(67108864);
      this.gwE.startActivity(localIntent1);
      this.gwE.grY = 4;
      this.gwE.finish();
      return;
    }
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
    this.grN = paramMobileVerifyUI.getIntent().getStringExtra("regsetinfo_ticket");
    this.grR = paramMobileVerifyUI.getIntent().getStringExtra("regsetinfo_NextStep");
    this.grS = paramMobileVerifyUI.getIntent().getIntExtra("regsetinfo_NextStyle", 2);
  }

  public final boolean a(dp paramdp)
  {
    switch (cm.gwG[paramdp.ordinal()])
    {
    default:
      return false;
    case 1:
      cq localcq2 = new cq();
      localcq2.bNT.context = this.gwE;
      com.tencent.mm.sdk.b.a.ayH().f(localcq2);
      String str3 = localcq2.bNU.bNV;
      ct localct2 = new ct();
      com.tencent.mm.sdk.b.a.ayH().f(localct2);
      String str4 = localct2.bNW.bNX;
      be.uA().a(132, this);
      ai localai3 = new ai(this.gwE.bTR, 2, this.gwE.grF.getText().toString().trim(), "", str3, str4);
      be.uA().d(localai3);
      MobileVerifyUI localMobileVerifyUI3 = this.gwE;
      MobileVerifyUI localMobileVerifyUI4 = this.gwE;
      this.gwE.getString(n.ber);
      localMobileVerifyUI3.cIr = h.a(localMobileVerifyUI4, this.gwE.getString(n.bfu), true, new cl(this, localai3));
      return false;
    case 2:
      be.uA().a(132, this);
      ai localai2 = new ai(this.gwE.bTR, 1, "", 0, "");
      be.uA().d(localai2);
      return false;
    case 3:
    }
    cq localcq1 = new cq();
    localcq1.bNT.context = this.gwE;
    com.tencent.mm.sdk.b.a.ayH().f(localcq1);
    String str1 = localcq1.bNU.bNV;
    ct localct1 = new ct();
    com.tencent.mm.sdk.b.a.ayH().f(localct1);
    String str2 = localct1.bNW.bNX;
    be.uA().a(132, this);
    ai localai1 = new ai(this.gwE.bTR, 2, this.gwE.grF.getText().toString().trim(), "", str1, str2);
    be.uA().d(localai1);
    MobileVerifyUI localMobileVerifyUI1 = this.gwE;
    MobileVerifyUI localMobileVerifyUI2 = this.gwE;
    this.gwE.getString(n.ber);
    localMobileVerifyUI1.cIr = h.a(localMobileVerifyUI2, this.gwE.getString(n.bfu), true, new ck(this, localai1));
    return false;
  }

  public final void start()
  {
  }

  public final void stop()
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.mobile.cj
 * JD-Core Version:    0.6.2
 */