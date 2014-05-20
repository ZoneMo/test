package com.tencent.mm.plugin.backup.ui;

import android.content.Intent;
import android.os.Bundle;
import android.widget.EditText;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;

public class BakChatInputCryptUI extends MMActivity
{
  private static String TAG = "MicroMsg.BakChatInputCryptUI";
  private int cIK;
  private EditText cLP;
  private int cLQ;
  private int cLR;

  protected final void FR()
  {
    a(new b(this));
    a(0, getString(2131167694), new c(this));
    this.cLP = ((EditText)findViewById(2131362008));
  }

  protected final int getLayoutId()
  {
    return 2130903099;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    aa.d(TAG, "onCreate");
    this.cLQ = getIntent().getIntExtra("recover_svrId", 0);
    this.cIK = getIntent().getIntExtra("recover_svr_size", 0);
    this.cLR = getIntent().getIntExtra("key_hashcode", 0);
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.BakChatInputCryptUI
 * JD-Core Version:    0.6.2
 */