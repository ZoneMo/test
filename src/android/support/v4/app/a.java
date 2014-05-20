package android.support.v4.app;

import java.io.PrintWriter;
import java.util.ArrayList;

final class a extends v
  implements Runnable
{
  int A;
  int B;
  int C;
  int D;
  int E;
  int F;
  int G;
  boolean H;
  boolean I = true;
  boolean J;
  int K = -1;
  int L;
  CharSequence M;
  int N;
  CharSequence O;
  String mName;
  final m t;
  b u;
  b v;

  public a(m paramm)
  {
    this.t = paramm;
  }

  private int a(boolean paramBoolean)
  {
    if (this.J)
      throw new IllegalStateException("commit already called");
    if (m.DEBUG)
    {
      new StringBuilder("Commit: ").append(this).toString();
      a("  ", new PrintWriter(new android.support.v4.c.b("FragmentManager")));
    }
    this.J = true;
    if (this.H);
    for (this.K = this.t.a(this); ; this.K = -1)
    {
      this.t.a(this, paramBoolean);
      return this.K;
    }
  }

  private void b(int paramInt, Fragment paramFragment, String paramString)
  {
    paramFragment.ar = this.t;
    if (paramString != null)
    {
      if ((paramFragment.ax != null) && (!paramString.equals(paramFragment.ax)))
        throw new IllegalStateException("Can't change tag of fragment " + paramFragment + ": was " + paramFragment.ax + " now " + paramString);
      paramFragment.ax = paramString;
    }
    if (paramInt != 0)
    {
      if ((paramFragment.av != 0) && (paramFragment.av != paramInt))
        throw new IllegalStateException("Can't change container ID of fragment " + paramFragment + ": was " + paramFragment.av + " now " + paramInt);
      paramFragment.av = paramInt;
      paramFragment.aw = paramInt;
    }
    b localb = new b();
    localb.S = 1;
    localb.T = paramFragment;
    a(localb);
  }

  public final v a(int paramInt, Fragment paramFragment)
  {
    b(paramInt, paramFragment, null);
    return this;
  }

  public final v a(int paramInt, Fragment paramFragment, String paramString)
  {
    b(paramInt, paramFragment, paramString);
    return this;
  }

  public final v a(Fragment paramFragment)
  {
    b localb = new b();
    localb.S = 3;
    localb.T = paramFragment;
    a(localb);
    return this;
  }

  final void a(int paramInt)
  {
    if (!this.H);
    while (true)
    {
      return;
      if (m.DEBUG)
        new StringBuilder("Bump nesting in ").append(this).append(" by ").append(paramInt).toString();
      for (b localb = this.u; localb != null; localb = localb.P)
      {
        if (localb.T != null)
        {
          Fragment localFragment2 = localb.T;
          localFragment2.aq = (paramInt + localFragment2.aq);
          if (m.DEBUG)
            new StringBuilder("Bump nesting of ").append(localb.T).append(" to ").append(localb.T.aq).toString();
        }
        if (localb.Y != null)
          for (int i = -1 + localb.Y.size(); i >= 0; i--)
          {
            Fragment localFragment1 = (Fragment)localb.Y.get(i);
            localFragment1.aq = (paramInt + localFragment1.aq);
            if (m.DEBUG)
              new StringBuilder("Bump nesting of ").append(localFragment1).append(" to ").append(localFragment1.aq).toString();
          }
      }
    }
  }

  final void a(b paramb)
  {
    if (this.u == null)
    {
      this.v = paramb;
      this.u = paramb;
    }
    while (true)
    {
      paramb.U = this.B;
      paramb.V = this.C;
      paramb.W = this.D;
      paramb.X = this.E;
      this.A = (1 + this.A);
      return;
      paramb.Q = this.v;
      this.v.P = paramb;
      this.v = paramb;
    }
  }

  public final void a(String paramString, PrintWriter paramPrintWriter)
  {
    a(paramString, paramPrintWriter, true);
  }

  public final void a(String paramString, PrintWriter paramPrintWriter, boolean paramBoolean)
  {
    if (paramBoolean)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.print("mName=");
      paramPrintWriter.print(this.mName);
      paramPrintWriter.print(" mIndex=");
      paramPrintWriter.print(this.K);
      paramPrintWriter.print(" mCommitted=");
      paramPrintWriter.println(this.J);
      if (this.F != 0)
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mTransition=#");
        paramPrintWriter.print(Integer.toHexString(this.F));
        paramPrintWriter.print(" mTransitionStyle=#");
        paramPrintWriter.println(Integer.toHexString(this.G));
      }
      if ((this.B != 0) || (this.C != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(this.B));
        paramPrintWriter.print(" mExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(this.C));
      }
      if ((this.D != 0) || (this.E != 0))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mPopEnterAnim=#");
        paramPrintWriter.print(Integer.toHexString(this.D));
        paramPrintWriter.print(" mPopExitAnim=#");
        paramPrintWriter.println(Integer.toHexString(this.E));
      }
      if ((this.L != 0) || (this.M != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(this.L));
        paramPrintWriter.print(" mBreadCrumbTitleText=");
        paramPrintWriter.println(this.M);
      }
      if ((this.N != 0) || (this.O != null))
      {
        paramPrintWriter.print(paramString);
        paramPrintWriter.print("mBreadCrumbShortTitleRes=#");
        paramPrintWriter.print(Integer.toHexString(this.N));
        paramPrintWriter.print(" mBreadCrumbShortTitleText=");
        paramPrintWriter.println(this.O);
      }
    }
    if (this.u != null)
    {
      paramPrintWriter.print(paramString);
      paramPrintWriter.println("Operations:");
      String str1 = paramString + "    ";
      b localb1 = this.u;
      int i = 0;
      b localb2 = localb1;
      while (localb2 != null)
      {
        String str2;
        int j;
        switch (localb2.S)
        {
        default:
          str2 = "cmd=" + localb2.S;
          paramPrintWriter.print(paramString);
          paramPrintWriter.print("  Op #");
          paramPrintWriter.print(i);
          paramPrintWriter.print(": ");
          paramPrintWriter.print(str2);
          paramPrintWriter.print(" ");
          paramPrintWriter.println(localb2.T);
          if (paramBoolean)
          {
            if ((localb2.U != 0) || (localb2.V != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("enterAnim=#");
              paramPrintWriter.print(Integer.toHexString(localb2.U));
              paramPrintWriter.print(" exitAnim=#");
              paramPrintWriter.println(Integer.toHexString(localb2.V));
            }
            if ((localb2.W != 0) || (localb2.X != 0))
            {
              paramPrintWriter.print(paramString);
              paramPrintWriter.print("popEnterAnim=#");
              paramPrintWriter.print(Integer.toHexString(localb2.W));
              paramPrintWriter.print(" popExitAnim=#");
              paramPrintWriter.println(Integer.toHexString(localb2.X));
            }
          }
          if ((localb2.Y == null) || (localb2.Y.size() <= 0))
            break label793;
          j = 0;
          label630: if (j >= localb2.Y.size())
            break label793;
          paramPrintWriter.print(str1);
          if (localb2.Y.size() == 1)
            paramPrintWriter.print("Removed: ");
          break;
        case 0:
        case 1:
        case 2:
        case 3:
        case 4:
        case 5:
        case 6:
        case 7:
        }
        while (true)
        {
          paramPrintWriter.println(localb2.Y.get(j));
          j++;
          break label630;
          str2 = "NULL";
          break;
          str2 = "ADD";
          break;
          str2 = "REPLACE";
          break;
          str2 = "REMOVE";
          break;
          str2 = "HIDE";
          break;
          str2 = "SHOW";
          break;
          str2 = "DETACH";
          break;
          str2 = "ATTACH";
          break;
          if (j == 0)
            paramPrintWriter.println("Removed:");
          paramPrintWriter.print(str1);
          paramPrintWriter.print("  #");
          paramPrintWriter.print(j);
          paramPrintWriter.print(": ");
        }
        label793: localb2 = localb2.P;
        i++;
      }
    }
  }

  public final v b()
  {
    if (this.H)
      throw new IllegalStateException("This transaction is already being added to the back stack");
    this.I = false;
    return this;
  }

  public final v b(Fragment paramFragment)
  {
    b localb = new b();
    localb.S = 6;
    localb.T = paramFragment;
    a(localb);
    return this;
  }

  public final v c(Fragment paramFragment)
  {
    b localb = new b();
    localb.S = 7;
    localb.T = paramFragment;
    a(localb);
    return this;
  }

  public final void c()
  {
    if (m.DEBUG)
    {
      new StringBuilder("popFromBackStack: ").append(this).toString();
      a("  ", new PrintWriter(new android.support.v4.c.b("FragmentManager")));
    }
    a(-1);
    b localb = this.v;
    if (localb != null)
    {
      switch (localb.S)
      {
      default:
        throw new IllegalArgumentException("Unknown cmd: " + localb.S);
      case 1:
        Fragment localFragment8 = localb.T;
        localFragment8.aF = localb.X;
        this.t.a(localFragment8, m.e(this.F), this.G);
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      }
      while (true)
      {
        localb = localb.Q;
        break;
        Fragment localFragment6 = localb.T;
        if (localFragment6 != null)
        {
          localFragment6.aF = localb.X;
          this.t.a(localFragment6, m.e(this.F), this.G);
        }
        if (localb.Y != null)
        {
          for (int i = 0; i < localb.Y.size(); i++)
          {
            Fragment localFragment7 = (Fragment)localb.Y.get(i);
            localFragment7.aF = localb.W;
            this.t.a(localFragment7, false);
          }
          Fragment localFragment5 = localb.T;
          localFragment5.aF = localb.W;
          this.t.a(localFragment5, false);
          continue;
          Fragment localFragment4 = localb.T;
          localFragment4.aF = localb.W;
          this.t.c(localFragment4, m.e(this.F), this.G);
          continue;
          Fragment localFragment3 = localb.T;
          localFragment3.aF = localb.X;
          this.t.b(localFragment3, m.e(this.F), this.G);
          continue;
          Fragment localFragment2 = localb.T;
          localFragment2.aF = localb.W;
          this.t.e(localFragment2, m.e(this.F), this.G);
          continue;
          Fragment localFragment1 = localb.T;
          localFragment1.aF = localb.W;
          this.t.d(localFragment1, m.e(this.F), this.G);
        }
      }
    }
    this.t.a(this.t.bq, m.e(this.F), this.G, true);
    if (this.K >= 0)
    {
      this.t.d(this.K);
      this.K = -1;
    }
  }

  public final int commit()
  {
    return a(false);
  }

  public final int commitAllowingStateLoss()
  {
    return a(true);
  }

  public final boolean isEmpty()
  {
    return this.A == 0;
  }

  public final void run()
  {
    if (m.DEBUG)
      new StringBuilder("Run: ").append(this).toString();
    if ((this.H) && (this.K < 0))
      throw new IllegalStateException("addToBackStack() called after commit()");
    a(1);
    b localb = this.u;
    if (localb != null)
    {
      switch (localb.S)
      {
      default:
        throw new IllegalArgumentException("Unknown cmd: " + localb.S);
      case 1:
        Fragment localFragment9 = localb.T;
        localFragment9.aF = localb.U;
        this.t.a(localFragment9, false);
      case 2:
      case 3:
      case 4:
      case 5:
      case 6:
      case 7:
      }
      while (true)
      {
        localb = localb.P;
        break;
        Fragment localFragment6 = localb.T;
        Fragment localFragment7;
        if (this.t.bj != null)
        {
          int i = 0;
          localFragment7 = localFragment6;
          if (i < this.t.bj.size())
          {
            Fragment localFragment8 = (Fragment)this.t.bj.get(i);
            if (m.DEBUG)
              new StringBuilder("OP_REPLACE: adding=").append(localFragment7).append(" old=").append(localFragment8).toString();
            if ((localFragment7 == null) || (localFragment8.aw == localFragment7.aw))
            {
              if (localFragment8 != localFragment7)
                break label299;
              localFragment7 = null;
              localb.T = null;
            }
            while (true)
            {
              i++;
              break;
              label299: if (localb.Y == null)
                localb.Y = new ArrayList();
              localb.Y.add(localFragment8);
              localFragment8.aF = localb.V;
              if (this.H)
              {
                localFragment8.aq = (1 + localFragment8.aq);
                if (m.DEBUG)
                  new StringBuilder("Bump nesting of ").append(localFragment8).append(" to ").append(localFragment8.aq).toString();
              }
              this.t.a(localFragment8, this.F, this.G);
            }
          }
        }
        else
        {
          localFragment7 = localFragment6;
        }
        if (localFragment7 != null)
        {
          localFragment7.aF = localb.U;
          this.t.a(localFragment7, false);
          continue;
          Fragment localFragment5 = localb.T;
          localFragment5.aF = localb.V;
          this.t.a(localFragment5, this.F, this.G);
          continue;
          Fragment localFragment4 = localb.T;
          localFragment4.aF = localb.V;
          this.t.b(localFragment4, this.F, this.G);
          continue;
          Fragment localFragment3 = localb.T;
          localFragment3.aF = localb.U;
          this.t.c(localFragment3, this.F, this.G);
          continue;
          Fragment localFragment2 = localb.T;
          localFragment2.aF = localb.V;
          this.t.d(localFragment2, this.F, this.G);
          continue;
          Fragment localFragment1 = localb.T;
          localFragment1.aF = localb.U;
          this.t.e(localFragment1, this.F, this.G);
        }
      }
    }
    this.t.a(this.t.bq, this.F, this.G, true);
    if (this.H)
      this.t.b(this);
  }

  public final String toString()
  {
    StringBuilder localStringBuilder = new StringBuilder(128);
    localStringBuilder.append("BackStackEntry{");
    localStringBuilder.append(Integer.toHexString(System.identityHashCode(this)));
    if (this.K >= 0)
    {
      localStringBuilder.append(" #");
      localStringBuilder.append(this.K);
    }
    if (this.mName != null)
    {
      localStringBuilder.append(" ");
      localStringBuilder.append(this.mName);
    }
    localStringBuilder.append("}");
    return localStringBuilder.toString();
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     android.support.v4.app.a
 * JD-Core Version:    0.6.2
 */