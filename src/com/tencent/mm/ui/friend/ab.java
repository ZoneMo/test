package com.tencent.mm.ui.friend;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.MMWizardActivity;
import com.tencent.mm.ui.bindmobile.BindMContactIntroUI;
import com.tencent.mm.ui.bindmobile.MobileFriendUI;

final class ab
  implements View.OnClickListener
{
  ab(FMessageConversationUI paramFMessageConversationUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (!cj.hX((String)be.uz().sr().get(6)))
    {
      Intent localIntent = new Intent(this.hbe, MobileFriendUI.class);
      this.hbe.startActivity(localIntent);
      return;
    }
    MMWizardActivity.j(this.hbe, new Intent(this.hbe, BindMContactIntroUI.class));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.ab
 * JD-Core Version:    0.6.2
 */