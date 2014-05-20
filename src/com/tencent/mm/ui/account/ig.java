package com.tencent.mm.ui.account;

final class ig
  implements lo
{
  ig(RegByMobileWaitingSMSUI paramRegByMobileWaitingSMSUI)
  {
  }

  public final void aGa()
  {
    if (RegByMobileWaitingSMSUI.b(this.gtp))
    {
      RegByMobileWaitingSMSUI.c(this.gtp);
      RegByMobileWaitingSMSUI.d(this.gtp);
    }
  }

  public final void wb(String paramString)
  {
    String str = paramString.trim();
    if (!RegByMobileWaitingSMSUI.b(this.gtp))
    {
      RegByMobileWaitingSMSUI.c(this.gtp);
      RegByMobileWaitingSMSUI.a(this.gtp, str);
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.account.ig
 * JD-Core Version:    0.6.2
 */