package com.tencent.mm.plugin.backup.ui;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;
import java.util.ArrayList;

public class BakchatSelcetCryptUI extends MMActivity
{
  private static String TAG = "MicroMsg.BakchatSelcetCryptUI";
  private Button cNL;
  private Button cNM;
  private ArrayList cNN;

  protected final void FR()
  {
    mn(2131166076);
    a(new bo(this));
    this.cNL = ((Button)findViewById(2131362029));
    this.cNM = ((Button)findViewById(2131362030));
    this.cNL.setOnClickListener(new bp(this));
    this.cNM.setOnClickListener(new bq(this));
  }

  protected final int getLayoutId()
  {
    return 2130903102;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    aa.d(TAG, "onCreate");
    this.cNN = getIntent().getStringArrayListExtra("bak_usernames_list");
    FR();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.BakchatSelcetCryptUI
 * JD-Core Version:    0.6.2
 */