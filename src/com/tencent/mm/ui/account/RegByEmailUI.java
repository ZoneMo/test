package com.tencent.mm.ui.account;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.widget.CheckBox;
import android.widget.EditText;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.f;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.sdk.platformtools.u;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.MMAutoCompleteTextView;
import com.tencent.mm.ui.base.h;
import java.util.Map;
import java.util.Set;

public class RegByEmailUI extends MMActivity
  implements m
{
  private static String[] gsq;
  private String bTQ;
  private ProgressDialog cIr = null;
  private String eaA;
  private CheckBox frL;
  private String gro;
  private MMAutoCompleteTextView gsm;
  private EditText gsn;
  private String gso;
  private Map gsp;

  private void goBack()
  {
    h.a(this, n.buX, n.bva, n.bee, n.bds, new fs(this), null);
  }

  protected final void FR()
  {
    this.gsm = ((MMAutoCompleteTextView)findViewById(i.aGT));
    this.gsn = ((EditText)findViewById(i.aGZ));
    this.frL = ((CheckBox)findViewById(i.alk));
    if (!cj.hX(this.gso))
    {
      this.gsn.postDelayed(new fr(this), 500L);
      this.gsm.setText(this.gso);
    }
    if (gsq != null)
    {
      c localc = new c(this, gsq, "@");
      this.gsm.wi("@");
      this.gsm.setDropDownAnchor(i.aGU);
      this.gsm.setDropDownVerticalOffset(this.gsm.getPaddingBottom());
      this.gsm.setAdapter(localc);
    }
    findViewById(i.alj).setOnClickListener(new fv(this));
    this.frL.setOnCheckedChangeListener(new fw(this));
    a(0, getString(n.bec), new fx(this));
    dg(false);
    this.gsm.addTextChangedListener(new fy(this));
    this.gsn.addTextChangedListener(new fz(this));
    this.gsn.setOnEditorActionListener(new ga(this));
    this.gsn.setOnKeyListener(new gb(this));
    a(new gc(this));
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.RegByEmailUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    if ((this.cIr != null) && (this.cIr.isShowing()))
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if (paramx.getType() != 481)
    {
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(paramx.getType());
      aa.b("MicroMsg.RegByEmailUI", "error cgi type callback:[%d]", arrayOfObject2);
    }
    while (true)
    {
      return;
      if ((paramInt1 == 0) && (paramInt2 == 0))
      {
        b.ie("R500_200");
        Intent localIntent = new Intent(this, EmailVerifyUI.class);
        localIntent.putExtra("email_address", this.bTQ);
        localIntent.putExtra("password", this.gro);
        if ((this.gsp != null) && (!this.gsp.isEmpty()))
        {
          String[] arrayOfString = this.bTQ.split("@");
          if ((arrayOfString != null) && (arrayOfString.length == 2))
          {
            String str2 = arrayOfString[1];
            localIntent.putExtra("email_login_page", (String)this.gsp.get(str2));
          }
        }
        startActivity(localIntent);
        return;
      }
      int i;
      if (com.tencent.mm.plugin.a.a.cHT.b(this, paramInt1, paramInt2))
        i = 1;
      while (i == 0)
      {
        if (cj.hX(paramString))
          break label525;
        Map localMap = u.aL(paramString, "e");
        if ((localMap == null) || (localMap.size() <= 0))
          break label525;
        String str1 = (String)localMap.get(".e.Content");
        if (cj.hX(str1))
          break label525;
        h.p(this, str1, getString(n.bva));
        return;
        switch (paramInt2)
        {
        default:
          i = 0;
          break;
        case -7:
          b.jdMethod_if(be.uv() + "," + getClass().getName() + ",R20_email_duplicate_confirm," + be.ds("R20_email_duplicate_confirm") + ",3");
          h.a(this, n.bvk, n.bva, n.bvm, n.bvl, new fu(this), null);
          i = 1;
          break;
        case -111:
          h.c(this, n.bvd, n.bva);
          i = 1;
          break;
        case -34:
          Toast.makeText(this, n.buY, 0).show();
          i = 1;
          break;
        case -75:
          h.c(this, n.bdo, n.buW);
          i = 1;
        }
      }
    }
    label525: int j = n.bvh;
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    Toast.makeText(this, getString(j, arrayOfObject1), 0).show();
  }

  protected final int getLayoutId()
  {
    return k.aYz;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    String str = getString(n.bvj);
    if (com.tencent.mm.protocal.a.fxu)
      str = getString(n.amt) + getString(n.bdl);
    vT(str);
    com.tencent.mm.plugin.a.a.cHT.nJ();
    this.gso = f.ab(this);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = this.gso;
    aa.d("MicroMsg.RegByEmailUI", "get google account:[%s]", arrayOfObject);
    this.gsp = com.tencent.mm.plugin.accountsync.b.a.cHZ.ai(this);
    if ((this.gsp != null) && (!this.gsp.isEmpty()))
    {
      gsq = new String[this.gsp.size()];
      this.gsp.keySet().toArray(gsq);
    }
    this.eaA = b.FL();
    FR();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  protected void onPause()
  {
    super.onPause();
    be.uA().b(481, this);
    b.b(false, be.uv() + "," + getClass().getName() + ",R500_100," + be.ds("R500_100") + ",2");
  }

  protected void onResume()
  {
    super.onResume();
    be.uA().a(481, this);
    b.id("R500_100");
    b.b(true, be.uv() + "," + getClass().getName() + ",R500_100," + be.ds("R500_100") + ",1");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.RegByEmailUI
 * JD-Core Version:    0.6.2
 */