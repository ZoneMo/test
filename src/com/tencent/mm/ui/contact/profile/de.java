package com.tencent.mm.ui.contact.profile;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.storage.i;
import com.tencent.mm.ui.MMActivity;
import com.tencent.mm.ui.contact.SayHiEditUI;

final class de
  implements View.OnClickListener
{
  de(dd paramdd)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent(NormalUserFooterPreference.b(this.gXu.gXk), SayHiEditUI.class);
    localIntent.putExtra("Contact_User", NormalUserFooterPreference.a(this.gXu.gXk).getUsername());
    localIntent.putExtra("Contact_Scene", NormalUserFooterPreference.i(this.gXu.gXk));
    NormalUserFooterPreference.b(this.gXu.gXk).startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.profile.de
 * JD-Core Version:    0.6.2
 */