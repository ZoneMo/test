package com.tencent.mm.plugin.base.stub;

import android.content.Intent;
import android.os.Bundle;
import com.tencent.mm.sdk.modelmsg.j;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.ui.transmit.SendAppMessageWrapperUI;

final class t
  implements r
{
  t(UIEntryStub paramUIEntryStub, Bundle paramBundle, j paramj)
  {
  }

  public final void ae(boolean paramBoolean)
  {
    boolean bool = this.cOu.isFinishing();
    aa.d("MicroMsg.UIEntryStub", "onCheckEnd, isPass = " + paramBoolean + ", isFinishing = " + bool);
    if ((paramBoolean) && (!bool))
    {
      Intent localIntent = new Intent(this.cOu, SendAppMessageWrapperUI.class);
      localIntent.putExtras(this.cOv);
      localIntent.putExtra("Select_Conv_User", "weixinfile");
      localIntent.putExtra("SendAppMessageWrapper_Scene", this.cOw.bLN);
      this.cOu.startActivity(localIntent);
    }
    this.cOu.finish();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.base.stub.t
 * JD-Core Version:    0.6.2
 */