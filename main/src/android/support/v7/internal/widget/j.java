package android.support.v7.internal.widget;

import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.ActivityInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.database.DataSetObservable;
import android.os.AsyncTask;
import android.os.Build.VERSION;
import android.text.TextUtils;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.concurrent.Executor;

public class j extends DataSetObservable
{
  private static final String LOG_TAG = j.class.getSimpleName();
  private static final Object mS = new Object();
  private static final Map mT = new HashMap();
  private Intent iW;
  private final Context mContext;
  private final Object mU;
  private final List mV;
  private final List mW;
  private final String mX;
  private l mY;
  private int mZ;
  private boolean na;
  private boolean nb;
  private boolean nc;
  private boolean nd;
  private n ne;

  private boolean a(m paramm)
  {
    boolean bool = this.mW.add(paramm);
    if (bool)
    {
      this.nc = true;
      cV();
      if (!this.nb)
        throw new IllegalStateException("No preceding call to #readHistoricalData");
      if (this.nc)
      {
        this.nc = false;
        if (!TextUtils.isEmpty(this.mX))
        {
          if (Build.VERSION.SDK_INT < 11)
            break label137;
          o localo1 = new o(this, (byte)0);
          Executor localExecutor = AsyncTask.SERIAL_EXECUTOR;
          Object[] arrayOfObject1 = new Object[2];
          arrayOfObject1[0] = new ArrayList(this.mW);
          arrayOfObject1[1] = this.mX;
          localo1.executeOnExecutor(localExecutor, arrayOfObject1);
        }
      }
    }
    while (true)
    {
      cU();
      notifyChanged();
      return bool;
      label137: o localo2 = new o(this, (byte)0);
      Object[] arrayOfObject2 = new Object[2];
      arrayOfObject2[0] = new ArrayList(this.mW);
      arrayOfObject2[1] = this.mX;
      localo2.execute(arrayOfObject2);
    }
  }

  private void cT()
  {
    boolean bool = true;
    int i;
    if ((this.nd) && (this.iW != null))
    {
      this.nd = false;
      this.mV.clear();
      List localList = this.mContext.getPackageManager().queryIntentActivities(this.iW, 0);
      int k = localList.size();
      for (int m = 0; m < k; m++)
      {
        ResolveInfo localResolveInfo = (ResolveInfo)localList.get(m);
        this.mV.add(new k(this, localResolveInfo));
      }
      i = bool;
      if ((!this.na) || (!this.nc) || (TextUtils.isEmpty(this.mX)))
        break label173;
      this.na = false;
      this.nb = bool;
      cW();
    }
    while (true)
    {
      int j = i | bool;
      cV();
      if (j != 0)
      {
        cU();
        notifyChanged();
      }
      return;
      i = 0;
      break;
      label173: bool = false;
    }
  }

  private boolean cU()
  {
    if ((this.mY != null) && (this.iW != null) && (!this.mV.isEmpty()) && (!this.mW.isEmpty()))
    {
      Collections.unmodifiableList(this.mW);
      return true;
    }
    return false;
  }

  private void cV()
  {
    int i = this.mW.size() - this.mZ;
    if (i <= 0);
    while (true)
    {
      return;
      this.nc = true;
      for (int j = 0; j < i; j++)
        this.mW.remove(0);
    }
  }

