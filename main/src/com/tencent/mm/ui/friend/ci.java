package com.tencent.mm.ui.friend;

import android.content.DialogInterface;
import android.content.DialogInterface.OnCancelListener;
import com.tencent.mm.model.be;
import com.tencent.mm.modelsimple.z;
import com.tencent.mm.n.ac;

final class ci
  implements DialogInterface.OnCancelListener
{
  ci(RecommendFriendUI paramRecommendFriendUI, z paramz)
  {
  }

  public final void onCancel(DialogInterface paramDialogInterface)
  {
    be.uA().c(this.hbX);
    this.hbV.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.friend.ci
 * JD-Core Version:    0.6.2
 */