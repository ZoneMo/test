.class final Lcom/tencent/mm/ui/tools/a/y;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic hqD:Ljava/lang/Exception;

.field final synthetic hqE:Lcom/tencent/mm/ui/tools/a/x;


# direct methods
.method constructor <init>(Lcom/tencent/mm/ui/tools/a/x;Ljava/lang/Exception;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 381
    iput-object p1, p0, Lcom/tencent/mm/ui/tools/a/y;->hqE:Lcom/tencent/mm/ui/tools/a/x;

    iput-object p2, p0, Lcom/tencent/mm/ui/tools/a/y;->hqD:Ljava/lang/Exception;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 384
    new-instance v0, Ljava/lang/RuntimeException;

    iget-object v1, p0, Lcom/tencent/mm/ui/tools/a/y;->hqD:Ljava/lang/Exception;

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v0
.end method