  // ERROR //
  private void cW()
  {
    // Byte code:
    //   0: aload_0
    //   1: getfield 56	android/support/v7/internal/widget/j:mContext	Landroid/content/Context;
    //   4: aload_0
    //   5: getfield 81	android/support/v7/internal/widget/j:mX	Ljava/lang/String;
    //   8: invokevirtual 194	android/content/Context:openFileInput	(Ljava/lang/String;)Ljava/io/FileInputStream;
    //   11: astore_2
    //   12: invokestatic 200	android/util/Xml:newPullParser	()Lorg/xmlpull/v1/XmlPullParser;
    //   15: astore 13
    //   17: aload 13
    //   19: aload_2
    //   20: aconst_null
    //   21: invokeinterface 206 3 0
    //   26: iconst_0
    //   27: istore 14
    //   29: iload 14
    //   31: iconst_1
    //   32: if_icmpeq +21 -> 53
    //   35: iload 14
    //   37: iconst_2
    //   38: if_icmpeq +15 -> 53
    //   41: aload 13
    //   43: invokeinterface 209 1 0
    //   48: istore 14
    //   50: goto -21 -> 29
    //   53: ldc 211
    //   55: aload 13
    //   57: invokeinterface 214 1 0
    //   62: invokevirtual 219	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   65: ifne +48 -> 113
    //   68: new 188	org/xmlpull/v1/XmlPullParserException
    //   71: dup
    //   72: ldc 221
    //   74: invokespecial 222	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   77: athrow
    //   78: astore 9
    //   80: getstatic 40	android/support/v7/internal/widget/j:LOG_TAG	Ljava/lang/String;
    //   83: pop
    //   84: new 224	java/lang/StringBuilder
    //   87: dup
    //   88: ldc 226
    //   90: invokespecial 227	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   93: aload_0
    //   94: getfield 81	android/support/v7/internal/widget/j:mX	Ljava/lang/String;
    //   97: invokevirtual 231	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   100: invokevirtual 234	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   103: pop
    //   104: aload_2
    //   105: ifnull +7 -> 112
    //   108: aload_2
    //   109: invokevirtual 239	java/io/FileInputStream:close	()V
    //   112: return
    //   113: aload_0
    //   114: getfield 59	android/support/v7/internal/widget/j:mW	Ljava/util/List;
    //   117: astore 15
    //   119: aload 15
    //   121: invokeinterface 139 1 0
    //   126: aload 13
    //   128: invokeinterface 209 1 0
    //   133: istore 16
    //   135: iload 16
    //   137: iconst_1
    //   138: if_icmpeq +144 -> 282
    //   141: iload 16
    //   143: iconst_3
    //   144: if_icmpeq -18 -> 126
    //   147: iload 16
    //   149: iconst_4
    //   150: if_icmpeq -24 -> 126
    //   153: ldc 241
    //   155: aload 13
    //   157: invokeinterface 214 1 0
    //   162: invokevirtual 219	java/lang/String:equals	(Ljava/lang/Object;)Z
    //   165: ifne +51 -> 216
    //   168: new 188	org/xmlpull/v1/XmlPullParserException
    //   171: dup
    //   172: ldc 243
    //   174: invokespecial 222	org/xmlpull/v1/XmlPullParserException:<init>	(Ljava/lang/String;)V
    //   177: athrow
    //   178: astore 5
    //   180: getstatic 40	android/support/v7/internal/widget/j:LOG_TAG	Ljava/lang/String;
    //   183: pop
    //   184: new 224	java/lang/StringBuilder
    //   187: dup
    //   188: ldc 226
    //   190: invokespecial 227	java/lang/StringBuilder:<init>	(Ljava/lang/String;)V
    //   193: aload_0
    //   194: getfield 81	android/support/v7/internal/widget/j:mX	Ljava/lang/String;
    //   197: invokevirtual 231	java/lang/StringBuilder:append	(Ljava/lang/String;)Ljava/lang/StringBuilder;
    //   200: invokevirtual 234	java/lang/StringBuilder:toString	()Ljava/lang/String;
    //   203: pop
    //   204: aload_2
    //   205: ifnull -93 -> 112
    //   208: aload_2
    //   209: invokevirtual 239	java/io/FileInputStream:close	()V
    //   212: return
    //   213: astore 8
    //   215: return
    //   216: aload 15
    //   218: new 245	android/support/v7/internal/widget/m
    //   221: dup
    //   222: aload 13
    //   224: aconst_null
    //   225: ldc 247
    //   227: invokeinterface 251 3 0
    //   232: aload 13
    //   234: aconst_null
    //   235: ldc 253
    //   237: invokeinterface 251 3 0
    //   242: invokestatic 259	java/lang/Long:parseLong	(Ljava/lang/String;)J
    //   245: aload 13
    //   247: aconst_null
    //   248: ldc_w 261
    //   251: invokeinterface 251 3 0
    //   256: invokestatic 267	java/lang/Float:parseFloat	(Ljava/lang/String;)F
    //   259: invokespecial 270	android/support/v7/internal/widget/m:<init>	(Ljava/lang/String;JF)V
    //   262: invokeinterface 65 2 0
    //   267: pop
    //   268: goto -142 -> 126
    //   271: astore_3
    //   272: aload_2
    //   273: ifnull +7 -> 280
    //   276: aload_2
    //   277: invokevirtual 239	java/io/FileInputStream:close	()V
    //   280: aload_3
    //   281: athrow
    //   282: aload_2
    //   283: ifnull -171 -> 112
    //   286: aload_2
    //   287: invokevirtual 239	java/io/FileInputStream:close	()V
    //   290: return
    //   291: astore 17
    //   293: return
    //   294: astore 12
    //   296: return
    //   297: astore 4
    //   299: goto -19 -> 280
    //   302: astore_1
    //   303: return
    //
    // Exception table:
    //   from	to	target	type
    //   12	26	78	org/xmlpull/v1/XmlPullParserException
    //   41	50	78	org/xmlpull/v1/XmlPullParserException
    //   53	78	78	org/xmlpull/v1/XmlPullParserException
    //   113	126	78	org/xmlpull/v1/XmlPullParserException
    //   126	135	78	org/xmlpull/v1/XmlPullParserException
    //   153	178	78	org/xmlpull/v1/XmlPullParserException
    //   216	268	78	org/xmlpull/v1/XmlPullParserException
    //   12	26	178	java/io/IOException
    //   41	50	178	java/io/IOException
    //   53	78	178	java/io/IOException
    //   113	126	178	java/io/IOException
    //   126	135	178	java/io/IOException
    //   153	178	178	java/io/IOException
    //   216	268	178	java/io/IOException
    //   208	212	213	java/io/IOException
    //   12	26	271	finally
    //   41	50	271	finally
    //   53	78	271	finally
    //   80	104	271	finally
    //   113	126	271	finally
    //   126	135	271	finally
    //   153	178	271	finally
    //   180	204	271	finally
    //   216	268	271	finally
    //   286	290	291	java/io/IOException
    //   108	112	294	java/io/IOException
    //   276	280	297	java/io/IOException
    //   0	12	302	java/io/FileNotFoundException
  }

