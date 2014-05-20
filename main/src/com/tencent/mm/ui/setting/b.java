package com.tencent.mm.ui.setting;

import android.content.Intent;
import android.view.MenuItem;
import android.view.MenuItem.OnMenuItemClickListener;
import android.widget.EditText;
import com.tencent.mm.model.be;
import com.tencent.mm.model.co;
import com.tencent.mm.n.ac;
import com.tencent.mm.storage.au;
import com.tencent.mm.storage.az;
import com.tencent.mm.storage.e;
import com.tencent.mm.z.i;

final class b
  implements MenuItem.OnMenuItemClickListener
{
  b(EditSignatureUI paramEditSignatureUI)
  {
  }

  public final boolean onMenuItemClick(MenuItem paramMenuItem)
  {
    boolean bool = this.hdM.getIntent().getBooleanExtra("persist_signature", true);
    String str = EditSignatureUI.b(this.hdM).getText().toString().trim();
    if (bool)
    {
      co localco = co.vw();
      localco.bz(str);
      be.uz().st().a(new az(2, co.a(localco)));
      be.uA().d(new i(5));
    }
    while (true)
    {
      this.hdM.SM();
      this.hdM.finish();
      return true;
      be.uz().sr().set(12291, str);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.b
 * JD-Core Version:    0.6.2
 */