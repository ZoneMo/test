package com.tencent.mm.ui.tools;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;

final class dq
  implements MenuItem.OnMenuItemClickListener
{
  dq(MMTextInputUI paramMMTextInputUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    this.hlx.m(MMTextInputUI.b(this.hlx).getText());
    Intent localIntent = new Intent();
    localIntent.putExtra("key_result", MMTextInputUI.b(this.hlx).getText());
    this.hlx.setResult(-1, localIntent);
    this.hlx.finish();
    return true;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.tools.dq
 * JD-Core Version:    0.6.2
 */