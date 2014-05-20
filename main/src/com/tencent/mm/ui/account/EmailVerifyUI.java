package com.tencent.mm.ui.account;

import android.app.ProgressDialog;
import android.content.Intent;
import android.os.Bundle;
import android.text.Html;
import android.view.KeyEvent;
import android.widget.Button;
import android.widget.TextView;
import android.widget.Toast;
import com.tencent.mm.i;
import com.tencent.mm.model.be;
import com.tencent.mm.modelfriend.aj;
import com.tencent.mm.n;
import com.tencent.mm.n.ac;
import com.tencent.mm.n.m;
import com.tencent.mm.n.x;
import com.tencent.mm.plugin.a.a;
import com.tencent.mm.plugin.a.b;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.base.MMAutoSwitchEditTextView;
import com.tencent.mm.ui.base.h;

public class EmailVerifyUI extends MMActivity
  implements m
{
  private ProgressDialog cIr = null;
  private String eaA;
  private TextView gpC;
  private TextView gpD;
  private MMAutoSwitchEditTextView gpE;
  private Button gpF;
  private Button gpG;
  private String gpH;
  private String gpI;
  private String gpJ;
  private boolean gpK = false;
  private String verifyCode;

  private void goBack()
  {
    b.ie(this.eaA);
    finish();
  }

  protected final void FR()
  {
    mn(n.bvp);
    this.gpC = ((TextView)findViewById(i.aOs));
    String str = getString(n.bvc);
    this.gpC.setText(Html.fromHtml(str));
    this.gpD = ((TextView)findViewById(i.arL));
    this.gpH = getIntent().getStringExtra("email_address");
    if (!cj.hX(this.gpH))
    {
      this.gpD.setText(this.gpH);
      this.gpJ = getIntent().getStringExtra("password");
      this.gpI = getIntent().getStringExtra("email_login_page");
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = this.gpH;
      arrayOfObject[1] = this.gpI;
      aa.d("MicroMsg.EmailVerifyUI", "user register:email add:[%s], password not allowed to printf, login page:[%s]", arrayOfObject);
      this.gpE = ((MMAutoSwitchEditTextView)findViewById(i.amT));
      this.gpE.a(new j(this));
      this.gpE.a(new k(this));
      this.gpG = ((Button)findViewById(i.aFX));
      this.gpG.setOnClickListener(new l(this));
      this.gpF = ((Button)findViewById(i.aDb));
      if ((!cj.hX(this.gpI)) && (!cj.hX(this.gpH)))
        break label305;
      this.gpF.setVisibility(8);
    }
    while (true)
    {
      a(new p(this));
      a(0, getString(n.bec), new q(this));
      dg(false);
      return;
      aa.w("MicroMsg.EmailVerifyUI", "email add is null or nill");
      break;
      label305: this.gpF.setVisibility(0);
      this.gpF.setOnClickListener(new o(this));
    }
  }

  public final void a(int paramInt1, int paramInt2, String paramString, x paramx)
  {
    aa.i("MicroMsg.EmailVerifyUI", "onSceneEnd: errType = " + paramInt1 + " errCode = " + paramInt2 + " errMsg = " + paramString);
    this.gpK = false;
    if ((this.cIr != null) && (this.cIr.isShowing()))
    {
      this.cIr.dismiss();
      this.cIr = null;
    }
    if (paramx.getType() != 481)
    {
      Object[] arrayOfObject3 = new Object[1];
      arrayOfObject3[0] = Integer.valueOf(paramx.getType());
      aa.b("MicroMsg.EmailVerifyUI", "error cgi type callback:[%d]", arrayOfObject3);
    }
    int i;
    label547: 
    do
      while (true)
      {
        return;
        i = ((aj)paramx).vI();
        if ((paramInt1 == 0) && (paramInt2 == 0))
        {
          if (i == 2)
          {
            b.ie("R200_900_email");
            Intent localIntent = new Intent(this, RegSetInfoUI.class);
            localIntent.putExtra("regsetinfo_ticket", ((aj)paramx).zC());
            localIntent.putExtra("regsetinfo_user", this.gpH);
            localIntent.putExtra("regsetinfo_ismobile", 3);
            localIntent.putExtra("regsetinfo_NextStyle", ((aj)paramx).zL());
            localIntent.putExtra("regsetinfo_pwd", this.gpJ);
            localIntent.putExtra("regsetinfo_bind_email", this.gpH);
            startActivity(localIntent);
            return;
          }
          if (i == 1)
          {
            b.jdMethod_if(be.uv() + "," + getClass().getName() + ",R22_resend_email_code_alert," + be.ds("R22_resend_email_code_alert") + ",3");
            h.an(this, getString(n.bvi));
            return;
          }
          aa.e("MicroMsg.EmailVerifyUI", "err opcode");
          return;
        }
        int j;
        if (a.cHT.b(this, paramInt1, paramInt2))
          j = 1;
        while (j == 0)
        {
          if (i != 2)
            break label547;
          int m = n.bvq;
          Object[] arrayOfObject2 = new Object[2];
          arrayOfObject2[0] = Integer.valueOf(paramInt1);
          arrayOfObject2[1] = Integer.valueOf(paramInt2);
          Toast.makeText(this, getString(m, arrayOfObject2), 0).show();
          return;
          switch (paramInt2)
          {
          default:
            j = 0;
            break;
          case -32:
            h.a(this, n.bvb, n.bva, null);
            b.jdMethod_if(be.uv() + "," + getClass().getName() + ",R500_260," + be.ds("R500_260") + ",3");
            j = 1;
            break;
          case -33:
            h.a(this, n.buZ, n.bva, null);
            j = 1;
            break;
          case -34:
            Toast.makeText(this, n.buY, 0).show();
            j = 1;
          }
        }
      }
    while (i != 1);
    int k = n.bvh;
    Object[] arrayOfObject1 = new Object[2];
    arrayOfObject1[0] = Integer.valueOf(paramInt1);
    arrayOfObject1[1] = Integer.valueOf(paramInt2);
    Toast.makeText(this, getString(k, arrayOfObject1), 0).show();
  }

  protected final int getLayoutId()
  {
    return com.tencent.mm.k.bbf;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
    this.eaA = b.FL();
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
    b.b(false, be.uv() + "," + getClass().getName() + ",R500_200," + be.ds("R500_200") + ",2");
  }

  protected void onResume()
  {
    super.onResume();
    be.uA().a(481, this);
    b.id("R500_200");
    b.b(true, be.uv() + "," + getClass().getName() + ",R500_200," + be.ds("R500_200") + ",1");
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.EmailVerifyUI
 * JD-Core Version:    0.6.2
 */