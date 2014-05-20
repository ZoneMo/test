package android.support.v4.app;

import android.content.res.Configuration;
import android.content.res.Resources;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.os.Parcelable;
import android.support.v4.c.b;
import android.util.SparseArray;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuInflater;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager.LayoutParams;
import android.view.animation.AccelerateInterpolator;
import android.view.animation.AlphaAnimation;
import android.view.animation.Animation;
import android.view.animation.AnimationSet;
import android.view.animation.AnimationUtils;
import android.view.animation.DecelerateInterpolator;
import android.view.animation.Interpolator;
import android.view.animation.ScaleAnimation;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Arrays;

final class m extends l
{
  static boolean DEBUG = false;
  static final Interpolator bB = new DecelerateInterpolator(2.5F);
  static final Interpolator bC = new DecelerateInterpolator(1.5F);
  static final Interpolator bD = new AccelerateInterpolator(2.5F);
  static final Interpolator bE = new AccelerateInterpolator(1.5F);
  static final boolean be;
  k aR;
  FragmentActivity as;
  Runnable bA = new n(this);
  ArrayList bf;
  Runnable[] bg;
  boolean bh;
  ArrayList bi;
  ArrayList bj;
  ArrayList bk;
  ArrayList bl;
  ArrayList bm;
  ArrayList bn;
  ArrayList bo;
  ArrayList bp;
  int bq = 0;
  Fragment br;
  boolean bt;
  boolean bu;
  boolean bv;
  String bw;
  boolean bx;
  Bundle by = null;
  SparseArray bz = null;

  static
  {
    int i = Build.VERSION.SDK_INT;
    boolean bool = false;
    if (i >= 11)
      bool = true;
    be = bool;
  }

  private void B()
  {
    if (this.bp != null)
      for (int i = 0; i < this.bp.size(); i++)
        this.bp.get(i);
  }

  private static Animation a(float paramFloat1, float paramFloat2)
  {
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(paramFloat1, paramFloat2);
    localAlphaAnimation.setInterpolator(bC);
    localAlphaAnimation.setDuration(220L);
    return localAlphaAnimation;
  }

  private static Animation a(float paramFloat1, float paramFloat2, float paramFloat3, float paramFloat4)
  {
    AnimationSet localAnimationSet = new AnimationSet(false);
    ScaleAnimation localScaleAnimation = new ScaleAnimation(paramFloat1, paramFloat2, paramFloat1, paramFloat2, 1, 0.5F, 1, 0.5F);
    localScaleAnimation.setInterpolator(bB);
    localScaleAnimation.setDuration(220L);
    localAnimationSet.addAnimation(localScaleAnimation);
    AlphaAnimation localAlphaAnimation = new AlphaAnimation(paramFloat3, paramFloat4);
    localAlphaAnimation.setInterpolator(bC);
    localAlphaAnimation.setDuration(220L);
    localAnimationSet.addAnimation(localAlphaAnimation);
    return localAnimationSet;
  }

  private Animation a(Fragment paramFragment, int paramInt1, boolean paramBoolean, int paramInt2)
  {
    Fragment.i();
    if (paramFragment.aF != 0)
    {
      Animation localAnimation = AnimationUtils.loadAnimation(this.as, paramFragment.aF);
      if (localAnimation != null)
        return localAnimation;
    }
    if (paramInt1 == 0)
      return null;
    int i = -1;
    switch (paramInt1)
    {
    default:
    case 4097:
    case 8194:
    case 4099:
    }
    while (i < 0)
    {
      return null;
      if (paramBoolean)
      {
        i = 1;
      }
      else
      {
        i = 2;
        continue;
        if (paramBoolean)
        {
          i = 3;
        }
        else
        {
          i = 4;
          continue;
          if (paramBoolean)
            i = 5;
          else
            i = 6;
        }
      }
    }
    switch (i)
    {
    default:
      if ((paramInt2 == 0) && (this.as.getWindow() != null))
        paramInt2 = this.as.getWindow().getAttributes().windowAnimations;
      if (paramInt2 == 0)
        return null;
      break;
    case 1:
      return a(1.125F, 1.0F, 0.0F, 1.0F);
    case 2:
      return a(1.0F, 0.975F, 1.0F, 0.0F);
    case 3:
      return a(0.975F, 1.0F, 0.0F, 1.0F);
    case 4:
      return a(1.0F, 1.075F, 1.0F, 0.0F);
    case 5:
      return a(0.0F, 1.0F);
    case 6:
      return a(1.0F, 0.0F);
    }
    return null;
  }

  private void a(int paramInt, a parama)
  {
    try
    {
      if (this.bn == null)
        this.bn = new ArrayList();
      int i = this.bn.size();
      if (paramInt < i)
      {
        if (DEBUG)
          new StringBuilder("Setting back stack index ").append(paramInt).append(" to ").append(parama).toString();
        this.bn.set(paramInt, parama);
      }
      while (true)
      {
        return;
        while (i < paramInt)
        {
          this.bn.add(null);
          if (this.bo == null)
            this.bo = new ArrayList();
          if (DEBUG)
            new StringBuilder("Adding available back stack index ").append(i).toString();
          this.bo.add(Integer.valueOf(i));
          i++;
        }
        if (DEBUG)
          new StringBuilder("Adding back stack index ").append(paramInt).append(" with ").append(parama).toString();
        this.bn.add(parama);
      }
    }
    finally
    {
    }
  }

