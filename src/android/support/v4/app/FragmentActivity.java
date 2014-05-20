package android.support.v4.app;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.res.Configuration;
import android.content.res.Resources;
import android.content.res.Resources.NotFoundException;
import android.content.res.TypedArray;
import android.os.Build.VERSION;
import android.os.Bundle;
import android.os.Handler;
import android.os.Parcelable;
import android.util.AttributeSet;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.Menu;
import android.view.MenuItem;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import com.tencent.mm.compatible.f.a;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.Collection;
import java.util.HashMap;

public class FragmentActivity extends Activity
{
  boolean aB;
  y aL;
  boolean aM;
  boolean aN;
  final m aQ = new m();
  final k aR = new h(this);
  boolean aS;
  boolean aT;
  boolean aU;
  boolean aV;
  HashMap aW;
  boolean am;
  final Handler mHandler = new g(this);

  private static String a(View paramView)
  {
    char c1 = 'F';
    char c2 = '.';
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append(paramView.getClass().getName());
    localStringBuilder.append('{');
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(paramView)));
    localStringBuilder.append(' ');
    switch (paramView.getVisibility())
    {
    default:
      localStringBuilder.append(c2);
    case 0:
    case 4:
    case 8:
    }
    while (true)
    {
      char c3;
      label108: char c4;
      label126: char c5;
      label143: char c6;
      label161: char c7;
      label179: char c8;
      label197: char c9;
      label215: label236: char c10;
      label253: int i;
      Resources localResources;
      if (paramView.isFocusable())
      {
        c3 = c1;
        localStringBuilder.append(c3);
        if (!paramView.isEnabled())
          break label533;
        c4 = 'E';
        localStringBuilder.append(c4);
        if (!paramView.willNotDraw())
          break label539;
        c5 = c2;
        localStringBuilder.append(c5);
        if (!paramView.isHorizontalScrollBarEnabled())
          break label546;
        c6 = 'H';
        localStringBuilder.append(c6);
        if (!paramView.isVerticalScrollBarEnabled())
          break label552;
        c7 = 'V';
        localStringBuilder.append(c7);
        if (!paramView.isClickable())
          break label558;
        c8 = 'C';
        localStringBuilder.append(c8);
        if (!paramView.isLongClickable())
          break label564;
        c9 = 'L';
        localStringBuilder.append(c9);
        localStringBuilder.append(' ');
        if (!paramView.isFocused())
          break label570;
        localStringBuilder.append(c1);
        if (!paramView.isSelected())
          break label575;
        c10 = 'S';
        localStringBuilder.append(c10);
        if (paramView.isPressed())
          c2 = 'P';
        localStringBuilder.append(c2);
        localStringBuilder.append(' ');
        localStringBuilder.append(paramView.getLeft());
        localStringBuilder.append(',');
        localStringBuilder.append(paramView.getTop());
        localStringBuilder.append('-');
        localStringBuilder.append(paramView.getRight());
        localStringBuilder.append(',');
        localStringBuilder.append(paramView.getBottom());
        i = paramView.getId();
        if (i != -1)
        {
          localStringBuilder.append(" #");
          localStringBuilder.append(Integer.toHexString(i));
          localResources = paramView.getResources();
          if ((i != 0) && (localResources != null))
            switch (0xFF000000 & i)
            {
            default:
            case 2130706432:
            case 16777216:
            }
        }
      }
      try
      {
        String str1 = localResources.getResourcePackageName(i);
        while (true)
        {
          String str2 = localResources.getResourceTypeName(i);
          String str3 = localResources.getResourceEntryName(i);
          localStringBuilder.append(" ");
          localStringBuilder.append(str1);
          localStringBuilder.append(":");
          localStringBuilder.append(str2);
          localStringBuilder.append("/");
          localStringBuilder.append(str3);
          label485: localStringBuilder.append("}");
          return localStringBuilder.toString();
          localStringBuilder.append('V');
          break;
          localStringBuilder.append('I');
          break;
          localStringBuilder.append('G');
          break;
          c3 = c2;
          break label108;
          label533: c4 = c2;
          break label126;
          label539: c5 = 'D';
          break label143;
          label546: c6 = c2;
          break label161;
          label552: c7 = c2;
          break label179;
          label558: c8 = c2;
          break label197;
          label564: c9 = c2;
          break label215;
          label570: c1 = c2;
          break label236;
          label575: c10 = c2;
          break label253;
          str1 = "app";
          continue;
          str1 = "android";
        }
      }
      catch (Resources.NotFoundException localNotFoundException)
      {
        break label485;
      }
    }
  }

  private void a(String paramString, PrintWriter paramPrintWriter, View paramView)
  {
    paramPrintWriter.print(paramString);
    if (paramView == null)
      paramPrintWriter.println("null");
    while (true)
    {
      return;
      paramPrintWriter.println(a(paramView));
      if ((paramView instanceof ViewGroup))
      {
        ViewGroup localViewGroup = (ViewGroup)paramView;
        int i = localViewGroup.getChildCount();
        if (i > 0)
        {
          String str = paramString + "  ";
          for (int j = 0; j < i; j++)
            a(str, paramPrintWriter, localViewGroup.getChildAt(j));
        }
      }
    }
  }

  public static void v()
  {
  }

  public final void a(Fragment paramFragment, Intent paramIntent, int paramInt)
  {
    if (paramInt == -1)
    {
      super.startActivityForResult(paramIntent, -1);
      return;
    }
    if ((0xFFFF0000 & paramInt) != 0)
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    super.startActivityForResult(paramIntent, (1 + paramFragment.K << 16) + (0xFFFF & paramInt));
  }

  final void b(boolean paramBoolean)
  {
    if (!this.aU)
    {
      this.aU = true;
      this.aB = paramBoolean;
      this.mHandler.removeMessages(1);
      if (this.aM)
      {
        this.aM = false;
        if (this.aL != null)
        {
          if (this.aB)
            break label66;
          this.aL.T();
        }
      }
    }
    while (true)
    {
      this.aQ.K();
      return;
      label66: this.aL.U();
    }
  }

  public void dump(String paramString, FileDescriptor paramFileDescriptor, PrintWriter paramPrintWriter, String[] paramArrayOfString)
  {
    paramPrintWriter.print(paramString);
    paramPrintWriter.print("Local FragmentActivity ");
    paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this)));
    paramPrintWriter.println(" State:");
    String str = paramString + "  ";
    paramPrintWriter.print(str);
    paramPrintWriter.print("mCreated=");
    paramPrintWriter.print(this.aS);
    paramPrintWriter.print("mResumed=");
    paramPrintWriter.print(this.am);
    paramPrintWriter.print(" mStopped=");
    paramPrintWriter.print(this.aT);
    paramPrintWriter.print(" mReallyStopped=");
    paramPrintWriter.println(this.aU);
    paramPrintWriter.print(str);
    paramPrintWriter.print("mLoadersStarted=");
    paramPrintWriter.println(this.aM);
    if (this.aL != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("Loader Manager ");
      paramPrintWriter.print(Integer.toHexString(System.identityHashCode(this.aL)));
      paramPrintWriter.println(":");
      this.aL.b(paramString + "  ", paramPrintWriter);
    }
    this.aQ.dump(paramString, paramFileDescriptor, paramPrintWriter, paramArrayOfString);
    paramPrintWriter.print(paramString);
    paramPrintWriter.println("View Hierarchy:");
    a(paramString + "  ", paramPrintWriter, getWindow().getDecorView());
  }

  final void e(String paramString)
  {
    if (this.aW != null)
    {
      y localy = (y)this.aW.get(paramString);
      if ((localy != null) && (!localy.aB))
      {
        localy.Y();
        this.aW.remove(paramString);
      }
    }
  }

  final y f(String paramString)
  {
    if (this.aW == null)
      this.aW = new HashMap();
    y localy = (y)this.aW.get(paramString);
    if (localy != null)
      localy.a(this);
    return localy;
  }

  protected void onActivityResult(int paramInt1, int paramInt2, Intent paramIntent)
  {
    this.aQ.F();
    int i = paramInt1 >> 16;
    if (i != 0)
    {
      int j = i - 1;
      if ((this.aQ.bi == null) || (j < 0) || (j >= this.aQ.bi.size()))
      {
        new StringBuilder("Activity result fragment index out of range: 0x").append(Integer.toHexString(paramInt1)).toString();
        return;
      }
      Fragment localFragment = (Fragment)this.aQ.bi.get(j);
      if (localFragment == null)
      {
        new StringBuilder("Activity result no fragment exists for index: 0x").append(Integer.toHexString(paramInt1)).toString();
        return;
      }
      localFragment.onActivityResult(0xFFFF & paramInt1, paramInt2, paramIntent);
      return;
    }
    super.onActivityResult(paramInt1, paramInt2, paramIntent);
  }

  public void onBackPressed()
  {
    if (!this.aQ.popBackStackImmediate())
      finish();
  }

  public void onConfigurationChanged(Configuration paramConfiguration)
  {
    super.onConfigurationChanged(paramConfiguration);
    this.aQ.dispatchConfigurationChanged(paramConfiguration);
  }

  protected void onCreate(Bundle paramBundle)
  {
    this.aQ.a(this, this.aR, null);
    if (getLayoutInflater().getFactory() == null)
      getLayoutInflater().setFactory(this);
    super.onCreate(paramBundle);
    j localj = (j)getLastNonConfigurationInstance();
    if (localj != null)
      this.aW = localj.bd;
    Parcelable localParcelable;
    m localm;
    if (paramBundle != null)
    {
      localParcelable = paramBundle.getParcelable("android:support:fragments");
      localm = this.aQ;
      if (localj == null)
        break label100;
    }
    label100: for (ArrayList localArrayList = localj.bc; ; localArrayList = null)
    {
      localm.a(localParcelable, localArrayList);
      this.aQ.G();
      return;
    }
  }

  public boolean onCreatePanelMenu(int paramInt, Menu paramMenu)
  {
    if (paramInt == 0)
    {
      boolean bool = super.onCreatePanelMenu(paramInt, paramMenu) | this.aQ.b(paramMenu, getMenuInflater());
      if (Build.VERSION.SDK_INT >= 11)
        return bool;
      return true;
    }
    return super.onCreatePanelMenu(paramInt, paramMenu);
  }

  public View onCreateView(String paramString, Context paramContext, AttributeSet paramAttributeSet)
  {
    if (!"fragment".equals(paramString))
      return super.onCreateView(paramString, paramContext, paramAttributeSet);
    String str1 = paramAttributeSet.getAttributeValue(null, "class");
    TypedArray localTypedArray = paramContext.obtainStyledAttributes(paramAttributeSet, i.aY);
    if (str1 == null)
      str1 = localTypedArray.getString(0);
    int i = localTypedArray.getResourceId(1, -1);
    String str2 = localTypedArray.getString(2);
    localTypedArray.recycle();
    Object localObject = null;
    if (i != -1)
      localObject = this.aQ.b(i);
    if ((localObject == null) && (str2 != null))
      localObject = this.aQ.g(str2);
    if (localObject == null)
      localObject = this.aQ.b(0);
    if (m.DEBUG)
      new StringBuilder("onCreateView: id=0x").append(Integer.toHexString(i)).append(" fname=").append(str1).append(" existing=").append(localObject).toString();
    int j;
    if (localObject == null)
    {
      Fragment localFragment = Fragment.a(this, str1);
      localFragment.an = true;
      if (i != 0)
      {
        j = i;
        localFragment.av = j;
        localFragment.aw = 0;
        localFragment.ax = str2;
        localFragment.ao = true;
        localFragment.ar = this.aQ;
        localFragment.h();
        this.aQ.a(localFragment, true);
        localObject = localFragment;
      }
    }
    while (true)
    {
      if (((Fragment)localObject).aH != null)
        break label436;
      throw new IllegalStateException("Fragment " + str1 + " did not create a view.");
      j = 0;
      break;
      if (((Fragment)localObject).ao)
        throw new IllegalArgumentException(paramAttributeSet.getPositionDescription() + ": Duplicate id 0x" + Integer.toHexString(i) + ", tag " + str2 + ", or parent id 0x" + Integer.toHexString(0) + " with another fragment for " + str1);
      ((Fragment)localObject).ao = true;
      if (!((Fragment)localObject).aB)
        ((Fragment)localObject).h();
      this.aQ.f((Fragment)localObject);
    }
    label436: if (i != 0)
      ((Fragment)localObject).aH.setId(i);
    if (((Fragment)localObject).aH.getTag() == null)
      ((Fragment)localObject).aH.setTag(str2);
    return ((Fragment)localObject).aH;
  }

  protected void onDestroy()
  {
    super.onDestroy();
    b(false);
    this.aQ.M();
    if (this.aL != null)
      this.aL.Y();
  }

  public boolean onKeyDown(int paramInt, KeyEvent paramKeyEvent)
  {
    if ((Build.VERSION.SDK_INT < 5) && (paramInt == 4) && (paramKeyEvent.getRepeatCount() == 0))
    {
      onBackPressed();
      return true;
    }
    return super.onKeyDown(paramInt, paramKeyEvent);
  }

  public void onLowMemory()
  {
    super.onLowMemory();
    this.aQ.N();
  }

  public boolean onMenuItemSelected(int paramInt, MenuItem paramMenuItem)
  {
    if (!(paramMenuItem.getTitleCondensed() instanceof String))
      a.a(paramMenuItem, getClass().getName());
    if (super.onMenuItemSelected(paramInt, paramMenuItem))
      return true;
    switch (paramInt)
    {
    default:
      return false;
    case 0:
      return this.aQ.c(paramMenuItem);
    case 6:
    }
    return this.aQ.d(paramMenuItem);
  }

  protected void onNewIntent(Intent paramIntent)
  {
    super.onNewIntent(paramIntent);
    this.aQ.F();
  }

  public void onPanelClosed(int paramInt, Menu paramMenu)
  {
    switch (paramInt)
    {
    default:
    case 0:
    }
    while (true)
    {
      super.onPanelClosed(paramInt, paramMenu);
      return;
      this.aQ.d(paramMenu);
    }
  }

  protected void onPause()
  {
    super.onPause();
    this.am = false;
    if (this.mHandler.hasMessages(2))
    {
      this.mHandler.removeMessages(2);
      this.aQ.dispatchResume();
    }
    this.aQ.J();
  }

  protected void onPostResume()
  {
    super.onPostResume();
    this.mHandler.removeMessages(2);
    this.aQ.dispatchResume();
    this.aQ.A();
  }

  public boolean onPreparePanel(int paramInt, View paramView, Menu paramMenu)
  {
    if ((paramInt == 0) && (paramMenu != null))
    {
      if (this.aV)
      {
        this.aV = false;
        paramMenu.clear();
        onCreatePanelMenu(paramInt, paramMenu);
      }
      return super.onPreparePanel(paramInt, paramView, paramMenu) | this.aQ.c(paramMenu);
    }
    return super.onPreparePanel(paramInt, paramView, paramMenu);
  }

  protected void onResume()
  {
    super.onResume();
    this.mHandler.sendEmptyMessage(2);
    this.am = true;
    this.aQ.A();
  }

  public final Object onRetainNonConfigurationInstance()
  {
    int i = 0;
    if (this.aT)
      b(true);
    ArrayList localArrayList = this.aQ.D();
    int j;
    if (this.aW != null)
    {
      y[] arrayOfy = new y[this.aW.size()];
      this.aW.values().toArray(arrayOfy);
      j = 0;
      if (i < arrayOfy.length)
      {
        y localy = arrayOfy[i];
        if (localy.aB)
          j = 1;
        while (true)
        {
          i++;
          break;
          localy.Y();
          this.aW.remove(localy.af);
        }
      }
    }
    else
    {
      j = 0;
    }
    if ((localArrayList == null) && (j == 0))
      return null;
    j localj = new j();
    localj.aZ = null;
    localj.ba = null;
    localj.bb = null;
    localj.bc = localArrayList;
    localj.bd = this.aW;
    return localj;
  }

  protected void onSaveInstanceState(Bundle paramBundle)
  {
    super.onSaveInstanceState(paramBundle);
    Parcelable localParcelable = this.aQ.E();
    if (localParcelable != null)
      paramBundle.putParcelable("android:support:fragments", localParcelable);
  }

  protected void onStart()
  {
    int i = 0;
    super.onStart();
    this.aT = false;
    this.aU = false;
    this.mHandler.removeMessages(1);
    if (!this.aS)
    {
      this.aS = true;
      this.aQ.H();
    }
    this.aQ.F();
    this.aQ.A();
    if (!this.aM)
    {
      this.aM = true;
      if (this.aL == null)
        break label155;
      this.aL.S();
    }
    while (true)
    {
      this.aN = true;
      this.aQ.I();
      if (this.aW == null)
        break;
      y[] arrayOfy = new y[this.aW.size()];
      this.aW.values().toArray(arrayOfy);
      while (i < arrayOfy.length)
      {
        y localy = arrayOfy[i];
        localy.V();
        localy.X();
        i++;
      }
      label155: if (!this.aN)
      {
        this.aL = f(null);
        if ((this.aL != null) && (!this.aL.cb))
          this.aL.S();
      }
    }
  }

  protected void onStop()
  {
    super.onStop();
    this.aT = true;
    this.mHandler.sendEmptyMessage(1);
    this.aQ.dispatchStop();
  }

  public void startActivityForResult(Intent paramIntent, int paramInt)
  {
    if ((paramInt != -1) && ((0xFFFF0000 & paramInt) != 0))
      throw new IllegalArgumentException("Can only use lower 16 bits for requestCode");
    super.startActivityForResult(paramIntent, paramInt);
  }

  protected final void t()
  {
    this.aQ.dispatchResume();
  }

  public void u()
  {
    if (Build.VERSION.SDK_INT >= 11)
    {
      invalidateOptionsMenu();
      return;
    }
    this.aV = true;
  }

  public final l w()
  {
    return this.aQ;
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.FragmentActivity
 * JD-Core Version:    0.6.2
 */