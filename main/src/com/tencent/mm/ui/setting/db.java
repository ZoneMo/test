package com.tencent.mm.ui.setting;

import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.Toast;
import com.tencent.mm.model.b;
import com.tencent.mm.model.be;
import com.tencent.mm.model.v;
import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.bt;
import com.tencent.mm.storage.e;
import com.tencent.mm.ui.widget.MMEditText;
import junit.framework.Assert;

final class db
  implements MenuItem.OnMenuItemClickListener
{
  db(SettingsModifyNameUI paramSettingsModifyNameUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    String str1 = SettingsModifyNameUI.a(this.hfB).getText().toString().trim();
    boolean bool;
    if (str1.length() > 0)
    {
      aa.i("MiroMsg.SettingsModifyNameUI", "Set New NickName : " + str1);
      String str2 = v.th();
      if ((str2 != null) && (str2.length() > 0))
      {
        bool = true;
        Assert.assertTrue(bool);
        be.uz().sr().set(4, str1);
        bt localbt = new bt(2, "", str1, 0, "", "", "", 0, 0, 0, "", "", "", 0, "", 0, "", 0);
        be.uz().st().a(localbt);
        this.hfB.finish();
      }
    }
    while (true)
    {
      return true;
      bool = false;
      break;
      Toast.makeText(this.hfB, 2131166002, 1).show();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.db
 * JD-Core Version:    0.6.2
 */