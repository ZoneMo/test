package com.tencent.mm.ui.bindgooglecontact;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;

final class a
  implements View.OnClickListener
{
  a(BindGoogleContactIntroUI paramBindGoogleContactIntroUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(this.gHu, BindGoogleContactUI.class);
    localIntent.putExtra("enter_scene", BindGoogleContactIntroUI.a(this.gHu));
    this.gHu.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.bindgooglecontact.a
 * JD-Core Version:    0.6.2
 */