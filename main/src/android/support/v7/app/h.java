package android.support.v7.app;

import android.os.Bundle;
import android.view.Window;

final class h extends f
{
  h(ActionBarActivity paramActionBarActivity)
  {
    super(paramActionBarActivity);
  }

  public final ActionBar bb()
  {
    bg();
    return new m(this.gZ, this.gZ);
  }

  final void onCreate(Bundle paramBundle)
  {
    this.gZ.getWindow().requestFeature(10);
    super.onCreate(paramBundle);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.app.h
 * JD-Core Version:    0.6.2
 */