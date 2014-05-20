package com.tencent.mm.ui;

import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.content.res.Resources;
import android.os.Bundle;
import android.support.v4.app.Fragment;
import android.support.v4.app.FragmentActivity;
import android.support.v4.app.l;
import android.view.KeyEvent;
import android.view.View;
import com.tencent.mm.sdk.platformtools.al;

public abstract class x extends Fragment
{
  public boolean glo;

  public x()
  {
    this.glo = false;
  }

  public x(boolean paramBoolean)
  {
    this.glo = paramBoolean;
  }

  public final void aEo()
  {
    if (this.glo)
      f().setResult(-1);
  }

  public final FragmentActivity f()
  {
    FragmentActivity localFragmentActivity = super.f();
    if (localFragmentActivity == null)
      localFragmentActivity = (FragmentActivity)al.azq();
    return localFragmentActivity;
  }

  public final View findViewById(int paramInt)
  {
    return getView().findViewById(paramInt);
  }

  public final void finish()
  {
    if (this.glo)
      f().finish();
    while (f() == null)
      return;
    f().w().popBackStack();
  }

  public final int getIntExtra(String paramString, int paramInt)
  {
    if ((this.glo) && (getArguments() == null))
      paramInt = f().getIntent().getIntExtra(paramString, paramInt);
    while (getArguments() == null)
      return paramInt;
    return getArguments().getInt(paramString, paramInt);
  }

  public final String getPackageName()
  {
    return f().getPackageName();
  }

  public final Resources getResources()
  {
    FragmentActivity localFragmentActivity = super.f();
    if (localFragmentActivity == null)
      return al.getContext().getResources();
    return localFragmentActivity.getResources();
  }

  public final String getStringExtra(String paramString)
  {
    if ((this.glo) && (getArguments() == null))
      return f().getIntent().getStringExtra(paramString);
    if (getArguments() != null)
      return super.getArguments().getString(paramString);
    return null;
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((paramKeyEvent.getKeyCode() == 4) && (paramKeyEvent.getAction() == 0))
    {
      finish();
      return true;
    }
    return false;
  }

  public final void r(Intent paramIntent)
  {
    if (this.glo)
    {
      f().setResult(-1);
      return;
    }
    f().setResult(-1, paramIntent);
  }

  public final void sendBroadcast(Intent paramIntent)
  {
    f().sendBroadcast(paramIntent);
  }

  public final void startActivity(Intent paramIntent)
  {
    FragmentActivity localFragmentActivity = super.f();
    if (localFragmentActivity == null)
    {
      al.getContext().startActivity(paramIntent);
      return;
    }
    localFragmentActivity.a(this, paramIntent, -1);
  }

  public final SharedPreferences vR(String paramString)
  {
    return f().getSharedPreferences(paramString, 0);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.tencent.mm.ui.x
 * JD-Core Version:    0.6.2
 */