  private void a(RuntimeException paramRuntimeException)
  {
    paramRuntimeException.getMessage();
    PrintWriter localPrintWriter = new PrintWriter(new b("FragmentManager"));
    if (this.as != null);
    try
    {
      this.as.dump("  ", null, localPrintWriter, new String[0]);
      while (true)
      {
        label44: throw paramRuntimeException;
        try
        {
          dump("  ", null, localPrintWriter, new String[0]);
        }
        catch (Exception localException1)
        {
        }
      }
    }
    catch (Exception localException2)
    {
      break label44;
    }
  }

  private void c(int paramInt)
  {
    a(paramInt, 0, 0, false);
  }

  public static int e(int paramInt)
  {
    switch (paramInt)
    {
    default:
      return 0;
    case 4097:
      return 8194;
    case 8194:
      return 4097;
    case 4099:
    }
    return 4099;
  }

  private void g(Fragment paramFragment)
  {
    if (paramFragment.aI == null)
      return;
    if (this.bz == null)
      this.bz = new SparseArray();
    while (true)
    {
      paramFragment.aI.saveHierarchyState(this.bz);
      if (this.bz.size() <= 0)
        break;
      paramFragment.ae = this.bz;
      this.bz = null;
      return;
      this.bz.clear();
    }
  }

  private Bundle h(Fragment paramFragment)
  {
    if (this.by == null)
      this.by = new Bundle();
    paramFragment.c(this.by);
    Bundle localBundle;
    if (!this.by.isEmpty())
    {
      localBundle = this.by;
      this.by = null;
    }
    while (true)
    {
      if (paramFragment.aH != null)
        g(paramFragment);
      if (paramFragment.ae != null)
      {
        if (localBundle == null)
          localBundle = new Bundle();
        localBundle.putSparseParcelableArray("android:view_state", paramFragment.ae);
      }
      if (!paramFragment.aK)
      {
        if (localBundle == null)
          localBundle = new Bundle();
        localBundle.putBoolean("android:user_visible_hint", paramFragment.aK);
      }
      return localBundle;
      localBundle = null;
    }
  }

  private void y()
  {
    if (this.bi == null);
    while (true)
    {
      return;
      for (int i = 0; i < this.bi.size(); i++)
      {
        Fragment localFragment = (Fragment)this.bi.get(i);
        if (localFragment != null)
          e(localFragment);
      }
    }
  }

  private void z()
  {
    if (this.bu)
      throw new IllegalStateException("Can not perform this action after onSaveInstanceState");
    if (this.bw != null)
      throw new IllegalStateException("Can not perform this action inside of " + this.bw);
  }

  public final boolean A()
  {
    if (this.bh)
      throw new IllegalStateException("Recursive entry to executePendingTransactions");
    if (Looper.myLooper() != this.as.mHandler.getLooper())
      throw new IllegalStateException("Must be called from main thread of process");
    boolean bool2;
    for (boolean bool1 = false; ; bool1 = true)
    {
      try
      {
        if ((this.bf == null) || (this.bf.size() == 0))
        {
          if (!this.bx)
            break label276;
          int i = 0;
          bool2 = false;
          while (i < this.bi.size())
          {
            Fragment localFragment = (Fragment)this.bi.get(i);
            if ((localFragment != null) && (localFragment.aL != null))
              bool2 |= localFragment.aL.Q();
            i++;
          }
        }
        int j = this.bf.size();
        if ((this.bg == null) || (this.bg.length < j))
          this.bg = new Runnable[j];
        this.bf.toArray(this.bg);
        this.bf.clear();
        this.as.mHandler.removeCallbacks(this.bA);
        this.bh = true;
        for (int k = 0; k < j; k++)
        {
          this.bg[k].run();
          this.bg[k] = null;
        }
      }
      finally
      {
      }
      this.bh = false;
    }
    if (!bool2)
    {
      this.bx = false;
      y();
    }
    label276: return bool1;
  }

  final boolean C()
  {
    if (this.bl == null);
    int i;
    do
    {
      return false;
      i = -1 + this.bl.size();
    }
    while (i < 0);
    ((a)this.bl.remove(i)).c();
    B();
    return true;
  }

  final ArrayList D()
  {
    ArrayList localArrayList1 = this.bi;
    ArrayList localArrayList2 = null;
    if (localArrayList1 != null)
    {
      int i = 0;
      if (i < this.bi.size())
      {
        Fragment localFragment = (Fragment)this.bi.get(i);
        if ((localFragment != null) && (localFragment.aA))
        {
          if (localArrayList2 == null)
            localArrayList2 = new ArrayList();
          localArrayList2.add(localFragment);
          localFragment.aB = true;
          if (localFragment.ah == null)
            break label131;
        }
        label131: for (int j = localFragment.ah.K; ; j = -1)
        {
          localFragment.ai = j;
          if (DEBUG)
            new StringBuilder("retainNonConfig: keeping retained ").append(localFragment).toString();
          i++;
          break;
        }
      }
    }
    return localArrayList2;
  }

