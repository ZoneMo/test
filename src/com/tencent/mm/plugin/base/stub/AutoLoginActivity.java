package com.tencent.mm.plugin.base.stub;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.account.SimpleLoginUI;

public abstract class AutoLoginActivity extends Activity
{
  private boolean Is()
  {
    if ((!be.uD()) || (be.uG()))
    {
      aa.w("MicroMsg.AutoLoginActivity", "not login");
      Intent localIntent = new Intent(this, getClass());
      localIntent.putExtras(getIntent());
      localIntent.addFlags(67108864);
      MMWizardActivity.b(this, new Intent(this, SimpleLoginUI.class), localIntent);
      return true;
    }
    return false;
  }

  protected abstract void a(a parama, Intent paramIntent);

  protected abstract boolean f(Intent paramIntent);

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Intent localIntent = getIntent();
    if (localIntent == null)
    {
      aa.e("MicroMsg.AutoLoginActivity", "onCreate intent is null");
      finish();
      return;
    }
    com.tencent.mm.ak.a.avr();
    aa.d("MicroMsg.AutoLoginActivity", "onCreate, intent action = " + localIntent.getAction());
    if (!f(localIntent))
    {
      aa.e("MicroMsg.AutoLoginActivity", "preLogin fail, no need to process");
      return;
    }
    if (Is())
    {
      finish();
      aa.w("MicroMsg.AutoLoginActivity", "not login, go to SimpleLogin");
      return;
    }
    be.uE();
    a(a.cNU, localIntent);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    if (paramIntent == null)
      return;
    super.onNewIntent(paramIntent);
    setIntent(paramIntent);
    int i = paramIntent.getIntExtra("wizard_activity_result_code", 0);
    aa.d("MicroMsg.AutoLoginActivity", "onNewIntent, resultCode = " + i);
    switch (i)
    {
    default:
      aa.e("MicroMsg.AutoLoginActivity", "onNewIntent, should not reach here, resultCode = " + i);
      a(a.cNV, paramIntent);
      return;
    case -1:
      a(a.cNU, paramIntent);
      return;
    case 0:
      Is();
      return;
    case 1:
    }
    a(a.cNW, paramIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.AutoLoginActivity
 * JD-Core Version:    0.6.2
 */