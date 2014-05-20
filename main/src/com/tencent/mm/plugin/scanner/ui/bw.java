package com.tencent.mm.plugin.scanner.ui;

import android.content.Intent;
import android.provider.ContactsContract.Contacts;
import com.tencent.mm.model.ct;
import com.tencent.mm.ui.base.v;

final class bw
  implements v
{
  bw(VcardContactUI paramVcardContactUI)
  {
  }

  public final void bo(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return;
    case 0:
      ct localct2 = ct.vB();
      Object[] arrayOfObject2 = new Object[1];
      arrayOfObject2[0] = Integer.valueOf(1);
      localct2.a(10238, arrayOfObject2);
      Intent localIntent2 = new Intent("android.intent.action.INSERT", ContactsContract.Contacts.CONTENT_URI);
      VcardContactUI.a(this.efy, localIntent2);
      this.efy.startActivity(localIntent2);
      return;
    case 1:
    }
    ct localct1 = ct.vB();
    Object[] arrayOfObject1 = new Object[1];
    arrayOfObject1[0] = Integer.valueOf(1);
    localct1.a(10239, arrayOfObject1);
    Intent localIntent1 = new Intent("android.intent.action.INSERT_OR_EDIT", ContactsContract.Contacts.CONTENT_URI);
    localIntent1.setType("vnd.android.cursor.item/person");
    VcardContactUI.a(this.efy, localIntent1);
    this.efy.startActivity(localIntent1);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.plugin.scanner.ui.bw
 * JD-Core Version:    0.6.2
 */