  final Parcelable E()
  {
    A();
    if (be)
      this.bu = true;
    if ((this.bi == null) || (this.bi.size() <= 0))
      return null;
    int i = this.bi.size();
    FragmentState[] arrayOfFragmentState = new FragmentState[i];
    int j = 0;
    int k = 0;
    Fragment localFragment;
    FragmentState localFragmentState;
    if (j < i)
    {
      localFragment = (Fragment)this.bi.get(j);
      if (localFragment == null)
        break label693;
      if (localFragment.K < 0)
        a(new IllegalStateException("Failure saving state: active " + localFragment + " has cleared index: " + localFragment.K));
      localFragmentState = new FragmentState(localFragment);
      arrayOfFragmentState[j] = localFragmentState;
      if ((localFragment.mState > 0) && (localFragmentState.ad == null))
      {
        localFragmentState.ad = h(localFragment);
        if (localFragment.ah != null)
        {
          if (localFragment.ah.K < 0)
            a(new IllegalStateException("Failure saving state: " + localFragment + " has target not in fragment manager: " + localFragment.ah));
          if (localFragmentState.ad == null)
            localFragmentState.ad = new Bundle();
          a(localFragmentState.ad, "android:target_state", localFragment.ah);
          if (localFragment.aj != 0)
            localFragmentState.ad.putInt("android:target_req_state", localFragment.aj);
        }
        label297: if (DEBUG)
          new StringBuilder("Saved state of ").append(localFragment).append(": ").append(localFragmentState.ad).toString();
      }
    }
    label693: for (int i3 = 1; ; i3 = k)
    {
      j++;
      k = i3;
      break;
      localFragmentState.ad = localFragment.ad;
      break label297;
      if (k == 0)
        return null;
      if (this.bj != null)
      {
        int i1 = this.bj.size();
        if (i1 > 0)
        {
          arrayOfInt = new int[i1];
          for (int i2 = 0; i2 < i1; i2++)
          {
            arrayOfInt[i2] = ((Fragment)this.bj.get(i2)).K;
            if (arrayOfInt[i2] < 0)
              a(new IllegalStateException("Failure saving state: active " + this.bj.get(i2) + " has cleared index: " + arrayOfInt[i2]));
            if (DEBUG)
              new StringBuilder("saveAllState: adding fragment #").append(i2).append(": ").append(this.bj.get(i2)).toString();
          }
        }
      }
      int[] arrayOfInt = null;
      ArrayList localArrayList = this.bl;
      BackStackState[] arrayOfBackStackState = null;
      if (localArrayList != null)
      {
        int m = this.bl.size();
        arrayOfBackStackState = null;
        if (m > 0)
        {
          arrayOfBackStackState = new BackStackState[m];
          for (int n = 0; n < m; n++)
          {
            arrayOfBackStackState[n] = new BackStackState((a)this.bl.get(n));
            if (DEBUG)
              new StringBuilder("saveAllState: adding back stack #").append(n).append(": ").append(this.bl.get(n)).toString();
          }
        }
      }
      FragmentManagerState localFragmentManagerState = new FragmentManagerState();
      localFragmentManagerState.bH = arrayOfFragmentState;
      localFragmentManagerState.bI = arrayOfInt;
      localFragmentManagerState.bJ = arrayOfBackStackState;
      return localFragmentManagerState;
    }
  }

  public final void F()
  {
    this.bu = false;
  }

  public final void G()
  {
    this.bu = false;
    c(1);
  }

  public final void H()
  {
    this.bu = false;
    c(2);
  }

  public final void I()
  {
    this.bu = false;
    c(4);
  }

  public final void J()
  {
    c(4);
  }

  public final void K()
  {
    c(2);
  }

  public final void L()
  {
    c(1);
  }

  public final void M()
  {
    this.bv = true;
    A();
    c(0);
    this.as = null;
    this.aR = null;
    this.br = null;
  }

  public final void N()
  {
    if (this.bj != null)
      for (int i = 0; i < this.bj.size(); i++)
      {
        Fragment localFragment = (Fragment)this.bj.get(i);
        if (localFragment != null)
          localFragment.n();
      }
  }

  public final int a(a parama)
  {
    try
    {
      if ((this.bo == null) || (this.bo.size() <= 0))
      {
        if (this.bn == null)
          this.bn = new ArrayList();
        int i = this.bn.size();
        if (DEBUG)
          new StringBuilder("Setting back stack index ").append(i).append(" to ").append(parama).toString();
        this.bn.add(parama);
        return i;
      }
      int j = ((Integer)this.bo.remove(-1 + this.bo.size())).intValue();
      if (DEBUG)
        new StringBuilder("Adding back stack index ").append(j).append(" with ").append(parama).toString();
      this.bn.set(j, parama);
      return j;
    }
    finally
    {
    }
  }

  public final Fragment a(Bundle paramBundle, String paramString)
  {
    int i = paramBundle.getInt(paramString, -1);
    Fragment localFragment;
    if (i == -1)
      localFragment = null;
    do
    {
      return localFragment;
      if (i >= this.bi.size())
        a(new IllegalStateException("Fragement no longer exists for key " + paramString + ": index " + i));
      localFragment = (Fragment)this.bi.get(i);
    }
    while (localFragment != null);
    a(new IllegalStateException("Fragement no longer exists for key " + paramString + ": index " + i));
    return localFragment;
  }

  final void a(int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if ((this.as == null) && (paramInt1 != 0))
      throw new IllegalStateException("No activity");
    if ((!paramBoolean) && (this.bq == paramInt1));
    do
    {
      return;
      this.bq = paramInt1;
    }
    while (this.bi == null);
    int i = 0;
    boolean bool1 = false;
    label54: Fragment localFragment;
    if (i < this.bi.size())
    {
      localFragment = (Fragment)this.bi.get(i);
      if (localFragment == null)
        break label170;
      a(localFragment, paramInt1, paramInt2, paramInt3, false);
      if (localFragment.aL == null)
        break label170;
    }
    label170: for (boolean bool2 = bool1 | localFragment.aL.Q(); ; bool2 = bool1)
    {
      i++;
      bool1 = bool2;
      break label54;
      if (!bool1)
        y();
      if ((!this.bt) || (this.as == null) || (this.bq != 5))
        break;
      this.as.u();
      this.bt = false;
      return;
    }
  }