  public final ResolveInfo G(int paramInt)
  {
    synchronized (this.mU)
    {
      cT();
      ResolveInfo localResolveInfo = ((k)this.mV.get(paramInt)).resolveInfo;
      return localResolveInfo;
    }
  }

  public final Intent H(int paramInt)
  {
    synchronized (this.mU)
    {
      if (this.iW == null)
        return null;
      cT();
      k localk = (k)this.mV.get(paramInt);
      ComponentName localComponentName = new ComponentName(localk.resolveInfo.activityInfo.packageName, localk.resolveInfo.activityInfo.name);
      Intent localIntent = new Intent(this.iW);
      localIntent.setComponent(localComponentName);
      if (this.ne != null)
      {
        new Intent(localIntent);
        if (this.ne.cY())
          return null;
      }
      a(new m(localComponentName, System.currentTimeMillis(), 1.0F));
      return localIntent;
    }
  }

  public final void I(int paramInt)
  {
    synchronized (this.mU)
    {
      cT();
      k localk1 = (k)this.mV.get(paramInt);
      k localk2 = (k)this.mV.get(0);
      if (localk2 != null)
      {
        f = 5.0F + (localk2.weight - localk1.weight);
        a(new m(new ComponentName(localk1.resolveInfo.activityInfo.packageName, localk1.resolveInfo.activityInfo.name), System.currentTimeMillis(), f));
        return;
      }
      float f = 1.0F;
    }
  }

  public final int a(ResolveInfo paramResolveInfo)
  {
    synchronized (this.mU)
    {
      cT();
      List localList = this.mV;
      int i = localList.size();
      for (int j = 0; j < i; j++)
        if (((k)localList.get(j)).resolveInfo == paramResolveInfo)
          return j;
      return -1;
    }
  }

  public final int cR()
  {
    synchronized (this.mU)
    {
      cT();
      int i = this.mV.size();
      return i;
    }
  }

  public final ResolveInfo cS()
  {
    synchronized (this.mU)
    {
      cT();
      if (!this.mV.isEmpty())
      {
        ResolveInfo localResolveInfo = ((k)this.mV.get(0)).resolveInfo;
        return localResolveInfo;
      }
      return null;
    }
  }

  public final int getHistorySize()
  {
    synchronized (this.mU)
    {
      cT();
      int i = this.mW.size();
      return i;
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v7.internal.widget.j
 * JD-Core Version:    0.6.2
 */