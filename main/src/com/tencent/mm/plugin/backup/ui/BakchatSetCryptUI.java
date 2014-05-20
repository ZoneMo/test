package com.tencent.mm.plugin.backup.ui;

import android.content.Intent;
import android.os.Bundle;
import android.widget.Button;
import android.widget.EditText;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.MMActivity;
import java.util.ArrayList;

public class BakchatSetCryptUI extends MMActivity
{
  private static String TAG = "MicroMsg.BakchatSetCryptUI";
  private Button cNM;
  private ArrayList cNN;
  private EditText cNP;
  private EditText cNQ;

  protected final void FR()
  {
    mn(2131166076);
    a(new br(this));
    this.cNP = ((EditText)findViewById(2131362008));
    this.cNQ = ((EditText)findViewById(2131362037));
    this.cNM = ((Button)findViewById(2131362030));
    this.cNM.setOnClickListener(new bs(this));
  }

  protected final int getLayoutId()
  {
    return 2130903104;
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
 * Qualified Name:     com.tencent.mm.plugin.backup.ui.BakchatSetCryptUI
 * JD-Core Version:    0.6.2
 */