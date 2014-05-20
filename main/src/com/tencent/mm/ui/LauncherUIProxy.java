package com.tencent.mm.ui;

import android.os.Bundle;
import android.os.Handler;
import android.support.v7.app.ActionBar;
import android.support.v7.app.ActionBarActivity;
import com.tencent.mm.sdk.platformtools.aa;

public class LauncherUIProxy extends ActionBarActivity
{
  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
    Object[] arrayOfObject = new Object[1];
    arrayOfObject[0] = Integer.valueOf(getTaskId());
    aa.e("MicroMsg.LauncherUIProxy", "onCreate %d", arrayOfObject);
    aW().hide();
    new Handler().post(new av(this));
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.LauncherUIProxy
 * JD-Core Version:    0.6.2
 */