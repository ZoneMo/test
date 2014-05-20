package com.tencent.mm.ui.account;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.view.View;
import android.view.View.OnClickListener;
import android.widget.Button;
import android.widget.TextView;
import com.tencent.mm.i;
import com.tencent.mm.k;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cm;
import com.tencent.mm.n;
import com.tencent.mm.pluginsdk.d;
import com.tencent.mm.pluginsdk.e;
import com.tencent.mm.protocal.GeneralControlWrapper;
import com.tencent.mm.protocal.JsapiPermissionWrapper;
import com.tencent.mm.sdk.platformtools.j;
import com.tencent.mm.sdk.platformtools.z;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.account.mobile.MobileInputUI;

@Deprecated
public class LoginSelectorUI extends MMActivity
  implements View.OnClickListener
{
  private TextView gru;
  private View grv;

  protected final void FR()
  {
    Button localButton1 = (Button)findViewById(i.aIK);
    Button localButton2 = (Button)findViewById(i.aIM);
    this.gru = ((TextView)findViewById(i.aII));
    this.grv = findViewById(i.aIJ);
    localButton1.setOnClickListener(this);
    localButton2.setOnClickListener(this);
    this.gru.setText(com.tencent.mm.plugin.a.a.cHT.t(this));
    this.grv.setOnClickListener(new dc(this));
    if (j.gcq)
    {
      com.tencent.mm.plugin.a.a.cHT.f(this);
      return;
    }
    com.tencent.mm.plugin.a.a.cHT.u(this);
  }

  protected final int getLayoutId()
  {
    return k.aZi;
  }

  public void onClick(View paramView)
  {
    boolean bool = true;
    if (i.aIK == paramView.getId())
    {
      localIntent1 = new Intent(this, MobileInputUI.class);
      localIntent1.putExtra("mobile_input_purpose", 5);
      startActivity(localIntent1);
    }
    while (i.aIM != paramView.getId())
    {
      Intent localIntent1;
      return;
    }
    if (com.tencent.mm.protocal.a.fxu)
    {
      int i = n.biM;
      Object[] arrayOfObject = new Object[2];
      arrayOfObject[0] = ("0x" + Integer.toHexString(com.tencent.mm.protocal.a.fxr));
      arrayOfObject[bool] = z.azj();
      String str = getString(i, arrayOfObject);
      Intent localIntent4 = new Intent();
      localIntent4.putExtra("rawUrl", str);
      localIntent4.putExtra("showShare", false);
      localIntent4.putExtra("show_bottom", false);
      localIntent4.putExtra("needRedirect", false);
      localIntent4.putExtra("neverGetA8Key", bool);
      localIntent4.putExtra("hardcode_jspermission", JsapiPermissionWrapper.fxC);
      localIntent4.putExtra("hardcode_general_ctrl", GeneralControlWrapper.fxz);
      com.tencent.mm.plugin.a.a.cHS.h(localIntent4, this);
      return;
    }
    if (cm.vs().vt() > 0);
    while (!bool)
    {
      Intent localIntent2 = new Intent(this, MobileInputUI.class);
      localIntent2.putExtra("mobile_input_purpose", 2);
      startActivity(localIntent2);
      return;
      bool = false;
    }
    Intent localIntent3 = new Intent(this, RegByMobileRegAIOUI.class);
    localIntent3.putExtra("login_type", 0);
    startActivity(localIntent3);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    mB(8);
    com.tencent.mm.plugin.a.a.cHT.nJ();
    be.uw();
    FR();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getAction() == 0))
    {
      Intent localIntent = com.tencent.mm.plugin.a.a.cHS.w(this);
      localIntent.addFlags(67108864);
      localIntent.putExtra("can_finish", true);
      startActivity(localIntent);
      finish();
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onResume()
  {
    super.onResume();
    be.uw();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.LoginSelectorUI
 * JD-Core Version:    0.6.2
 */