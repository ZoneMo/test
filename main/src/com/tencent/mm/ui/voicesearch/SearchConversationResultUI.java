package com.tencent.mm.ui.voicesearch;

import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import android.widget.ListView;
import android.widget.TextView;
import com.tencent.mm.ui.MMActivity;
import java.util.LinkedList;

public class SearchConversationResultUI extends MMActivity
{
  private TextView cYb;
  private ListView htA;
  private a htB;
  private String htC = null;
  private String username;

  protected final void FR()
  {
    this.htA = ((ListView)findViewById(2131364089));
    this.cYb = ((TextView)findViewById(2131361904));
    this.htB = new a(getApplicationContext(), new g(this));
    if (this.htB != null)
      this.htB.aB(new LinkedList());
    this.htA.setAdapter(this.htB);
    this.cYb.setVisibility(8);
    this.username = getIntent().getStringExtra("SearchConversationResult_User");
    this.htC = getIntent().getStringExtra("SearchConversationResult_Error");
    vT(getString(2131166223));
    a(new h(this));
    this.htA.setOnItemClickListener(new i(this));
    String str = this.username;
    this.cYb.setVisibility(8);
    if (this.htB != null)
      this.htB.ih(str);
  }

  protected final int getLayoutId()
  {
    return 2130903823;
  }

  public void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    FR();
  }

  public void onDestroy()
  {
    super.onDestroy();
    this.htB.closeCursor();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    return super.onKeyDown(paramInt, paramKeyEvent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.voicesearch.SearchConversationResultUI
 * JD-Core Version:    0.6.2
 */