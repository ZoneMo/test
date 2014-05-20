package com.tencent.mm.ui.contact;

import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.g;

final class fl
  implements View.OnClickListener
{
  fl(VoipAddressUI paramVoipAddressUI)
  {
  }

  public final void onClick(View paramView)
  {
    g.a(VoipAddressUI.a(this.gVO));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.fl
 * JD-Core Version:    0.6.2
 */