package com.tencent.mm.ui.contact;

import android.content.Intent;
import android.os.Bundle;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.l;
import android.support.v4.app.v;
import com.tencent.mm.ui.cy;

public class AddressUI extends FragmentActivity
{
  public cy gSz;

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    l locall = w();
    if (locall.b(16908290) == null)
    {
      this.gSz = new m();
      this.gSz.setArguments(getIntent().getExtras());
      locall.x().a(16908290, this.gSz).commit();
    }
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.contact.AddressUI
 * JD-Core Version:    0.6.2
 */