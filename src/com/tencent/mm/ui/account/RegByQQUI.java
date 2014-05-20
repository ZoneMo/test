package com.tencent.mm.ui.account;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.Button;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.compatible.g.j;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.platformtools.ag;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.protocal.GeneralControlWrapper;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.applet.SecurityImage;
import com.tencent.mm.ui.base.h;

public class RegByQQUI extends MMActivity
  implements m
{
  private ProgressDialog cIr = null;
  private Button dLL;
  private String eaA;
  private CheckBox frL;
  private SecurityImage gof = null;
  private db gqV = new db();
  private EditText grh;
  private EditText gtx;

  private void Zz()
  {
    b.ie(this.eaA);
    SM();
    finish();
  }

  protected final void FR()
  {
    this.gtx = ((EditText)findViewById(com.tencent.mm.i.aHm));
    this.grh = ((EditText)findViewById(com.tencent.mm.i.aHl));
    this.frL = ((CheckBox)findViewById(com.tencent.mm.i.alk));
    this.dLL = ((Button)findViewById(com.tencent.mm.i.aCN));
    findViewById(com.tencent.mm.i.alj).setOnClickListener(new iq(this));
    this.frL.setOnCheckedChangeListener(new iy(this));
    findViewById(com.tencent.mm.i.ayF).setOnClickListener(new iz(this));
    this.dLL.setOnClickListener(new ja(this));
    this.dLL.setEnabled(false);
    this.gtx.addTextChangedListener(new jb(this));
    this.grh.addTextChangedListener(new jc(this));
    this.grh.setOnEditorActionListener(new jd(this));
    this.grh.setOnKeyListener(new je(this));
    a(new jf(this));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.RegByQQUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if (this.cIr != null)
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if (paramx.getType() != 380)
      return;
    this.gqV.grs = ((com.tencent.mm.modelsimple.i)paramx).BW();
    this.gqV.grp = ((com.tencent.mm.modelsimple.i)paramx).zS();
    this.gqV.grr = ((com.tencent.mm.modelsimple.i)paramx).zR();
    this.gqV.grq = ((com.tencent.mm.modelsimple.i)paramx).BX();
    this.gqV.cxs = this.gtx.getText().toString().trim();
    this.gqV.gro = this.grh.getText().toString();
    String str1 = ((com.tencent.mm.modelsimple.i)paramx).BY();
    if (paramInt2 == -6)
    {
      if (this.gof == null)
      {
        this.gof = com.tencent.mm.ui.applet.i.a(aal(), n.bvU, this.gqV.grs, this.gqV.grr, this.gqV.grp, this.gqV.grq, new it(this, paramx), null, new iv(this), this.gqV);
        return;
      }
      aa.d("MicroMsg.RegByQQUI", "imgSid:" + this.gqV.grp + " img len" + this.gqV.grr.length + " " + j.qg());
      this.gof.b(this.gqV.grs, this.gqV.grr, this.gqV.grp, this.gqV.grq);
      return;
    }
    if (paramInt2 == -75)
    {
      h.c(this, n.bdo, n.buW);
      return;
    }
    if (paramInt2 == -30)
    {
      if (com.tencent.mm.protocal.a.fxu)
      {
        Intent localIntent2 = new Intent();
        localIntent2.putExtra("rawUrl", str1);
        localIntent2.putExtra("showShare", false);
        localIntent2.putExtra("show_bottom", false);
        localIntent2.putExtra("needRedirect", false);
        localIntent2.putExtra("neverGetA8Key", true);
        localIntent2.putExtra("hardcode_jspermission", JsapiPermissionWrapper.fxC);
        localIntent2.putExtra("hardcode_general_ctrl", GeneralControlWrapper.fxz);
        com.tencent.mm.plugin.a.a.cHS.h(localIntent2, this);
        return;
      }
      String str2 = ((com.tencent.mm.modelsimple.i)paramx).zC();
      Intent localIntent3 = new Intent();
      localIntent3.putExtra("regsetinfo_binduin", this.gqV.cxs);
      localIntent3.putExtra("regsetinfo_pwd", this.gqV.gro);
      localIntent3.putExtra("regsetinfo_ismobile", 2);
      localIntent3.putExtra("regsetinfo_ticket", str2);
      localIntent3.putExtra("regsetinfo_NextControl", ((com.tencent.mm.modelsimple.i)paramx).zE());
      localIntent3.setClass(this, RegSetInfoUI.class);
      startActivity(localIntent3);
      return;
    }
    if (paramInt2 == -106)
    {
      ag.v(this, paramString);
      return;
    }
    if (paramInt2 == -212)
    {
      b.jdMethod_if(be.uv() + "," + getClass().getName() + ",L400_100_signup," + be.ds("L400_100_signup") + ",1");
      h.a(this, getString(n.bvR), "", new iw(this), new ix(this));
      return;
    }
    if ((paramInt1 == 0) && (paramInt2 == 0))
    {
      be.uI();
      Intent localIntent1 = com.tencent.mm.plugin.a.a.cHS.w(this);
      localIntent1.addFlags(67108864);
      localIntent1.putExtra("LauncherUI.enter_from_reg", true);
      startActivity(localIntent1);
      b.jdMethod_if(be.uv() + "," + getClass().getName() + ",L400_100_signup," + be.ds("L400_100_signup") + ",4");
      finish();
      return;
    }
    int i = n.bnj;
    Object[] arrayOfObject = new Object[2];
    arrayOfObject[0] = Integer.valueOf(paramInt1);
    arrayOfObject[1] = Integer.valueOf(paramInt2);
    Toast.makeText(this, getString(i, arrayOfObject), 0).show();
  }

  protected final int getLayoutId()
  {
    return k.aYA;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    String str = getString(n.bvV);
    if (com.tencent.mm.protocal.a.fxu)
      str = getString(n.amt) + getString(n.bdl);
    vT(str);
    com.tencent.mm.plugin.a.a.cHT.nJ();
    this.eaA = b.FL();
    FR();
    be.uA().a(380, this);
  }

  public void onDestroy()
  {
    be.uA().b(380, this);
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      Zz();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    super.onPause();
    b.b(false, be.uv() + "," + getClass().getName() + ",R400_100_signup," + be.ds("R400_100_signup") + ",2");
  }

  protected void onResume()
  {
    super.onResume();
    b.id("R400_100_signup");
    b.b(true, be.uv() + "," + getClass().getName() + ",R400_100_signup," + be.ds("R400_100_signup") + ",1");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.RegByQQUI
 * JD-Core Version:    0.6.2
 */