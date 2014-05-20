.class final Lcom/tencent/mm/ui/tools/a/ak;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/concurrent/ThreadFactory;


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 150
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final newThread(Ljava/lang/Runnable;)Ljava/lang/Thread;
    .locals 1
    .parameter

    .prologue
    .line 152
    new-instance v0, Lcom/tencent/mm/ui/tools/a/aj;

    invoke-direct {v0, p1}, Lcom/tencent/mm/ui/tools/a/aj;-><init>(Ljava/lang/Runnable;)V

    return-object v0
.end method
