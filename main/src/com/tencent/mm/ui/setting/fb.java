package com.tencent.mm.ui.setting;

import android.widget.LinearLayout;

final class fb
{
  LinearLayout hgr;
  LinearLayout hgs;
  LinearLayout hgt;
  LinearLayout hgu;
  LinearLayout hgv;

  public final void xv(String paramString)
  {
    if (paramString.equals("downloading"))
    {
      this.hgr.setVisibility(0);
      this.hgs.setVisibility(8);
      this.hgt.setVisibility(8);
      this.hgu.setVisibility(8);
      this.hgv.setVisibility(8);
    }
    do
    {
      return;
      if (paramString.equals("downloaded"))
      {
        this.hgr.setVisibility(8);
        this.hgs.setVisibility(0);
        this.hgt.setVisibility(8);
        this.hgu.setVisibility(8);
        this.hgv.setVisibility(8);
        return;
      }
      if (paramString.equals("undownloaded"))
      {
        this.hgr.setVisibility(8);
        this.hgs.setVisibility(8);
        this.hgt.setVisibility(0);
        this.hgu.setVisibility(8);
        this.hgv.setVisibility(8);
        return;
      }
      if (paramString.equals("using"))
      {
        this.hgr.setVisibility(8);
        this.hgs.setVisibility(8);
        this.hgt.setVisibility(8);
        this.hgu.setVisibility(0);
        this.hgv.setVisibility(8);
        return;
      }
    }
    while (!paramString.equals("canceling"));
    this.hgr.setVisibility(8);
    this.hgs.setVisibility(8);
    this.hgt.setVisibility(8);
    this.hgu.setVisibility(8);
    this.hgv.setVisibility(0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.setting.fb
 * JD-Core Version:    0.6.2
 */