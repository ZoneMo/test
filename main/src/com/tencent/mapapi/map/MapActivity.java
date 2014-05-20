package com.tencent.mapapi.map;

import android.app.Activity;
import android.os.Bundle;
import java.util.ArrayList;
import java.util.List;

public abstract class MapActivity extends Activity
{
  private List Ua = new ArrayList();

  final void a(ax paramax)
  {
    this.Ua.add(paramax);
  }

  protected void onCreate(Bundle paramBundle)
  {
    super.onCreate(paramBundle);
  }

  protected void onDestroy()
  {
    super.onDestroy();
    int i = this.Ua.size();
    for (int j = 0; j < i; j++)
    {
      ax localax = (ax)this.Ua.get(0);
      if (localax != null)
      {
        localax.onDestroy();
        this.Ua.remove(0);
      }
    }
    System.gc();
  }

  protected void onPause()
  {
    super.onPause();
    int i = this.Ua.size();
    for (int j = 0; j < i; j++)
    {
      ax localax = (ax)this.Ua.get(j);
      if (localax != null)
        localax.onPause();
    }
  }

  protected void onRestart()
  {
    super.onPause();
    int i = this.Ua.size();
    for (int j = 0; j < i; j++)
    {
      ax localax = (ax)this.Ua.get(j);
      if (localax != null)
        localax.onRestart();
    }
  }

  protected void onResume()
  {
    super.onResume();
    int i = this.Ua.size();
    for (int j = 0; j < i; j++)
    {
      ax localax = (ax)this.Ua.get(j);
      if (localax != null)
        localax.onResume();
    }
  }

  protected void onStop()
  {
    super.onStop();
    int i = this.Ua.size();
    for (int j = 0; j < i; j++)
    {
      ax localax = (ax)this.Ua.get(j);
      if (localax != null)
        localax.onStop();
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mapapi.map.MapActivity
 * JD-Core Version:    0.6.2
 */