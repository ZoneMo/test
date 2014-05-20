package com.tencent.mm.ui.contact.profile;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.contact.SayHiEditUI;

final class cw
  implements View.OnClickListener
{
  cw(cv paramcv)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(NormalUserFooterPreference.b(this.gXs.gXk), SayHiEditUI.class);
    localIntent.putExtra("Contact_User", NormalUserFooterPreference.a(this.gXs.gXk).getUsername());
    localIntent.putExtra("Contact_Scene", NormalUserFooterPreference.i(this.gXs.gXk));
    NormalUserFooterPreference.b(this.gXs.gXk).startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.cw
 * JD-Core Version:    0.6.2
 */