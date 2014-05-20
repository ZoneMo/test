package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.view.View;
import android.view.View.OnClickListener;
import com.tencent.mm.ae.c;

final class cf
  implements View.OnClickListener
{
  cf(ContactRemarkInfoViewUI paramContactRemarkInfoViewUI)
  {
  }

  public final void onClick(View paramView)
  {
    if (!ContactRemarkInfoViewUI.a(this.gTV))
      return;
    Intent localIntent = new Intent(this.gTV, ContactRemarkImagePreviewUI.class);
    localIntent.putExtra("Contact_User", ContactRemarkInfoViewUI.b(this.gTV));
    localIntent.putExtra("remark_image_path", c.BT().gl(ContactRemarkInfoViewUI.b(this.gTV)));
    localIntent.putExtra("view_only", true);
    this.gTV.startActivity(localIntent);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.cf
 * JD-Core Version:    0.6.2
 */