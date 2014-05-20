package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class dm
  implements View.OnClickListener
{
  dm(SelectContactUI paramSelectContactUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    localIntent.putStringArrayListExtra("Select_Contact", SelectContactUI.b(this.gVn).dU(true));
    this.gVn.setResult(-1, localIntent);
    this.gVn.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.dm
 * JD-Core Version:    0.6.2
 */