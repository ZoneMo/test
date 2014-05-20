package com.tencent.mm.plugin.gwallet;

import android.app.Activity;
import android.content.BroadcastReceiver;
import android.content.Intent;
import android.content.IntentFilter;
import android.os.Bundle;
import com.tencent.mm.plugin.gwallet.a.b;
import com.tencent.mm.sdk.platformtools.aa;

public class GWalletUI extends Activity
{
  private b dsE = null;
  BroadcastReceiver dsL = new e(this);

  public final void aF(boolean paramBoolean)
  {
    this.dsE.a("inapp", new g(this, paramBoolean));
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.dsE.a(paramInt1, paramIntent);
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    requestWindowFeature(1);
    aa.d("MicroMsg.GWalletUI", "Creating IAB helper.");
    this.dsE = new b(this);
    aa.d("MicroMsg.GWalletUI", "Starting setup.");
    this.dsE.a(new c(this));
  }

  protected void onDestroy()
  {
    aa.d("MicroMsg.GWalletUI", "Destroying helper.");
    if (this.dsE != null)
      this.dsE.dispose();
    this.dsE = null;
    super.onDestroy();
  }

  protected void onNewIntent(Intent paramIntent)
  {
    if ("com.tencent.mm.gwallet.ACTION_QUERY_REQUEST".equals(paramIntent.getAction()))
      aF(paramIntent.getBooleanExtra("is_direct", true));
    super.onNewIntent(paramIntent);
  }

  public void onStart()
  {
    super.onStart();
    IntentFilter localIntentFilter = new IntentFilter();
    localIntentFilter.addAction("com.tencent.mm.gwallet.ACTION_CONSUME_REQUEST");
    registerReceiver(this.dsL, localIntentFilter);
  }

  protected void onStop()
  {
    super.onStop();
    unregisterReceiver(this.dsL);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.gwallet.GWalletUI
 * JD-Core Version:    0.6.2
 */