package com.tencent.mm.ui.contact;

import com.tencent.mm.sdk.platformtools.aa;
import com.tencent.mm.sdk.platformtools.cj;
import com.tencent.mm.ui.tools.ez;

final class fh
  implements ez
{
  fh(VoipAddressUI paramVoipAddressUI)
  {
  }

  public final boolean FT()
  {
    return false;
  }

  public final void FU()
  {
  }

  public final void FV()
  {
  }

  public final void ig(String paramString)
  {
    aa.e("MicroMsg.VoipAddressUI", "onSearchBarChange  %s", new Object[] { paramString });
    String str = cj.hR(paramString.toString());
    VoipAddressUI.a(this.gVO, str);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.fh
 * JD-Core Version:    0.6.2
 */