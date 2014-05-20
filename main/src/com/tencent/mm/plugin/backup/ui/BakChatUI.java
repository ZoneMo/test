package com.tencent.mm.plugin.backup.ui;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tencent.mm.plugin.backup.model.ar;
import com.tencent.mm.plugin.backup.model.d;
import com.tencent.mm.plugin.backup.model.l;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;

public class BakChatUI extends MMActivity
{
  private static String TAG = "MicroMsg.BakChatUI";
  public static int cMY = 0;
  private LinearLayout cMZ;
  private LinearLayout cNa;
  private LinearLayout cNb;
  private TextView cNc;
  private boolean cNd = false;
  private boolean cxO = false;

  private void goBack()
  {
    Intent localIntent = new Intent();
    localIntent.putExtra("downloadUin", cMY);
    setResult(10000, localIntent);
    finish();
  }

  protected final void FR()
  {
    mn(2131166015);
    a(new af(this));
    this.cMZ = ((LinearLayout)findViewById(2131362004));
    this.cNa = ((LinearLayout)findViewById(2131362005));
    this.cNb = ((LinearLayout)findViewById(2131362006));
    this.cNa.setOnClickListener(new ag(this));
    this.cNb.setOnClickListener(new ai(this));
    this.cNc = ((TextView)findViewById(2131362007));
    this.cNc.setOnClickListener(new ak(this));
  }

  protected final int getLayoutId()
  {
    return 2130903098;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    aa.d(TAG, "onCreate");
    cMY = getIntent().getIntExtra("downloadUin", 0);
    FR();
  }

  public void onDestroy()
  {
    aa.d(TAG, "onDestroy");
    super.onDestroy();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if (paramInt == 4)
    {
      goBack();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onPause()
  {
    super.onPause();
  }

  public void onResume()
  {
    super.onResume();
    this.cxO = d.Gk().GG();
    if (!this.cxO)
      this.cNd = d.Gl().GG();
    if (this.cxO)
      this.cNb.setEnabled(false);
    while (true)
    {
      if ((this.cxO) && (this.cNd))
        aa.w(TAG, "error state both uploading and downloading");
      return;
      if (this.cNd)
        this.cNa.setEnabled(false);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.BakChatUI
 * JD-Core Version:    0.6.2
 */