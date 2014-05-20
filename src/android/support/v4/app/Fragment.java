package android.support.v4.app;

import android.app.Activity;
import android.content.ComponentCallbacks;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Bundle;
import android.os.Parcelable;
import android.support.v4.c.a;
import android.util.SparseArray;
import android.view.ContextMenu;
import android.view.ContextMenu.ContextMenuInfo;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.View.OnCreateContextMenuListener;
import android.view.ViewGroup;
import android.view.animation.Animation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.HashMap;

public class Fragment
  implements ComponentCallbacks, View.OnCreateContextMenuListener
{
  private static final HashMap aa = new HashMap();
  int K = -1;
  boolean aA;
  boolean aB;
  boolean aC;
  boolean aD = true;
  boolean aE;
  int aF;
  ViewGroup aG;
  View aH;
  View aI;
  boolean aJ;
  boolean aK = true;
  y aL;
  boolean aM;
  boolean aN;
  View ab;
  int ac;
  Bundle ad;
  SparseArray ae;
  String af;
  Bundle ag;
  Fragment ah;
  int ai = -1;
  int aj;
  boolean ak;
  boolean al;
  boolean am;
  boolean an;
  boolean ao;
  boolean ap;
  int aq;
  m ar;
  FragmentActivity as;
  m at;
  Fragment au;
  int av;
  int aw;
  String ax;
  boolean ay;
  boolean az;
  int mState = 0;

  public static Fragment a(Context paramContext, String paramString)
  {
    return a(paramContext, paramString, null);
  }

  public static Fragment a(Context paramContext, String paramString, Bundle paramBundle)
  {
    try
    {
      Class localClass = (Class)aa.get(paramString);
      if (localClass == null)
      {
        localClass = paramContext.getClassLoader().loadClass(paramString);
        aa.put(paramString, localClass);
      }
      Fragment localFragment = (Fragment)localClass.newInstance();
      if (paramBundle != null)
      {
        paramBundle.setClassLoader(localFragment.getClass().getClassLoader());
        localFragment.ag = paramBundle;
      }
      return localFragment;
    }
    catch (ClassNotFoundException localClassNotFoundException)
    {
      throw new e("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", localClassNotFoundException);
    }
    catch (InstantiationException localInstantiationException)
    {
      throw new e("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", localInstantiationException);
    }
    catch (IllegalAccessException localIllegalAccessException)
    {
      throw new e("Unable to instantiate fragment " + paramString + ": make sure class name exists, is public, and has an empty constructor that is public", localIllegalAccessException);
    }
  }

  public static Animation i()
  {
    return null;
  }

  public static void j()
  {
  }

  public static void onDestroyOptionsMenu()
  {
  }

  public View a(LayoutInflater paramLayoutInflater)
  {
    return null;
  }

  public final void a(Intent paramIntent)
  {
    if (this.as == null)
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    this.as.a(this, paramIntent, 4);
  }

  final void a(Configuration paramConfiguration)
  {
    onConfigurationChanged(paramConfiguration);
    if (this.at != null)
      this.at.dispatchConfigurationChanged(paramConfiguration);
  }

  final void a(Bundle paramBundle)
  {
    if (this.at != null)
      this.at.F();
    this.aE = false;
    onCreate(paramBundle);
    if (!this.aE)
      throw new af("Fragment " + this + " did not call through to super.onCreate()");
    if (paramBundle != null)
    {
      Parcelable localParcelable = paramBundle.getParcelable("android:support:fragments");
      if (localParcelable != null)
      {
        if (this.at == null)
        {
          this.at = new m();
          this.at.a(this.as, new d(this), this);
        }
        this.at.a(localParcelable, null);
        this.at.G();
      }
    }
  }

  public final void a(Fragment.SavedState paramSavedState)
  {
    if (this.K >= 0)
      throw new IllegalStateException("Fragment already active");
    if ((paramSavedState != null) && (paramSavedState.aP != null));
    for (Bundle localBundle = paramSavedState.aP; ; localBundle = null)
    {
      this.ad = localBundle;
      return;
    }
  }

  final boolean a(Menu paramMenu)
  {
    boolean bool1 = this.ay;
    boolean bool2 = false;
    if (!bool1)
    {
      boolean bool3 = this.aC;
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = this.aD;
        bool2 = false;
        if (bool4)
          bool2 = true;
      }
      if (this.at != null)
        bool2 |= this.at.c(paramMenu);
    }
    return bool2;
  }

  final boolean a(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    boolean bool1 = this.ay;
    boolean bool2 = false;
    if (!bool1)
    {
      boolean bool3 = this.aC;
      bool2 = false;
      if (bool3)
      {
        boolean bool4 = this.aD;
        bool2 = false;
        if (bool4)
          bool2 = true;
      }
      if (this.at != null)
        bool2 |= this.at.b(paramMenu, paramMenuInflater);
    }
    return bool2;
  }

  final boolean a(MenuItem paramMenuItem)
  {
    return (!this.ay) && ((!this.aC) || ((this.at != null) && (this.at.c(paramMenuItem))));
  }

  final View b(LayoutInflater paramLayoutInflater)
  {
    if (this.at != null)
      this.at.F();
    return a(paramLayoutInflater);
  }

  final void b(int paramInt, Fragment paramFragment)
  {
    this.K = paramInt;
    if (paramFragment != null)
    {
      this.af = (paramFragment.af + ":" + this.K);
      return;
    }
    this.af = ("android:fragment:" + this.K);
  }

  final void b(Bundle paramBundle)
  {
    if (this.at != null)
      this.at.F();
    this.aE = false;
    onActivityCreated(paramBundle);
    if (!this.aE)
      throw new af("Fragment " + this + " did not call through to super.onActivityCreated()");
    if (this.at != null)
      this.at.H();
  }

  final void b(Menu paramMenu)
  {
    if ((!this.ay) && ((!this.aC) || (this.at != null)))
      this.at.d(paramMenu);
  }

  final boolean b(MenuItem paramMenuItem)
  {
    if (!this.ay)
    {
      if (onContextItemSelected(paramMenuItem));
      while ((this.at != null) && (this.at.d(paramMenuItem)))
        return true;
    }
    return false;
  }

  final void c(Bundle paramBundle)
  {
    onSaveInstanceState(paramBundle);
    if (this.at != null)
    {
      Parcelable localParcelable = this.at.E();
      if (localParcelable != null)
        paramBundle.putParcelable("android:support:fragments", localParcelable);
    }
  }

  final void d()
  {
    if (this.ae != null)
    {
      this.aI.restoreHierarchyState(this.ae);
      this.ae = null;
    }
    this.aE = false;
    this.aE = true;
    if (!this.aE)
      throw new af("Fragment " + this + " did not call through to super.onViewStateRestored()");
  }

  public final void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mFragmentId=#");
    paramPrintWriter.print(Integer.toHexString(this.av));
    paramPrintWriter.print(" mContainerId=#");
    paramPrintWriter.print(Integer.toHexString(this.aw));
    paramPrintWriter.print(" mTag=");
    paramPrintWriter.println(this.ax);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mState=");
    paramPrintWriter.print(this.mState);
    paramPrintWriter.print(" mIndex=");
    paramPrintWriter.print(this.K);
    paramPrintWriter.print(" mWho=");
    paramPrintWriter.print(this.af);
    paramPrintWriter.print(" mBackStackNesting=");
    paramPrintWriter.println(this.aq);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mAdded=");
    paramPrintWriter.print(this.ak);
    paramPrintWriter.print(" mRemoving=");
    paramPrintWriter.print(this.al);
    paramPrintWriter.print(" mResumed=");
    paramPrintWriter.print(this.am);
    paramPrintWriter.print(" mFromLayout=");
    paramPrintWriter.print(this.an);
    paramPrintWriter.print(" mInLayout=");
    paramPrintWriter.println(this.ao);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mHidden=");
    paramPrintWriter.print(this.ay);
    paramPrintWriter.print(" mDetached=");
    paramPrintWriter.print(this.az);
    paramPrintWriter.print(" mMenuVisible=");
    paramPrintWriter.print(this.aD);
    paramPrintWriter.print(" mHasMenu=");
    paramPrintWriter.println(this.aC);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("mRetainInstance=");
    paramPrintWriter.print(this.aA);
    paramPrintWriter.print(" mRetaining=");
    paramPrintWriter.print(this.aB);
    paramPrintWriter.print(" mUserVisibleHint=");
    paramPrintWriter.println(this.aK);
    if (this.ar != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mFragmentManager=");
      paramPrintWriter.println(this.ar);
    }
    if (this.as != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mActivity=");
      paramPrintWriter.println(this.as);
    }
    if (this.au != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mParentFragment=");
      paramPrintWriter.println(this.au);
    }
    if (this.ag != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mArguments=");
      paramPrintWriter.println(this.ag);
    }
    if (this.ad != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedFragmentState=");
      paramPrintWriter.println(this.ad);
    }
    if (this.ae != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mSavedViewState=");
      paramPrintWriter.println(this.ae);
    }
    if (this.ah != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mTarget=");
      paramPrintWriter.print(this.ah);
      paramPrintWriter.print(" mTargetRequestCode=");
      paramPrintWriter.println(this.aj);
    }
    if (this.aF != 0)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mNextAnim=");
      paramPrintWriter.println(this.aF);
    }
    if (this.aG != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mContainer=");
      paramPrintWriter.println(this.aG);
    }
    if (this.aH != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mView=");
      paramPrintWriter.println(this.aH);
    }
    if (this.aI != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mInnerView=");
      paramPrintWriter.println(this.aH);
    }
    if (this.ab != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mAnimatingAway=");
      paramPrintWriter.println(this.ab);
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mStateAfterAnimating=");
      paramPrintWriter.println(this.ac);
    }
    if (this.aL != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Loader Manager:");
      this.aL.b(paramString + "  ", paramPrintWriter);
    }
    if (this.at != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Child " + this.at + ":");
      this.at.dump(paramString + "  ", paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    }
  }

  final boolean e()
  {
    return this.aq > 0;
  }

  public final boolean equals(Object paramObject)
  {
    return super.equals(paramObject);
  }

  public FragmentActivity f()
  {
    return this.as;
  }

  public final LayoutInflater g()
  {
    return this.as.getLayoutInflater();
  }

  public final Bundle getArguments()
  {
    return this.ag;
  }

  public Resources getResources()
  {
    if (this.as == null)
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    return this.as.getResources();
  }

  public final String getString(int paramInt)
  {
    return getResources().getString(paramInt);
  }

  public final View getView()
  {
    return this.aH;
  }

  public final void h()
  {
    this.aE = true;
  }

  public final int hashCode()
  {
    return super.hashCode();
  }

  public final boolean isDetached()
  {
    return this.az;
  }

  final void k()
  {
    this.K = -1;
    this.af = null;
    this.ak = false;
    this.al = false;
    this.am = false;
    this.an = false;
    this.ao = false;
    this.ap = false;
    this.aq = 0;
    this.ar = null;
    this.as = null;
    this.av = 0;
    this.aw = 0;
    this.ax = null;
    this.ay = false;
    this.az = false;
    this.aB = false;
    this.aL = null;
    this.aM = false;
    this.aN = false;
  }

  final void l()
  {
    if (this.at != null)
    {
      this.at.F();
      this.at.A();
    }
    this.aE = false;
    onStart();
    if (!this.aE)
      throw new af("Fragment " + this + " did not call through to super.onStart()");
    if (this.at != null)
      this.at.I();
    if (this.aL != null)
      this.aL.X();
  }

  final void m()
  {
    if (this.at != null)
    {
      this.at.F();
      this.at.A();
    }
    this.aE = false;
    onResume();
    if (!this.aE)
      throw new af("Fragment " + this + " did not call through to super.onResume()");
    if (this.at != null)
    {
      this.at.dispatchResume();
      this.at.A();
    }
  }

  final void n()
  {
    onLowMemory();
    if (this.at != null)
      this.at.N();
  }

  final void o()
  {
    if (this.at != null)
      this.at.J();
    this.aE = false;
    onPause();
    if (!this.aE)
      throw new af("Fragment " + this + " did not call through to super.onPause()");
  }

  public void onActivityCreated(Bundle paramBundle)
  {
    this.aE = true;
  }

  public void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
  }

  public void onAttach(Activity paramActivity)
  {
    this.aE = true;
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    this.aE = true;
  }

  public boolean onContextItemSelected(MenuItem paramMenuItem)
  {
    return false;
  }

  public void onCreate(Bundle paramBundle)
  {
    this.aE = true;
  }

  public void onCreateContextMenu(ContextMenu paramContextMenu, View paramView, ContextMenu.ContextMenuInfo paramContextMenuInfo)
  {
    f().onCreateContextMenu(paramContextMenu, paramView, paramContextMenuInfo);
  }

  public void onDestroy()
  {
    this.aE = true;
    if (!this.aN)
    {
      this.aN = true;
      FragmentActivity localFragmentActivity = this.as;
      String str = this.af;
      this.aL = localFragmentActivity.f(str);
    }
    if (this.aL != null)
      this.aL.Y();
  }

  public void onDestroyView()
  {
    this.aE = true;
  }

  public void onDetach()
  {
    this.aE = true;
  }

  public void onHiddenChanged(boolean paramBoolean)
  {
  }

  public void onLowMemory()
  {
    this.aE = true;
  }

  public void onPause()
  {
    this.aE = true;
  }

  public void onResume()
  {
    this.aE = true;
  }

  public void onSaveInstanceState(Bundle paramBundle)
  {
  }

  public void onStart()
  {
    this.aE = true;
    if (!this.aM)
    {
      this.aM = true;
      if (!this.aN)
      {
        this.aN = true;
        FragmentActivity localFragmentActivity = this.as;
        String str = this.af;
        this.aL = localFragmentActivity.f(str);
      }
      if (this.aL != null)
        this.aL.S();
    }
  }

  public void onStop()
  {
    this.aE = true;
  }

  final void p()
  {
    if (this.at != null)
      this.at.dispatchStop();
    this.aE = false;
    onStop();
    if (!this.aE)
      throw new af("Fragment " + this + " did not call through to super.onStop()");
  }

  final void q()
  {
    if (this.at != null)
      this.at.K();
    if (this.aM)
    {
      this.aM = false;
      if (!this.aN)
      {
        this.aN = true;
        FragmentActivity localFragmentActivity = this.as;
        String str = this.af;
        this.aL = localFragmentActivity.f(str);
      }
      if (this.aL != null)
      {
        if (this.as.aB)
          break label87;
        this.aL.T();
      }
    }
    return;
    label87: this.aL.U();
  }

  final void r()
  {
    if (this.at != null)
      this.at.L();
    this.aE = false;
    onDestroyView();
    if (!this.aE)
      throw new af("Fragment " + this + " did not call through to super.onDestroyView()");
    if (this.aL != null)
      this.aL.W();
  }

  final void s()
  {
    if (this.at != null)
      this.at.M();
    this.aE = false;
    onDestroy();
    if (!this.aE)
      throw new af("Fragment " + this + " did not call through to super.onDestroy()");
  }

  public final void setArguments(Bundle paramBundle)
  {
    if (this.K >= 0)
      throw new IllegalStateException("Fragment already active");
    this.ag = paramBundle;
  }

  public final void setMenuVisibility(boolean paramBoolean)
  {
    if (this.aD != paramBoolean)
    {
      this.aD = paramBoolean;
      if (this.aC)
        if ((this.as == null) || (!this.ak))
          break label55;
    }
    label55: for (int i = 1; ; i = 0)
    {
      if ((i != 0) && (!this.ay))
        this.as.u();
      return;
    }
  }

  public final void setUserVisibleHint(boolean paramBoolean)
  {
    if ((!this.aK) && (paramBoolean) && (this.mState < 4))
      this.ar.e(this);
    this.aK = paramBoolean;
    if (!paramBoolean);
    for (boolean bool = true; ; bool = false)
    {
      this.aJ = bool;
      return;
    }
  }

  public void startActivity(Intent paramIntent)
  {
    if (this.as == null)
      throw new IllegalStateException("Fragment " + this + " not attached to Activity");
    this.as.a(this, paramIntent, -1);
  }

  public String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    a.a(this, localStringBuilder);
    if (this.K >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(this.K);
    }
    if (this.av != 0)
    {
      localStringBuilder.append(" id=0x");
      localStringBuilder.append(Integer.toHexString(this.av));
    }
    if (this.ax != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.ax);
    }
    localStringBuilder.append('}');
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.Fragment
 * JD-Core Version:    0.6.2
 */