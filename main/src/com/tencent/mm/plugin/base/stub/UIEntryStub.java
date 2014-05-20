package com.tencent.mm.plugin.base.stub;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.booter.NotifyReceiver;
import com.tencent.mm.model.be;
import com.tencent.mm.model.cb;
import com.tencent.mm.n.ac;

public class UIEntryStub extends Activity
{
  private String bMO;
  private int cOs;
  private Intent cOt;

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    NotifyReceiver.oN();
  }

  public void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    this.cOt = paramIntent;
  }

  public void onResume()
  {
    super.onResume();
    if (this.cOt == null)
      this.cOt = getIntent();
    be.uA().d(new cb(new s(this)));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.UIEntryStub
 * JD-Core Version:    0.6.2
 */