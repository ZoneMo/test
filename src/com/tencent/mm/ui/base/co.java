package com.tencent.mm.ui.base;

final class co
  implements cs
{
  co(MMRadioGroupView paramMMRadioGroupView)
  {
  }

  public final void a(MMRadioImageButton paramMMRadioImageButton)
  {
    if (MMRadioGroupView.a(this.gBA) != -1)
      MMRadioGroupView.c(this.gBA, MMRadioGroupView.a(this.gBA));
    int i = paramMMRadioImageButton.getId();
    MMRadioGroupView.a(this.gBA, paramMMRadioImageButton);
    MMRadioGroupView.d(this.gBA, i);
  }

  public final void b(MMRadioImageButton paramMMRadioImageButton)
  {
    MMRadioGroupView.e(this.gBA, paramMMRadioImageButton.getId());
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.base.co
 * JD-Core Version:    0.6.2
 */