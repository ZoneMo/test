package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.sdk.platformtools.cj;
import java.util.List;

final class ey
  implements View.OnClickListener
{
  ey(SnsAddressUI paramSnsAddressUI)
  {
  }

  public final void onClick(View paramView)
  {
    Intent localIntent = new Intent();
    List localList = SnsAddressUI.b(this.gVF).aKV();
    if ((localList == null) || (localList.size() == 0))
    {
      this.gVF.setResult(0);
      this.gVF.finish();
    }
    localIntent.putExtra("Select_Contact", cj.a(localList, ","));
    this.gVF.setResult(-1, localIntent);
    this.gVF.finish();
    if (!this.gVF.getIntent().getBooleanExtra("stay_in_wechat", true))
      this.gVF.moveTaskToBack(true);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.ey
 * JD-Core Version:    0.6.2
 */