package com.tencent.mm.ui.chatting;

import android.content.Intent;
import android.os.Bundle;
import android.widget.TextView;
import com.tencent.mm.ui.MMActivity;

public class ResourcesExceedUI extends MMActivity
{
  private TextView gRf;
  private int type = 0;

  protected final void FR()
  {
    a(new ky(this));
    this.gRf = ((TextView)findViewById(2131362491));
    switch (this.type)
    {
    default:
      return;
    case 0:
      this.gRf.setText(2131166762);
      return;
    case 2:
      this.gRf.setText(2131166763);
      return;
    case 1:
    }
    this.gRf.setText(2131166747);
  }

  protected final int getLayoutId()
  {
    return 2130903636;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    this.type = getIntent().getIntExtra("clean_view_type", 0);
    vT("");
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.chatting.ResourcesExceedUI
 * JD-Core Version:    0.6.2
 */