  public final void a(Bundle paramBundle, String paramString, Fragment paramFragment)
  {
    if (paramFragment.K < 0)
      a(new IllegalStateException("Fragment " + paramFragment + " is not currently in the FragmentManager"));
    paramBundle.putInt(paramString, paramFragment.K);
  }

  final void a(Parcelable paramParcelable, ArrayList paramArrayList)
  {
    if (paramParcelable == null);
    while (true)
    {
      return;
      FragmentManagerState localFragmentManagerState = (FragmentManagerState)paramParcelable;
      if (localFragmentManagerState.bH != null)
      {
        if (paramArrayList != null)
          for (int n = 0; n < paramArrayList.size(); n++)
          {
            Fragment localFragment4 = (Fragment)paramArrayList.get(n);
            if (DEBUG)
              new StringBuilder("restoreAllState: re-attaching retained ").append(localFragment4).toString();
            FragmentState localFragmentState2 = localFragmentManagerState.bH[localFragment4.K];
            localFragmentState2.bL = localFragment4;
            localFragment4.ae = null;
            localFragment4.aq = 0;
            localFragment4.ao = false;
            localFragment4.ak = false;
            localFragment4.ah = null;
            if (localFragmentState2.ad != null)
            {
              localFragmentState2.ad.setClassLoader(this.as.getClassLoader());
              localFragment4.ae = localFragmentState2.ad.getSparseParcelableArray("android:view_state");
            }
          }
        this.bi = new ArrayList(localFragmentManagerState.bH.length);
        if (this.bk != null)
          this.bk.clear();
        int i = 0;
        if (i < localFragmentManagerState.bH.length)
        {
          FragmentState localFragmentState1 = localFragmentManagerState.bH[i];
          if (localFragmentState1 != null)
          {
            Fragment localFragment3 = localFragmentState1.a(this.as, this.br);
            if (DEBUG)
              new StringBuilder("restoreAllState: active #").append(i).append(": ").append(localFragment3).toString();
            this.bi.add(localFragment3);
            localFragmentState1.bL = null;
          }
          while (true)
          {
            i++;
            break;
            this.bi.add(null);
            if (this.bk == null)
              this.bk = new ArrayList();
            if (DEBUG)
              new StringBuilder("restoreAllState: avail #").append(i).toString();
            this.bk.add(Integer.valueOf(i));
          }
        }
        if (paramArrayList != null)
        {
          int m = 0;
          if (m < paramArrayList.size())
          {
            Fragment localFragment2 = (Fragment)paramArrayList.get(m);
            if (localFragment2.ai >= 0)
              if (localFragment2.ai >= this.bi.size())
                break label437;
            for (localFragment2.ah = ((Fragment)this.bi.get(localFragment2.ai)); ; localFragment2.ah = null)
            {
              m++;
              break;
              label437: new StringBuilder("Re-attaching retained fragment ").append(localFragment2).append(" target no longer exists: ").append(localFragment2.ai).toString();
            }
          }
        }
        if (localFragmentManagerState.bI != null)
        {
          this.bj = new ArrayList(localFragmentManagerState.bI.length);
          for (int k = 0; k < localFragmentManagerState.bI.length; k++)
          {
            Fragment localFragment1 = (Fragment)this.bi.get(localFragmentManagerState.bI[k]);
            if (localFragment1 == null)
              a(new IllegalStateException("No instantiated fragment for index #" + localFragmentManagerState.bI[k]));
            localFragment1.ak = true;
            if (DEBUG)
              new StringBuilder("restoreAllState: added #").append(k).append(": ").append(localFragment1).toString();
            if (this.bj.contains(localFragment1))
              throw new IllegalStateException("Already added!");
            this.bj.add(localFragment1);
          }
        }
        this.bj = null;
        if (localFragmentManagerState.bJ == null)
          break;
        this.bl = new ArrayList(localFragmentManagerState.bJ.length);
        for (int j = 0; j < localFragmentManagerState.bJ.length; j++)
        {
          a locala = localFragmentManagerState.bJ[j].a(this);
          if (DEBUG)
          {
            new StringBuilder("restoreAllState: back stack #").append(j).append(" (index ").append(locala.K).append("): ").append(locala).toString();
            locala.a("  ", new PrintWriter(new b("FragmentManager")), false);
          }
          this.bl.add(locala);
          if (locala.K >= 0)
            a(locala.K, locala);
        }
      }
    }
    this.bl = null;
  }

