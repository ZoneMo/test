package com.tencent.mm.ui.account;

import android.app.ProgressDialog;
import android.content.DialogInterface.OnCancelListener;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.Toast;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.modelfriend.z;
import com.tencent.mm.modelsimple.f;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.ag;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.protocal.GeneralControlWrapper;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.q;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.base.h;
import com.tencent.mm.ui.base.preference.MMPreference;
import com.tencent.mm.ui.base.preference.Preference;

public class FacebookLoginUI extends MMPreference
  implements m
{
  private String bQI = "";
  private String eaA;
  private ProgressDialog gpy;
  private DialogInterface.OnCancelListener gpz;
  private com.tencent.mm.ui.a.a.e gqa;
  private com.tencent.mm.modelsimple.n gqb;

  private void aFH()
  {
    try
    {
      if (this.gqa != null)
        this.gqa.ca(this);
      label16: b.jdMethod_if(be.uv() + "," + getClass().getName() + ",L14," + be.ds("L14") + ",1");
      this.gqa = new com.tencent.mm.ui.a.a.e("290293790992170");
      this.gqa.a(this, FacebookAuthUI.gpP, new au(this, (byte)0));
      return;
    }
    catch (Exception localException)
    {
      break label16;
    }
  }

  protected final void FR()
  {
    this.gqa = new com.tencent.mm.ui.a.a.e("290293790992170");
    this.gpz = new at(this);
    aFH();
  }

  public final int Gc()
  {
    return q.bJQ;
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.FacebookLoginUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    aa.d("MicroMsg.FacebookLoginUI", "Scene Type " + paramx.getType());
    if (this.gpy != null)
    {
      this.gpy.dismiss();
      this.gpy = null;
    }
    if (!cj.ag(this))
      return;
    this.bQI = ((com.tencent.mm.modelsimple.n)paramx).BY();
    if ((paramx.getType() == 380) && (paramInt1 == 4) && ((paramInt2 == -16) || (paramInt2 == -17)))
      be.uA().d(new cb(new ar(this)));
    for (int i = 1; ; i = 0)
    {
      if ((i != 0) || ((paramInt1 == 0) && (paramInt2 == 0)))
      {
        be.uI();
        z.zu();
        ag.hP("");
        f.T(this);
        ag.a(this, new as(this));
        return;
      }
      int j;
      if (com.tencent.mm.plugin.a.a.cHT.b(aal(), paramInt1, paramInt2))
        j = 1;
      while (j == 0)
      {
        int k = com.tencent.mm.n.bmy;
        Object[] arrayOfObject = new Object[2];
        arrayOfObject[0] = Integer.valueOf(paramInt1);
        arrayOfObject[1] = Integer.valueOf(paramInt2);
        Toast.makeText(this, getString(k, arrayOfObject), 0).show();
        return;
        if (paramInt1 == 4);
        switch (paramInt2)
        {
        default:
          j = 0;
          break;
        case -1:
          if (be.uA().wS() == 6)
          {
            h.c(this, com.tencent.mm.n.bso, com.tencent.mm.n.bsn);
            j = 1;
          }
          break;
        case -4:
        case -3:
          h.c(this, com.tencent.mm.n.bjZ, com.tencent.mm.n.bpV);
          j = 1;
          break;
        case -9:
          h.c(this, com.tencent.mm.n.bpU, com.tencent.mm.n.bpV);
          j = 1;
          break;
        case -72:
          h.c(aal(), com.tencent.mm.n.bvM, com.tencent.mm.n.ber);
          j = 1;
          break;
        case -75:
          ag.af(aal());
          j = 1;
          break;
        case -7:
          h.c(aal(), com.tencent.mm.n.bkv, com.tencent.mm.n.ber);
          j = 1;
          break;
        case -30:
          if (com.tencent.mm.protocal.a.fxu)
          {
            Intent localIntent = new Intent();
            localIntent.putExtra("rawUrl", this.bQI);
            localIntent.putExtra("showShare", false);
            localIntent.putExtra("show_bottom", false);
            localIntent.putExtra("needRedirect", false);
            localIntent.putExtra("neverGetA8Key", true);
            localIntent.putExtra("hardcode_jspermission", JsapiPermissionWrapper.fxC);
            localIntent.putExtra("hardcode_general_ctrl", GeneralControlWrapper.fxz);
            com.tencent.mm.plugin.a.a.cHS.h(localIntent, this);
          }
          j = 1;
        }
      }
      break;
    }
  }

  public final boolean a(com.tencent.mm.ui.base.preference.n paramn, Preference paramPreference)
  {
    String str = paramPreference.getKey();
    if (str == null)
    {
      aa.e("MicroMsg.FacebookLoginUI", "onPreferenceTreeClick, key is null");
      return true;
    }
    if (str.equals("facebook_auth_bind_btn"))
    {
      aFH();
      return true;
    }
    return false;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.gqa.c(paramInt1, paramInt2, paramIntent);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mn(com.tencent.mm.n.amt);
    com.tencent.mm.plugin.a.a.cHT.nJ();
    this.eaA = b.FL();
    FR();
    be.uA().a(380, this);
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      b.ie(this.eaA);
      finish();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    super.onPause();
    b.b(false, be.uv() + "," + getClass().getName() + ",L100_200_FB," + be.ds("L100_200_FB") + ",2");
  }

  protected void onResume()
  {
    super.onResume();
    b.id("L100_200_FB");
    b.b(true, be.uv() + "," + getClass().getName() + ",L100_200_FB," + be.ds("L100_200_FB") + ",1");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.FacebookLoginUI
 * JD-Core Version:    0.6.2
 */