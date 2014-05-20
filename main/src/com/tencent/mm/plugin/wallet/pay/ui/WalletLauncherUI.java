package com.tencent.mm.plugin.wallet.pay.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import com.tencent.mm.plugin.wallet.b.e;
import com.tencent.mm.plugin.wallet.b.h;
import com.tencent.mm.plugin.wallet.b.i;
import com.tencent.mm.plugin.wallet.pay.model.PayInfo;
import com.tencent.mm.sdk.platformtools.aa;

public class WalletLauncherUI extends Activity
{
  private boolean fbw = false;

  public boolean dispatchKeyEvent(KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getAction() == 0))
    {
      h.b(this, 0, new Intent());
      return true;
    }
    return super.dispatchKeyEvent(paramKeyEvent);
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
    aa.d("MicroMsg.WalletLauncerUI", "onActivityResult :  resultCode : " + paramInt2 + " requestCode: " + paramInt1 + " data : " + paramIntent);
    this.fbw = true;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    aa.v("MicroMsg.WalletLauncerUI", "onCreate");
  }

  public void onDestroy()
  {
    super.onDestroy();
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    aa.v("MicroMsg.WalletLauncerUI", "onNewIntent");
    setIntent(paramIntent);
    Bundle localBundle = getIntent().getExtras();
    if ((localBundle != null) && (localBundle.containsKey("intent_pay_end")) && (localBundle.getBoolean("intent_pay_end", false)))
    {
      aa.d("MicroMsg.WalletLauncerUI", "pay done... errCode:" + localBundle.getInt("intent_pay_end_errcode"));
      aa.d("MicroMsg.WalletLauncerUI", "pay done INTENT_PAY_APP_URL:" + localBundle.getString("intent_pay_app_url"));
      aa.d("MicroMsg.WalletLauncerUI", "pay done INTENT_PAY_END:" + localBundle.getBoolean("intent_pay_end", false));
      h.b(this, -1, getIntent());
      setResult(-1, getIntent());
    }
    while (true)
    {
      finish();
      return;
      aa.d("MicroMsg.WalletLauncerUI", "pay cancel");
      h.b(this, 0, getIntent());
      setResult(0);
    }
  }

  protected void onRestoreInstanceState(Bundle paramBundle)
  {
    super.onRestoreInstanceState(paramBundle);
    this.fbw = paramBundle.getBoolean("key_is_jump", false);
  }

  public void onResume()
  {
    aa.d("MicroMsg.WalletLauncerUI", "onResume");
    super.onResume();
    aa.d("MicroMsg.WalletLauncerUI", "Handler jump");
    if (this.fbw)
    {
      aa.d("MicroMsg.WalletLauncerUI", "pay cancel");
      h.b(this, 0, getIntent());
      finish();
      return;
    }
    if (getIntent().getBooleanExtra("intent_finish", false))
    {
      aa.d("MicroMsg.WalletLauncerUI", "ForgotPwdProcess end. so finish.");
      finish();
      return;
    }
    PayInfo localPayInfo = (PayInfo)getIntent().getParcelableExtra("key_pay_info");
    Bundle localBundle = new Bundle();
    i locali = h.m(this);
    if ((locali != null) && ((locali instanceof e)))
    {
      aa.d("MicroMsg.WalletLauncerUI", "ForgotPwdProcess start. so forwardProcess.");
      h.e(this, localBundle);
      return;
    }
    aa.d("MicroMsg.WalletLauncerUI", "payInfo = " + localPayInfo);
    if ((localPayInfo != null) && (localPayInfo.fbh != 0))
    {
      Intent localIntent = getIntent();
      localIntent.setClass(this, WalletPayUI.class);
      localIntent.putExtra("key_pay_info", localPayInfo);
      startActivityForResult(localIntent, 1);
      return;
    }
    setResult(0);
    finish();
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    paramBundle.putBoolean("key_is_jump", this.fbw);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.wallet.pay.ui.WalletLauncherUI
 * JD-Core Version:    0.6.2
 */