  public final void a(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG)
      new StringBuilder("remove: ").append(paramFragment).append(" nesting=").append(paramFragment.aq).toString();
    int i;
    if (!paramFragment.e())
    {
      i = 1;
      if ((!paramFragment.az) || (i != 0))
      {
        if (this.bj != null)
          this.bj.remove(paramFragment);
        if ((paramFragment.aC) && (paramFragment.aD))
          this.bt = true;
        paramFragment.ak = false;
        paramFragment.al = true;
        if (i == 0)
          break label129;
      }
    }
    label129: for (int j = 0; ; j = 1)
    {
      a(paramFragment, j, paramInt1, paramInt2, false);
      return;
      i = 0;
      break;
    }
  }

  final void a(Fragment paramFragment, int paramInt1, int paramInt2, int paramInt3, boolean paramBoolean)
  {
    if (((!paramFragment.ak) || (paramFragment.az)) && (paramInt1 > 1))
      paramInt1 = 1;
    if ((paramFragment.al) && (paramInt1 > paramFragment.mState))
      paramInt1 = paramFragment.mState;
    if ((paramFragment.aJ) && (paramFragment.mState < 4) && (paramInt1 > 3))
      paramInt1 = 3;
    label494: ViewGroup localViewGroup;
    if (paramFragment.mState < paramInt1)
    {
      if ((paramFragment.an) && (!paramFragment.ao))
        return;
      if (paramFragment.ab != null)
      {
        paramFragment.ab = null;
        a(paramFragment, paramFragment.ac, 0, 0, true);
      }
      switch (paramFragment.mState)
      {
      default:
        paramFragment.mState = paramInt1;
        return;
      case 0:
        if (DEBUG)
          new StringBuilder("moveto CREATED: ").append(paramFragment).toString();
        if (paramFragment.ad != null)
        {
          paramFragment.ae = paramFragment.ad.getSparseParcelableArray("android:view_state");
          paramFragment.ah = a(paramFragment.ad, "android:target_state");
          if (paramFragment.ah != null)
            paramFragment.aj = paramFragment.ad.getInt("android:target_req_state", 0);
          paramFragment.aK = paramFragment.ad.getBoolean("android:user_visible_hint", true);
          if (!paramFragment.aK)
          {
            paramFragment.aJ = true;
            if (paramInt1 > 3)
              paramInt1 = 3;
          }
        }
        paramFragment.as = this.as;
        paramFragment.au = this.br;
        if (this.br != null);
        for (m localm = this.br.at; ; localm = this.as.aQ)
        {
          paramFragment.ar = localm;
          paramFragment.aE = false;
          paramFragment.onAttach(this.as);
          if (paramFragment.aE)
            break;
          throw new af("Fragment " + paramFragment + " did not call through to super.onAttach()");
        }
        if (paramFragment.au == null)
          FragmentActivity.v();
        if (!paramFragment.aB)
          paramFragment.a(paramFragment.ad);
        paramFragment.aB = false;
        if (paramFragment.an)
        {
          LayoutInflater localLayoutInflater2 = paramFragment.g();
          paramFragment.aH = paramFragment.b(localLayoutInflater2);
          if (paramFragment.aH == null)
            break label870;
          paramFragment.aI = paramFragment.aH;
          paramFragment.aH = ae.b(paramFragment.aH);
          if (paramFragment.ay)
            paramFragment.aH.setVisibility(8);
          Fragment.j();
        }
      case 1:
        if (paramInt1 > 1)
        {
          if (DEBUG)
            new StringBuilder("moveto ACTIVITY_CREATED: ").append(paramFragment).toString();
          if (!paramFragment.an)
          {
            if (paramFragment.aw == 0)
              break label1469;
            localViewGroup = (ViewGroup)this.aR.findViewById(paramFragment.aw);
            if ((localViewGroup == null) && (!paramFragment.ap))
              a(new IllegalArgumentException("No view found for id 0x" + Integer.toHexString(paramFragment.aw) + " (" + paramFragment.getResources().getResourceName(paramFragment.aw) + ") for fragment " + paramFragment));
          }
        }
        break;
      case 2:
      case 3:
      case 4:
      }
    }
    while (true)
    {
      paramFragment.aG = localViewGroup;
      LayoutInflater localLayoutInflater1 = paramFragment.g();
      paramFragment.aH = paramFragment.b(localLayoutInflater1);
      if (paramFragment.aH != null)
      {
        paramFragment.aI = paramFragment.aH;
        paramFragment.aH = ae.b(paramFragment.aH);
        if (localViewGroup != null)
        {
          Animation localAnimation2 = a(paramFragment, paramInt2, true, paramInt3);
          if (localAnimation2 != null)
            paramFragment.aH.startAnimation(localAnimation2);
          localViewGroup.addView(paramFragment.aH);
        }
        if (paramFragment.ay)
          paramFragment.aH.setVisibility(8);
        Fragment.j();
      }
      while (true)
      {
        paramFragment.b(paramFragment.ad);
        if (paramFragment.aH != null)
          paramFragment.d();
        paramFragment.ad = null;
        if (paramInt1 > 3)
        {
          if (DEBUG)
            new StringBuilder("moveto STARTED: ").append(paramFragment).toString();
          paramFragment.l();
        }
        if (paramInt1 <= 4)
          break;
        if (DEBUG)
          new StringBuilder("moveto RESUMED: ").append(paramFragment).toString();
        paramFragment.am = true;
        paramFragment.m();
        paramFragment.ad = null;
        paramFragment.ae = null;
        break;
        label870: paramFragment.aI = null;
        break label494;
        paramFragment.aI = null;
      }
      if (paramFragment.mState <= paramInt1)
        break;
      switch (paramFragment.mState)
      {
      default:
        break;
      case 1:
      case 5:
      case 4:
      case 3:
      case 2:
        label935: 
        do
        {
          if (paramInt1 > 0)
            break;
          if ((this.bv) && (paramFragment.ab != null))
          {
            View localView = paramFragment.ab;
            paramFragment.ab = null;
            localView.clearAnimation();
          }
          if (paramFragment.ab == null)
            break label1261;
          paramFragment.ac = paramInt1;
          paramInt1 = 1;
          break;
          if (paramInt1 < 5)
          {
            if (DEBUG)
              new StringBuilder("movefrom RESUMED: ").append(paramFragment).toString();
            paramFragment.o();
            paramFragment.am = false;
          }
          if (paramInt1 < 4)
          {
            if (DEBUG)
              new StringBuilder("movefrom STARTED: ").append(paramFragment).toString();
            paramFragment.p();
          }
          if (paramInt1 < 3)
          {
            if (DEBUG)
              new StringBuilder("movefrom STOPPED: ").append(paramFragment).toString();
            paramFragment.q();
          }
        }
        while (paramInt1 >= 2);
        if (DEBUG)
          new StringBuilder("movefrom ACTIVITY_CREATED: ").append(paramFragment).toString();
        if ((paramFragment.aH != null) && (!this.as.isFinishing()) && (paramFragment.ae == null))
          g(paramFragment);
        paramFragment.r();
        if ((paramFragment.aH != null) && (paramFragment.aG != null))
          if ((this.bq <= 0) || (this.bv))
            break label1463;
        label1463: for (Animation localAnimation1 = a(paramFragment, paramInt2, false, paramInt3); ; localAnimation1 = null)
        {
          if (localAnimation1 != null)
          {
            paramFragment.ab = paramFragment.aH;
            paramFragment.ac = paramInt1;
            localAnimation1.setAnimationListener(new p(this, paramFragment));
            paramFragment.aH.startAnimation(localAnimation1);
          }
          paramFragment.aG.removeView(paramFragment.aH);
          paramFragment.aG = null;
          paramFragment.aH = null;
          paramFragment.aI = null;
          break label935;
          label1261: if (DEBUG)
            new StringBuilder("movefrom CREATED: ").append(paramFragment).toString();
          if (!paramFragment.aB)
            paramFragment.s();
          paramFragment.aE = false;
          paramFragment.onDetach();
          if (!paramFragment.aE)
            throw new af("Fragment " + paramFragment + " did not call through to super.onDetach()");
          if (paramBoolean)
            break;
          if (!paramFragment.aB)
          {
            if (paramFragment.K < 0)
              break;
            if (DEBUG)
              new StringBuilder("Freeing fragment index ").append(paramFragment).toString();
            this.bi.set(paramFragment.K, null);
            if (this.bk == null)
              this.bk = new ArrayList();
            this.bk.add(Integer.valueOf(paramFragment.K));
            this.as.e(paramFragment.af);
            paramFragment.k();
            break;
          }
          paramFragment.as = null;
          paramFragment.ar = null;
          break;
        }
        label1469: localViewGroup = null;
      }
    }
  }

  public final void a(Fragment paramFragment, boolean paramBoolean)
  {
    if (this.bj == null)
      this.bj = new ArrayList();
    if (DEBUG)
      new StringBuilder("add: ").append(paramFragment).toString();
    if (paramFragment.K < 0)
    {
      if ((this.bk != null) && (this.bk.size() > 0))
        break label175;
      if (this.bi == null)
        this.bi = new ArrayList();
      paramFragment.b(this.bi.size(), this.br);
      this.bi.add(paramFragment);
    }
    while (true)
    {
      if (DEBUG)
        new StringBuilder("Allocated fragment index ").append(paramFragment).toString();
      if (paramFragment.az)
        return;
      if (!this.bj.contains(paramFragment))
        break;
      throw new IllegalStateException("Fragment already added: " + paramFragment);
      label175: paramFragment.b(((Integer)this.bk.remove(-1 + this.bk.size())).intValue(), this.br);
      this.bi.set(paramFragment.K, paramFragment);
    }
    this.bj.add(paramFragment);
    paramFragment.ak = true;
    paramFragment.al = false;
    if ((paramFragment.aC) && (paramFragment.aD))
      this.bt = true;
    if (paramBoolean)
      f(paramFragment);
  }

  public final void a(FragmentActivity paramFragmentActivity, k paramk, Fragment paramFragment)
  {
    if (this.as != null)
      throw new IllegalStateException("Already attached");
    this.as = paramFragmentActivity;
    this.aR = paramk;
    this.br = paramFragment;
  }

  public final void a(Runnable paramRunnable, boolean paramBoolean)
  {
    if (!paramBoolean)
      z();
    try
    {
      if (this.as == null)
        throw new IllegalStateException("Activity has been destroyed");
    }
    finally
    {
    }
    if (this.bf == null)
      this.bf = new ArrayList();
    this.bf.add(paramRunnable);
    if (this.bf.size() == 1)
    {
      this.as.mHandler.removeCallbacks(this.bA);
      this.as.mHandler.post(this.bA);
    }
  }

  public final Fragment b(int paramInt)
  {
    Fragment localFragment;
    if (this.bj != null)
      for (int j = -1 + this.bj.size(); j >= 0; j--)
      {
        localFragment = (Fragment)this.bj.get(j);
        if ((localFragment != null) && (localFragment.av == paramInt))
          return localFragment;
      }
    if (this.bi != null)
      for (int i = -1 + this.bi.size(); ; i--)
      {
        if (i < 0)
          break label107;
        localFragment = (Fragment)this.bi.get(i);
        if ((localFragment != null) && (localFragment.av == paramInt))
          break;
      }
    label107: return null;
  }

  public final void b(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG)
      new StringBuilder("hide: ").append(paramFragment).toString();
    if (!paramFragment.ay)
    {
      paramFragment.ay = true;
      if (paramFragment.aH != null)
      {
        Animation localAnimation = a(paramFragment, paramInt1, true, paramInt2);
        if (localAnimation != null)
          paramFragment.aH.startAnimation(localAnimation);
        paramFragment.aH.setVisibility(8);
      }
      if ((paramFragment.ak) && (paramFragment.aC) && (paramFragment.aD))
        this.bt = true;
      paramFragment.onHiddenChanged(true);
    }
  }

  final void b(a parama)
  {
    if (this.bl == null)
      this.bl = new ArrayList();
    this.bl.add(parama);
    B();
  }

  public final boolean b(Menu paramMenu, MenuInflater paramMenuInflater)
  {
    ArrayList localArrayList1 = null;
    if (this.bj != null)
    {
      int j = 0;
      boolean bool2;
      for (bool1 = false; j < this.bj.size(); bool1 = bool2)
      {
        Fragment localFragment2 = (Fragment)this.bj.get(j);
        if ((localFragment2 != null) && (localFragment2.a(paramMenu, paramMenuInflater)))
        {
          bool1 = true;
          if (localArrayList1 == null)
            localArrayList1 = new ArrayList();
          localArrayList1.add(localFragment2);
        }
        bool2 = bool1;
        j++;
      }
    }
    boolean bool1 = false;
    ArrayList localArrayList2 = this.bm;
    int i = 0;
    if (localArrayList2 != null)
      while (i < this.bm.size())
      {
        Fragment localFragment1 = (Fragment)this.bm.get(i);
        if ((localArrayList1 == null) || (!localArrayList1.contains(localFragment1)))
          Fragment.onDestroyOptionsMenu();
        i++;
      }
    this.bm = localArrayList1;
    return bool1;
  }

  public final void c(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG)
      new StringBuilder("show: ").append(paramFragment).toString();
    if (paramFragment.ay)
    {
      paramFragment.ay = false;
      if (paramFragment.aH != null)
      {
        Animation localAnimation = a(paramFragment, paramInt1, true, paramInt2);
        if (localAnimation != null)
          paramFragment.aH.startAnimation(localAnimation);
        paramFragment.aH.setVisibility(0);
      }
      if ((paramFragment.ak) && (paramFragment.aC) && (paramFragment.aD))
        this.bt = true;
      paramFragment.onHiddenChanged(false);
    }
  }

  public final boolean c(Menu paramMenu)
  {
    if (this.bj != null)
    {
      int i = 0;
      bool = false;
      while (i < this.bj.size())
      {
        Fragment localFragment = (Fragment)this.bj.get(i);
        if ((localFragment != null) && (localFragment.a(paramMenu)))
          bool = true;
        i++;
      }
    }
    boolean bool = false;
    return bool;
  }

  public final boolean c(MenuItem paramMenuItem)
  {
    ArrayList localArrayList = this.bj;
    boolean bool = false;
    if (localArrayList != null);
    for (int i = 0; ; i++)
    {
      int j = this.bj.size();
      bool = false;
      if (i < j)
      {
        Fragment localFragment = (Fragment)this.bj.get(i);
        if ((localFragment != null) && (localFragment.a(paramMenuItem)))
          bool = true;
      }
      else
      {
        return bool;
      }
    }
  }

  public final Fragment.SavedState d(Fragment paramFragment)
  {
    if (paramFragment.K < 0)
      a(new IllegalStateException("Fragment " + paramFragment + " is not currently in the FragmentManager"));
    int i = paramFragment.mState;
    Fragment.SavedState localSavedState = null;
    if (i > 0)
    {
      Bundle localBundle = h(paramFragment);
      localSavedState = null;
      if (localBundle != null)
        localSavedState = new Fragment.SavedState(localBundle);
    }
    return localSavedState;
  }

  public final void d(int paramInt)
  {
    try
    {
      this.bn.set(paramInt, null);
      if (this.bo == null)
        this.bo = new ArrayList();
      if (DEBUG)
        new StringBuilder("Freeing back stack index ").append(paramInt).toString();
      this.bo.add(Integer.valueOf(paramInt));
      return;
    }
    finally
    {
    }
  }

  public final void d(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG)
      new StringBuilder("detach: ").append(paramFragment).toString();
    if (!paramFragment.az)
    {
      paramFragment.az = true;
      if (paramFragment.ak)
      {
        if (this.bj != null)
        {
          if (DEBUG)
            new StringBuilder("remove from detach: ").append(paramFragment).toString();
          this.bj.remove(paramFragment);
        }
        if ((paramFragment.aC) && (paramFragment.aD))
          this.bt = true;
        paramFragment.ak = false;
        a(paramFragment, 1, paramInt1, paramInt2, false);
      }
    }
  }

  public final void d(Menu paramMenu)
  {
    if (this.bj != null)
      for (int i = 0; i < this.bj.size(); i++)
      {
        Fragment localFragment = (Fragment)this.bj.get(i);
        if (localFragment != null)
          localFragment.b(paramMenu);
      }
  }

  public final boolean d(MenuItem paramMenuItem)
  {
    ArrayList localArrayList = this.bj;
    boolean bool = false;
    if (localArrayList != null);
    for (int i = 0; ; i++)
    {
      int j = this.bj.size();
      bool = false;
      if (i < j)
      {
        Fragment localFragment = (Fragment)this.bj.get(i);
        if ((localFragment != null) && (localFragment.b(paramMenuItem)))
          bool = true;
      }
      else
      {
        return bool;
      }
    }
  }

  public final void dispatchConfigurationChanged(Configuration paramConfiguration)
  {
    if (this.bj != null)
      for (int i = 0; i < this.bj.size(); i++)
      {
        Fragment localFragment = (Fragment)this.bj.get(i);
        if (localFragment != null)
          localFragment.a(paramConfiguration);
      }
  }

  public final void dispatchResume()
  {
    this.bu = false;
    c(5);
  }

  public final void dispatchStop()
  {
    this.bu = true;
    c(3);
  }

  public final void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    int i = 0;
    String str = paramString + "    ";
    if (this.bi != null)
    {
      int i6 = this.bi.size();
      if (i6 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("Active Fragments in ");
        paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
        paramPrintWriter.println(":");
        for (int i7 = 0; i7 < i6; i7++)
        {
          Fragment localFragment3 = (Fragment)this.bi.get(i7);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i7);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(localFragment3);
          if (localFragment3 != null)
            localFragment3.dump(str, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
        }
      }
    }
    if (this.bj != null)
    {
      int i4 = this.bj.size();
      if (i4 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Added Fragments:");
        for (int i5 = 0; i5 < i4; i5++)
        {
          Fragment localFragment2 = (Fragment)this.bj.get(i5);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i5);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(localFragment2.toString());
        }
      }
    }
    if (this.bm != null)
    {
      int i2 = this.bm.size();
      if (i2 > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Fragments Created Menus:");
        for (int i3 = 0; i3 < i2; i3++)
        {
          Fragment localFragment1 = (Fragment)this.bm.get(i3);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i3);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(localFragment1.toString());
        }
      }
    }
    if (this.bl != null)
    {
      int n = this.bl.size();
      if (n > 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.println("Back Stack:");
        for (int i1 = 0; i1 < n; i1++)
        {
          a locala2 = (a)this.bl.get(i1);
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(i1);
          paramPrintWriter.print(": ");
          paramPrintWriter.println(locala2.toString());
          locala2.a(str, paramPrintWriter);
        }
      }
    }
    try
    {
      if (this.bn != null)
      {
        int k = this.bn.size();
        if (k > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Back Stack Indices:");
          for (int m = 0; m < k; m++)
          {
            a locala1 = (a)this.bn.get(m);
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("  #");
            paramPrintWriter.print(m);
            paramPrintWriter.print(": ");
            paramPrintWriter.println(locala1);
          }
        }
      }
      if ((this.bo != null) && (this.bo.size() > 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mAvailBackStackIndices: ");
        paramPrintWriter.println(Arrays.toString(this.bo.toArray()));
      }
      if (this.bf != null)
      {
        int j = this.bf.size();
        if (j > 0)
        {
          paramPrintWriter.print(paramString);
          paramPrintWriter.println("Pending Actions:");
          while (i < j)
          {
            Runnable localRunnable = (Runnable)this.bf.get(i);
            paramPrintWriter.print(paramString);
            paramPrintWriter.print("  #");
            paramPrintWriter.print(i);
            paramPrintWriter.print(": ");
            paramPrintWriter.println(localRunnable);
            i++;
          }
        }
      }
    }
    finally
    {
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.println("FragmentManager misc state:");
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mActivity=");
    paramPrintWriter.println(this.as);
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mContainer=");
    paramPrintWriter.println(this.aR);
    if (this.br != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mParent=");
      paramPrintWriter.println(this.br);
    }
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("  mCurState=");
    paramPrintWriter.print(this.bq);
    paramPrintWriter.print(" mStateSaved=");
    paramPrintWriter.print(this.bu);
    paramPrintWriter.print(" mDestroyed=");
    paramPrintWriter.println(this.bv);
    if (this.bt)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mNeedMenuInvalidate=");
      paramPrintWriter.println(this.bt);
    }
    if (this.bw != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mNoTransactionsBecause=");
      paramPrintWriter.println(this.bw);
    }
    if ((this.bk != null) && (this.bk.size() > 0))
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("  mAvailIndices: ");
      paramPrintWriter.println(Arrays.toString(this.bk.toArray()));
    }
  }

  public final void e(Fragment paramFragment)
  {
    if (paramFragment.aJ)
    {
      if (this.bh)
        this.bx = true;
    }
    else
      return;
    paramFragment.aJ = false;
    a(paramFragment, this.bq, 0, 0, false);
  }

  public final void e(Fragment paramFragment, int paramInt1, int paramInt2)
  {
    if (DEBUG)
      new StringBuilder("attach: ").append(paramFragment).toString();
    if (paramFragment.az)
    {
      paramFragment.az = false;
      if (!paramFragment.ak)
      {
        if (this.bj == null)
          this.bj = new ArrayList();
        if (this.bj.contains(paramFragment))
          throw new IllegalStateException("Fragment already added: " + paramFragment);
        if (DEBUG)
          new StringBuilder("add from attach: ").append(paramFragment).toString();
        this.bj.add(paramFragment);
        paramFragment.ak = true;
        if ((paramFragment.aC) && (paramFragment.aD))
          this.bt = true;
        a(paramFragment, this.bq, paramInt1, paramInt2, false);
      }
    }
  }

  public final boolean executePendingTransactions()
  {
    return A();
  }

  final void f(Fragment paramFragment)
  {
    a(paramFragment, this.bq, 0, 0, false);
  }

  public final Fragment g(String paramString)
  {
    Fragment localFragment;
    if ((this.bj != null) && (paramString != null))
      for (int j = -1 + this.bj.size(); j >= 0; j--)
      {
        localFragment = (Fragment)this.bj.get(j);
        if ((localFragment != null) && (paramString.equals(localFragment.ax)))
          return localFragment;
      }
    if ((this.bi != null) && (paramString != null))
      for (int i = -1 + this.bi.size(); ; i--)
      {
        if (i < 0)
          break label121;
        localFragment = (Fragment)this.bi.get(i);
        if ((localFragment != null) && (paramString.equals(localFragment.ax)))
          break;
      }
    label121: return null;
  }

  public final void popBackStack()
  {
    a(new o(this), false);
  }

  public final boolean popBackStackImmediate()
  {
    z();
    A();
    return C();
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("FragmentManager{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    localStringBuilder.append(" in ");
    if (this.br != null)
      android.support.v4.c.a.a(this.br, localStringBuilder);
    while (true)
    {
      localStringBuilder.append("}}");
      return localStringBuilder.toString();
      android.support.v4.c.a.a(this.as, localStringBuilder);
    }
  }

  public final v x()
  {
    return new a(this);
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.m
 * JD-Core Version:    0.6.2
 */