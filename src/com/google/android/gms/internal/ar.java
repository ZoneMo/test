package com.google.android.gms.internal;

import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

public abstract class ar
{
  protected static Object a(ar.a parama, Object paramObject)
  {
    if (ar.a.c(parama) != null)
      paramObject = parama.N(paramObject);
    return paramObject;
  }

  private static void a(StringBuilder paramStringBuilder, ar.a parama, Object paramObject)
  {
    if (parama.ik() == 11)
    {
      paramStringBuilder.append(((ar)parama.iq().cast(paramObject)).toString());
      return;
    }
    if (parama.ik() == 7)
    {
      paramStringBuilder.append("\"");
      paramStringBuilder.append(ag.W((String)paramObject));
      paramStringBuilder.append("\"");
      return;
    }
    paramStringBuilder.append(paramObject);
  }

  private static void a(StringBuilder paramStringBuilder, ar.a parama, ArrayList paramArrayList)
  {
    paramStringBuilder.append("[");
    int i = 0;
    int j = paramArrayList.size();
    while (i < j)
    {
      if (i > 0)
        paramStringBuilder.append(",");
      Object localObject = paramArrayList.get(i);
      if (localObject != null)
        a(paramStringBuilder, parama, localObject);
      i++;
    }
    paramStringBuilder.append("]");
  }

  protected boolean a(ar.a parama)
  {
    if (parama.im() == 11)
    {
      if (parama.in())
      {
        parama.io();
        throw new UnsupportedOperationException("Concrete type arrays not supported");
      }
      parama.io();
      throw new UnsupportedOperationException("Concrete types not supported");
    }
    parama.io();
    return ij();
  }

  protected Object b(ar.a parama)
  {
    String str1 = parama.io();
    if (parama.iq() != null)
    {
      parama.io();
      ii();
      i.a(true, "Concrete field shouldn't be value object: " + parama.io());
      parama.in();
      try
      {
        String str2 = "get" + Character.toUpperCase(str1.charAt(0)) + str1.substring(1);
        Object localObject = getClass().getMethod(str2, new Class[0]).invoke(this, new Object[0]);
        return localObject;
      }
      catch (Exception localException)
      {
        throw new RuntimeException(localException);
      }
    }
    parama.io();
    return ii();
  }

  public abstract HashMap ih();

  protected abstract Object ii();

  protected abstract boolean ij();

  public String toString()
  {
    HashMap localHashMap = ih();
    StringBuilder localStringBuilder = new StringBuilder(100);
    Iterator localIterator = localHashMap.keySet().iterator();
    while (localIterator.hasNext())
    {
      String str = (String)localIterator.next();
      ar.a locala = (ar.a)localHashMap.get(str);
      if (a(locala))
      {
        Object localObject = a(locala, b(locala));
        if (localStringBuilder.length() == 0)
          localStringBuilder.append("{");
        while (true)
        {
          localStringBuilder.append("\"").append(str).append("\":");
          if (localObject != null)
            break label134;
          localStringBuilder.append("null");
          break;
          localStringBuilder.append(",");
        }
        label134: switch (locala.im())
        {
        default:
          if (locala.il())
            a(localStringBuilder, locala, (ArrayList)localObject);
          break;
        case 8:
          localStringBuilder.append("\"").append(ae.a((byte[])localObject)).append("\"");
          break;
        case 9:
          localStringBuilder.append("\"").append(ae.b((byte[])localObject)).append("\"");
          break;
        case 10:
          ah.a(localStringBuilder, (HashMap)localObject);
          continue;
          a(localStringBuilder, locala, localObject);
        }
      }
    }
    if (localStringBuilder.length() > 0)
      localStringBuilder.append("}");
    while (true)
    {
      return localStringBuilder.toString();
      localStringBuilder.append("{}");
    }
  }
}

/* Location:           /Users/don/Desktop/mm/com.tencent.mm/classes-dex2jar.jar
 * Qualified Name:     com.google.android.gms.internal.ar
 * JD-Core Version:    0.6.2
 */