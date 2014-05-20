package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ae.c;
import com.tencent.mm.platformtools.au;

final class bv
  implements View.OnClickListener
{
  bv(ContactRemarkInfoModUI paramContactRemarkInfoModUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (!ContactRemarkInfoModUI.d(this.gTN))
      return;
    Intent localIntent = new Intent(this.gTN, ContactRemarkImagePreviewUI.class);
    localIntent.putExtra("Contact_User", ContactRemarkInfoModUI.e(this.gTN));
    if (!au.hX(ContactRemarkInfoModUI.f(this.gTN)));
    for (String str = c.BT().gl(ContactRemarkInfoModUI.e(this.gTN)); ; str = ContactRemarkInfoModUI.g(this.gTN))
    {
      localIntent.putExtra("remark_image_path", str);
      localIntent.putExtra("view_temp_remark_image", ContactRemarkInfoModUI.h(this.gTN));
      this.gTN.startActivityForResult(localIntent, 400);
      return;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.bv
 * JD-Core Version:    0.6.2
 */