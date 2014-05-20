package com.tencent.mm.ui;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.base.ch;
import com.tencent.mm.ui.base.h;

public class DataTransferUI extends Activity
{
  private ch glf;
  private long startTime = 0L;

  private void q(Intent paramIntent)
  {
    boolean bool = paramIntent.getBooleanExtra("finish_data_transfer", false);
    aa.d("MicroMsg.DataTransferUI", "tryFinish, timestamp = " + System.currentTimeMillis() + ", finish = " + bool);
    if (bool)
      finish();
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    aa.d("MicroMsg.DataTransferUI", "onCreate, timestamp = " + System.currentTimeMillis());
    this.startTime = System.currentTimeMillis();
    getString(2131167675);
    this.glf = h.a(this, getString(2131167728), false, null);
    new s(this).sendEmptyMessageDelayed(0, 60000L);
    q(getIntent());
  }

  protected void onDestroy()
  {
    super.onDestroy();
    aa.d("MicroMsg.DataTransferUI", "onDestroy");
    if ((this.glf != null) && (this.glf.isShowing()))
      this.glf.dismiss();
  }

  protected void onNewIntent(Intent paramIntent)
  {
    aa.d("MicroMsg.DataTransferUI", "onNewIntent, timestamp = " + System.currentTimeMillis());
    q(paramIntent);
  }

  protected void onPause()
  {
    aa.d("MicroMsg.DataTransferUI", "edw DataTransferUI duration time = " + (System.currentTimeMillis() - this.startTime));
    super.onPause();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.DataTransferUI
 * JD-Core Version:    0.6.2
 */