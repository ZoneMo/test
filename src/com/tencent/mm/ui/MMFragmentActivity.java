package com.tencent.mm.ui;

import android.os.Bundle;
import android.support.v7.app.ActionBarActivity;

public class MMFragmentActivity extends ActionBarActivity
{
  String className;

  protected void onCreate(Bundle paramBundle)
  {
    this.className = getClass().getName();
    fc.w(3, this.className);
    super.onCreate(paramBundle);
  }

  protected void onPause()
  {
    fc.w(2, this.className);
    super.onPause();
  }

  protected void onResume()
  {
    fc.w(1, this.className);
    super.onResume();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.MMFragmentActivity
 * JD-Core Version:    0.6.2
 */